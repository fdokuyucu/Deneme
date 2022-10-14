public with sharing class RestCalloutMock implements HttpCalloutMock{
    public HttpResponse respond(HttpRequest request) {
        if(request.getEndpoint() == 'https://th-apex-http-callout.herokuapp.com/animals' && request.getMethod() == 'GET') {
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}');
            response.setStatus('OK');
            return response;
        } else if(request.getEndpoint() == 'https://gorest.co.in/public/v2/users' && request.getMethod() == 'GET') {
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setBody('[{"id":4219,"name":"Lauren Boyle","email":"test@testtest.com","gender":"male","status":"active"}]');
            response.setStatus('OK');
            return response;
        }else if(request.getEndpoint()== 'https://api.spoonacular.com/recipes/random?apiKey=2053b4612d1c44e699c4483643e15c9c' && request.getMethod()=='GET'){
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setBody('{"recipes":[{"vegetarian":true,"vegan":false,"glutenFree":false,"dairyFree":false,"veryHealthy":false,"cheap":false,"veryPopular":false,"sustainable":false,"lowFodmap":false,"weightWatcherSmartPoints":20,"gaps":"no","preparationMinutes":-1,"cookingMinutes":-1,"aggregateLikes":6,"healthScore":4,"creditsText":"Afrolems","license":"CC BY 4.0","sourceName":"Afrolems","pricePerServing":55.1,"extendedIngredients":[{"id":18371,"aisle":"Baking","image":"white-powder.jpg","consistency":"SOLID","name":"baking powder","nameClean":"low sodium baking powder","original":"1/4 teaspoon of baking powder","originalName":"baking powder","amount":0.25,"unit":"teaspoon","meta":[],"measures":{"us":{"amount":0.25,"unitShort":"tsps","unitLong":"teaspoons"},"metric":{"amount":0.25,"unitShort":"tsps","unitLong":"teaspoons"}}}');
            response.setStatus('OK');
            return response;
        }else if(request.getEndpoint()=='https://mockyard.herokuapp.com/products/1' && request.getMethod()=='GET'){
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setBody('[{"id":1,"name":"Pepper - Chilli Seeds Mild","image":"https://source.unsplash.com/random/900×700/?product,fruit,electronics,food,drink","price":"$260.82","description":"sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo","category":"Groceries","createdAt":"30-03-2021","productId":52434932138}]');
            response.setStatus('OK');
            return response;
        }
        return null;
    }
}
