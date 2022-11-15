import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.result.DeleteResult;

public class TestConnectivity {
	
	public static void main(String[] args) {
		MongoClient client= new MongoClient("localhost",27017);
		System.out.println("Connected");
		
		MongoDatabase database = client.getDatabase("sj_te_db");
		System.out.println("Connected");
		
//		MongoCollection<Document> collection = database.getCollection("snehalcoll");
////		MongoCollection<Document> collection = database.getCollection("snehal_collection");
		MongoCollection<Document> collection = database.getCollection("SN_te");
		System.out.println("Connected");
		Document document = new Document();
		document.append("Name","Snehal");
		Document doc = new Document();
		doc.append("Name", "purva");
		System.out.println("Connected");
		
//		collection.insertOne(document);
//
//		collection.insertOne(doc);
		
//		BasicDBObject querry = new BasicDBObject();
//		querry.put("Name", "Raju");
//		BasicDBObject N1 = new BasicDBObject();
//		N1.put("Name", "purva");
//		BasicDBObject S1 = new BasicDBObject();
//		S1.put("$set", N1);
//		collection.updateMany(querry, S1);
//		System.out.println("updated");
	
//	Delete
		DeleteResult deleteMany = collection.deleteMany(Filters.eq("Name", "purva"));
		
		System.out.println(deleteMany.getDeletedCount()+"removeded");

	}
}
