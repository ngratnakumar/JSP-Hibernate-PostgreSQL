package ratnakumar.ncra;  

import java.util.*;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;  

public class UserDao {  

	public String hql;

	public static int register(User u){  
		int i=0;  
		Session session=new Configuration().configure().buildSessionFactory().openSession();  
		Transaction t=session.beginTransaction();  
		session.save(u);
		t.commit();  
		session.close();  
		return i;  
	}  

	public ArrayList showAll() {

		ArrayList<User> cal = new ArrayList<User>();
		Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();  
		Query query= session.createQuery("from User");  
		List<User> list= query.list();  
		Iterator<User> itr=list.iterator();  
		while(itr.hasNext()){  
			User ur = new User(); // User Query Object
			User udc = new User(); // User Data Collection Object
			ur = itr.next();  
			udc.setId(ur.getId());
			udc.setName(ur.getName());
			udc.setEmail(ur.getEmail());
			udc.setCountry(ur.getCountry());
			udc.setPassword(ur.getPassword());
			cal.add(udc);	
		}
		session.close();
		return cal;
	}

	public ArrayList showQuery(User u) {
		ArrayList<User> cal = new ArrayList<User>();
		Session session = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		hql= "from User where str(id) LIKE :id and name LIKE :name and email LIKE :email and country LIKE :country";
		Query query = session.createQuery(hql);		

		if( u.id == 0 )
			query.setString("id", ""+"%");
		else 
			query.setString("id", ""+u.id);

		if ( u.name == null )
			query.setString("name","%");
		else
			query.setString("name",  u.name+"%");

		if (  u.email == null ) 
			query.setString("email", "%");
		else
			query.setString("email",  u.email+"%");

		if (  u.country == null ) 
			query.setString("country", "%");
		else
			query.setString("country",  u.country+"%");
		
		List<User> list = query.list();		
		Iterator<User> itr=list.iterator();
		while(itr.hasNext()){  
			User ur = new User(); // User Query Object
			User udc = new User(); // User Data Collection Object
			ur = itr.next();  
			udc.setId(ur.getId());
			udc.setName(ur.getName());
			udc.setEmail(ur.getEmail());
			udc.setCountry(ur.getCountry());
			udc.setPassword(ur.getPassword());
			cal.add(udc);	
		}
		session.close();
		return cal;
	}

	public void updateUser(int uid, String uname, String uemail, String upwd, String ucountry ){
		Session session = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			User user = (User)session.get(User.class, uid); 
			if(uname == null)
				user.setName(user.getName());
			else
				user.setName(uname);
			
			if(uemail == null)
				user.setEmail(user.getEmail());
			else
				user.setEmail(uemail);
			
			if(upwd == null)
				user.setPassword(user.getPassword());
			else
				user.setPassword(upwd);
			
			if(ucountry == null)
				user.setCountry(user.getCountry());
			else
				user.setCountry(ucountry);
			
			session.update(user); 
			tx.commit();
		}catch (HibernateException e) {
			if (tx!=null) tx.rollback();
			e.printStackTrace(); 
		}finally {
			session.close(); 
		}
	}
} 