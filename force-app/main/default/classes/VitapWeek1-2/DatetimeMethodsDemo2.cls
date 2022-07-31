public class DatetimeMethodsDemo2 {
    public void printSubscriptionEndDate(){
        date subscriptionStartDate = Date.today();
        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        System.debug('Your subscription end date is '+ subscriptionEndDate);
        
        Integer endDateYear = subscriptionEndDate.year();
        System.debug('subscription date year is '+ endDateYear);

        Integer endDateMonth = subscriptionEndDate.month();
        System.debug('your subscription end month is ' + endDateMonth );
    }
    public void printOfferEndDateTime(){
        datetime offerStartDt = Datetime.now();
        datetime dtOfferEnd = offerStartDt.addHours(-851);
        System.debug('your offer will be end at ' + dtOfferEnd);

        date offerEndDate = dtOfferEnd.date();
        System.debug('offer end date is ' + OfferEndDate);
            }
}
