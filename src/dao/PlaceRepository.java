package dao;
import java.io.Serializable;
import java.util.ArrayList;

import dto.Place;

public class PlaceRepository implements java.io.Serializable{
	private ArrayList<Place> listOfPlaces = new ArrayList<Place>();
	private static PlaceRepository instance = new PlaceRepository();
	
	public static PlaceRepository getInstance() {
		return instance;
	}
	
	public PlaceRepository() {
		Place num_1 = new Place();
		num_1.setPlaceId("p1");
		num_1.setName("에펠탑");
		num_1.setCountry("france");
		num_1.setDescription("고등학교 친구들과 방문");
		num_1.setDate("2016-02-10");
		
		Place num_2 = new Place();
		num_2.setPlaceId("p2");
		num_2.setName("사그라다 파밀리아");
		num_2.setCountry("spain");
		num_2.setDescription("가족들과 방문");
		num_2.setDate("2017-08-10");
		
		Place num_3 = new Place();
		num_3.setPlaceId("p3");
		num_3.setName("에스타디오 산티아고 베르나베우");
		num_3.setCountry("spain");
		num_3.setDescription("호날두를 보러 간날");
		num_3.setDate("2017-08-12");
		

		listOfPlaces.add(num_1);
		listOfPlaces.add(num_2);
		listOfPlaces.add(num_3);

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
