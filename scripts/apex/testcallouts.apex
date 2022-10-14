//TEST ANIMALS CALLOUT
HttpResponse resp = RestCallouts.getAnimals();
System.debug(resp);

HttpResponse resp= RestCallouts.getUsers();`
System.debug(resp);

HttpResponse resp2= RestCallouts.getRecipes();
System.debug(resp2);

HttpResponse resp3= RestCallouts.getProduct();
System.debug(resp3);    

HttpResponse resp4=RestCallouts.getBlogs();
System.debug(resp4);

HttpResponse resp5=RestCallouts.getUser2();
System.debug(resp5);

RestCallout2.postCallout();

HttpResponse resp6= RestCallouts.postContacts();
System.debug(resp6);