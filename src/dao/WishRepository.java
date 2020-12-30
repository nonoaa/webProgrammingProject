package dao;
import java.io.Serializable;
import java.util.ArrayList;

import dto.Place;

public class WishRepository implements java.io.Serializable{
	private ArrayList<Place> listOfPlaces = new ArrayList<Place>();
	private static WishRepository instance = new WishRepository();
	
	public static WishRepository getInstance() {
		return instance;
	}
	
	public WishRepository() {
		Place num_1 = new Place();
		num_1.setPlaceId("w1");
		num_1.setName("제주도");
		num_1.setCountry("korea");
		num_1.setDescription("친구와 갈곳");
		num_1.setDate("2022-06");
		
		Place num_2 = new Place();
		num_2.setPlaceId("w2");
		num_2.setName("동 루이스 1세 다리");
		num_2.setCountry("portugal");
		num_2.setDescription("죽기전에 가볼 곳");
		num_2.setDate("2022-12");
		

		listOfPlaces.add(num_1);
		listOfPlaces.add(num_2);

	}
	
	public ArrayList<Place> getAllPlaces(){
		return listOfPlaces;
	}
	
	public Place getPlaceById(String placeId) {
		Place placeById = null;
		
		for(int i = 0; i < listOfPlaces.size(); i++) {
			Place place = listOfPlaces.get(i);
			if(place != null && place.getPlaceId() != null && place.getPlaceId().equals(placeId)) {
				placeById = place;
				break;
			}
		}
		return placeById;
	}
	
	public void addPlace(Place place) {
		listOfPlaces.add(place);
	}
	
	public void deleteByPlaceId(String placeId) {
		for(int i = 0; i < listOfPlaces.size(); i++) {
			Place place = listOfPlaces.get(i);
			if(place.getPlaceId().equals(placeId)) {
				listOfPlaces.remove(i);
				break;
			}
		}
	}
	
}
