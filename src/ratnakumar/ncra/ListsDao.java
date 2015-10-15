package ratnakumar.ncra;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class ListsDao {
	
	String hql;

	public ArrayList showAllCountry(){
		ArrayList<Country> cal = new ArrayList<Country>();
		Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();  
		Query query= session.createQuery("from Country");  
		List<Country> list= query.list();  
		Iterator<Country> itr=list.iterator();  
		while(itr.hasNext()){  
			Country cr = new Country(); // Country Query Object
			Country cdc = new Country(); // Country Data Collection Object
			cr = itr.next();  
			cdc.setId(cr.getId());
			cdc.setName(cr.getName());
			cdc.setShortName(cr.getShortName());
			cdc.setTelCode(cr.getTelCode());
			cal.add(cdc);	
		}
		session.close();
		return cal;
	}

	public ArrayList showQueryCountry(Country c){
		ArrayList<Country> cal = new ArrayList<Country>();
		
		Session session = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		hql= "from Country where str(id) LIKE :id and name LIKE :name and shortname LIKE :shortname and str(telcode) LIKE :telcode";
		Query query = session.createQuery(hql);		

		if( c.id == 0 )
			query.setString("id", ""+"%");
		else 
			query.setString("id", ""+c.id);

		if ( c.name == null )
			query.setString("name","%");
		else
			query.setString("name",  c.name+"%");

		if (  c.telCode == 0 ) 
			query.setString("telcode", ""+"%");
		else
			query.setString("telcode",  ""+c.telCode);

		if (  c.shortName == null ) 
			query.setString("shortname", "%");
		else
			query.setString("shortname",  c.shortName+"%");
		return cal;
	}

	public int updateCountry(){
		int status = 0;

		return status;
	}

}
