package Com.Stationary.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Com.Stationary.Model.Customer;
import Com.Stationary.Model.Orders;
import Com.Stationary.Model.Products;
import Com.Stationary.Repository.CustomerRepo;
import Com.Stationary.Repository.OrderRepo;
import Com.Stationary.Repository.ProductRepo;

@Controller
public class StationaryController {
	@Autowired
	 CustomerRepo Crepo;
	@Autowired
	 OrderRepo Orepo;
	@Autowired
	 ProductRepo Prepo;
	
	Customer cust;
	Products pro;
	
	
						//<---------------SIGNUP-------------->
	             //Signup
	@RequestMapping("/get")
	public String  display(Model map)
	{
		System.out.println(Crepo.findAll());
		map.addAllAttributes(getallcustomer());
		return "get.jsp";
		
	}
	@RequestMapping(value="/signup")
	public String signup()
	{
		return "Signup.jsp";
	}
	
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	public String Sign(ModelMap mod,Customer cust)
	{
		Crepo.save(cust);
		mod.addAttribute("username",cust.getName());
		return"Login.jsp";
	}
	
	//<----------------------------------CUSTOMER------------------------------>
							//<---------Login--------->
	@RequestMapping(value="/login")
	public String login()
	{
		return "Login.jsp";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String lgin(ModelMap mod,@RequestParam String email,@RequestParam String password)
	{
		if(Crepo.existsById(email))
		{
			Customer customer=Crepo.getById(email);
			if(email.equals(customer.getEmail())&&password.equals(customer.getPassword()))
			{
				cust=Crepo.getById(email);
				System.out.println("*");
				mod.addAttribute("user","Welcome "+customer.getName());
				return "Home.jsp";
			}else { mod.addAttribute("error","Incorrect password") ;
				return "Login.jsp";}
		}else
		{
			mod.addAttribute("error","The account does not exist");
			return "Signup.jsp";
		}
	}
	//<----------------------------------ORDERS------------------------------>
						//<---------Save Order--------->
	@RequestMapping(value="/order" ,method=RequestMethod.POST)
	public String saveorders(Orders order ,ModelMap mod)
	{
		Orepo.save(order);
		mod.addAttribute("orderid",order.getOid());
		mod.addAttribute("orderdate",order.getOdate());
		mod.addAttribute("oproduct",order.getProduct());
		return "Welcome.jsp";
	}
	                     //<--------show orders--------->
	
	
						//<-------View Orders------->

	@RequestMapping(value="/order")
	@ResponseBody 
	public List<Orders> vieworders()
	{
		return Orepo.findAll();		
	}			
	@ResponseBody
	@RequestMapping(value="/orderss" )
	public String saveorder(Orders order )
	{		
		order.setCust(Crepo.getById(cust.getEmail()));
		order.setProduct(Prepo.getById(pro.getPname()));		
		System.out.println("customerid==>"+order.getCust()+"  "+"productid==>"+order.getProduct());
		
		Orepo.save(order);
		
		return "order is saved";
	}
	
		//<----------------------------------PRODUCTS------------------------------>
	
							//<---------view products--------->	
	@RequestMapping(value="/viewallp")
	public List<Products> displayProducts()
	{
		return Prepo.findAll();
	}
	
								//<---------Save products--------->	 
	@RequestMapping(value="/product")
	public String product()
	{
		
		return"Product.jsp";
	}

							//<-------Save products------->	

	@RequestMapping(value="/product" ,method=RequestMethod.POST)
	public String saveproduct(ModelMap mod,Products product)
	{
		
		Prepo.save(product);
		pro=product;
		mod.addAttribute("productname",product.getPname());
		mod.addAttribute("productprice",product.getPrice());
		mod.addAttribute("productdesc",product.getPdes());
		mod.addAttribute("quantity",product.getQuantity());
		
		return "Welcome.jsp";
	}
//<----------------------------------<DISPLAY-ALL>------------------------------>
	@RequestMapping("/getallc")
	@ResponseBody
	public List<Customer> getallcustomer()
	{
		System.out.println("send reqest");
		return Crepo.findAll();
	}
	@RequestMapping("/getallo")
	@ResponseBody
	public List<Orders> getallorders()
	{
		return Orepo.findAll();
	}
	@RequestMapping("/")
	public String home()
	{
		return "Home.jsp";
	}
	@RequestMapping("/forge")
	public String forgetpage()
	{
		return "Forget.jsp";
	}
	@RequestMapping("/forget")
	@ResponseBody
	public String forget(@RequestParam String email,@RequestParam String password)
	{
		Customer customer=Crepo.getById(email);
		customer.setPassword(password);
		Crepo.save(customer);
		return "Password Saved Successfully";
	}
								//<-------Save products------->	
	@RequestMapping("/products")
	@ResponseBody
	public List<Products> displayproducts()
	{
		return Prepo.findAll();
	}

	@RequestMapping("/ord")
	public String getalllist()
	{
		ModelAndView mv=new ModelAndView();
		List<Customer> cu=new ArrayList();
		cu.addAll(Crepo.findAll());
		//System.out.println(cu);
		mv.setViewName("Productss");
		mv.addObject("CustomerList",cu);
		return "Productss.jsp";
	}
	
	@RequestMapping("/updateprduct")
	public String prductsu()
	{
		return "UpdateProduct.jsp";
	}
	@ResponseBody
	@RequestMapping(value="/updateprduc")
	public String updateproduct(@RequestParam String product, @RequestParam int no)
	{
		Products prod=Prepo.getById(product);
		prod.setQuantity(prod.getQuantity()+no);
		System.out.println(prod.getQuantity());
		Prepo.save(prod);
		return "update Successfully";
	}
	@RequestMapping("/buy")
	public String buyp()
	{
		return "Buyproduct.jsp";
	}
	@ResponseBody
	@RequestMapping("/buyp")
	public String buyproduct(@RequestParam String product,@RequestParam int quandity)
	{
		if(Prepo.existsById(product))
		{
		Orders ords=new Orders();
		Products prod=Prepo.getById(product);
		if(prod.getQuantity()<1)
		{
			return"The product does not exist";
		}
		else {
		prod.setQuantity(prod.getQuantity()-quandity);
		Prepo.save(prod);
		ords.setCust(Crepo.getById(cust.getEmail()));
		ords.setProduct(prod);
		ords.setOquantity(quandity);
		Orepo.save(ords);
		return "your order conformed";
		}
}
		return product;}
	@RequestMapping("/about")
	public String about()
	{
		return "AboutUs.jsp";
	}
	
	@RequestMapping("/all")
	public List<Orders> dispalayall()
	{
		List <Orders>orders=new ArrayList();
		orders=Orepo.findAll();
		return orders;
	}
	@RequestMapping("/d")
	public String displayall(ModelMap mod)
	{
		List<Customer> custm=Crepo.findAll();
		//mod.addAttribute("users", Crepo.findAll());
		Customer cus=new Customer();
		cus=Crepo.getById(cust.getEmail());
		System.out.println("-->"+cus);
		mod.addAttribute("users",custm);
		return "Productss.jsp";
	}
	@ResponseBody
	@RequestMapping("/hell")
	public String hel()
	{
		return "Welcome..!";
	}
	@RequestMapping("/aa")
	public String getaa()
	{
		return "Productss.jsp";
	}
}
