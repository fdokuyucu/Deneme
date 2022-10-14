public with sharing class RestCallouts {
    
    public static HttpResponse getAnimals() {
        //1. Prepare HttpRequest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process the HttpResponse
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());
        } else {
            //Create a log record
            CommonUtility.createLog('RestCallouts - getAnimals', 'Integration Apex', '', 'Error', 'Callout Exception', response.getStatus(), response.getBody());
        }
        return response;
    }

    public static HttpResponse getUsers() {
        //1. Prepare HttpRequest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process the HttpResponse
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());
        } else {
            //Create a log record
            CommonUtility.createLog('RestCallouts - getUsers', 'Integration Apex', '', 'Error', 'Callout Exception', response.getStatus(), response.getBody());
        }
        return response;
    }
    public static HttpResponse getRecipes(){
        HttpRequest Request= new HttpRequest();
        Request.setEndpoint('https://api.spoonacular.com/recipes/random?apiKey=2053b4612d1c44e699c4483643e15c9c ');
        Request.setMethod('GET');
        Http http= new Http();
        HttpResponse response = http.send(Request);
        if (response.getStatusCode()==200) {
            System.debug(response.getBody());
            
        } else {
            CommonUtility.createLog('RestCallouts - getRecipes', 'Integration Apex', '', 'Error', 'Callout Exception', response.getStatus(), response.getBody());
         
        }
        return response;
    }

    public static HttpResponse getProduct(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://mockyard.herokuapp.com/products/1');
        request.setMethod('GET');
        Http http= new Http();
        HttpResponse response=http.send(request);
        if (response.getStatusCode()==200) {
           string jsonString= response.getBody();
            System.debug(jsonString);

            List<ProductWrapper> productWrappers= (List<ProductWrapper>)JSON.deserialize(jsonString, List<ProductWrapper>.class);
            list< Product_Name__c> products = new list< Product_Name__c>();
            for (ProductWrapper  pw : productWrappers) {
                Product_Name__c prod = new Product_Name__c();
                prod.Name= pw.productId;
                prod.category__c= pw.category;
                prod.description__c=pw.description;
                String pr= pw.price.subString(1);
                prod.price__c= Decimal.valueOf(pr);
                prod.Image__c=pw.image;
                prod.Product_Name__c= pw.name;
                products.add(prod);                
            }
            try {
                if (!products.isEmpty()) {
                    insert products;
                }
            } catch (Exception ex) {
                CommonUtility.createLog('RestCallouts - getProduct', 'Integration Apex', ex.getStackTraceString(), 'Exception', ex.getTypeName(), ex.getMessage(), '');
            }
        }
        return response;
    }

    public static HttpResponse getBlogs(){
        HttpRequest request= new HttpRequest();
        request.setEndpoint('https://mockyard.herokuapp.com/blogs/2');
        request.setMethod('GET');
        Http http= new Http();
        HttpResponse response= http.send(request);
        
        if (response.getStatusCode()==200) {
            string jsonString = response.getBody();
            System.debug(jsonString);
            List<BlogWrapper> BlogWrappers= (List<BlogWrapper>)JSON.deserialize(jsonString, List<BlogWrapper>.class);
            List<Blog__c> blogs= new List<Blog__c>();
            for (BlogWrapper bw : blogWrappers) {
                Blog__c blog= new Blog__c();
                blog.topic__c= bw.topic;
                blog.Author__c= bw.author;
                blog.body__c= bw.body;
                blog.title__c=bw.title;
                blogs.add(blog);
            }
            try {
                if (!blogs.isEmpty()) {
                    insert blogs;
                }
            } catch (Exception ex) {
                CommonUtility.createLog('RestCallouts - getBlogs', 'Integration Apex', ex.getStackTraceString(), 'Exception', ex.getTypeName(), ex.getMessage(), '');
            }
        }
        return response;
    }
    public static HttpResponse getUser2(){
        HttpRequest request= new HttpRequest();
        request.setEndpoint('https://mockyard.herokuapp.com/users/10');
        request.setMethod('GET');
        Http http= new Http();
        HttpResponse response= http.send(request);

        if (response.getStatusCode()==200) {
            string jsonString = response.getBody();
            System.debug(jsonString);
            List<UserWrapper> UserWrappers= (List<UserWrapper>)JSON.deserialize(jsonString, List<UserWrapper>.class);
            list<Store_User__c> users= new list<Store_User__c>();

            for (UserWrapper su : UserWrappers) {
                Store_User__c user= new Store_User__c();
                user.name= su.name;
                user.email__c=su.email;
                user.gender__c=su.gender;
                user.Image__c=su.image;
                user.phone__c=su.phone;
                user.country__c=su.country;
                user.city__c=su.city;
                user.age__c=su.age;
                users.add(user);
            }
            try {
                if (!users.isEmpty()) {
                    insert users;
                }
            } catch (Exception ex) {
                CommonUtility.createLog('RestCallouts - getUser2', 'Integration Apex', ex.getStackTraceString(), 'Exception', ex.getTypeName(), ex.getMessage(), '');
            }
        }
    return response;
    }
    public static HttpResponse postContacts() {
        //1. Prepare HttpRequest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        request.setMethod('POST');

        //1.1 Get data and prepare it as JSON
        List<Contact> contacts = [SELECT Name, Email, Gender__c, Status__c 
                                    FROM Contact
                                    WHERE Gender__c != null
                                    AND Status__c != null
                                    LIMIT 1];
        ContactWrapper cw = new ContactWrapper();
        for(Contact con : contacts) {            
            cw.name = con.Name;
            cw.email = con.Email;
            cw.gender = con.Gender__c;
            cw.status = con.Status__c;
        }
        request.setBody(JSON.serialize(cw));
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setHeader('Authorization', 'Bearer 06a9a7b77e69c4c5de916b875e64c2c2298e04bad120d155a43e2f086ae5f368');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);
        System.debug(response.getBody());
        //4. Process the HttpResponse
        if(response.getStatusCode() == 201) {
            System.debug('Request has been processed successfully');
        }
        return response;
    }
}

