public with sharing class ParksServicesMock implements WebServiceMock{
    public void doInvoke(Object a, Object b, Map<String,Object> response, String d, String e, String f, String g, String h, String i){
        ParksServices.byCountryResponse response_x = new ParksServices.byCountryResponse();
        response_x.return_x = new List<string>{'Park 1', 'Park 2', 'Park 3'};
        response.put('return_x', response_x);
    }
}