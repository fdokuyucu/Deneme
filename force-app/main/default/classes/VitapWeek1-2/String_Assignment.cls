public class String_Assignment {
    public void StringMethod (){
        String Localstring = 'Thanks for the session on the string';
        System.debug('Localstring = ' + Localstring);

        Integer lengthOfString = Localstring.length();
        System.debug('total length of Localstring is = '+ lengthofstring);

        String upperCaseofString = Localstring.toUpperCase();
        System.debug('Upper Case Of string =' + upperCaseofstring);

        Boolean containsession = Localstring.contains('session');
        system.debug(' Search of session is = ' + containsession);

        Boolean containsessions = Localstring.contains('sessions');
        System.debug(' search of sessions is = ' + containsessions);

        Boolean iscontainSESSION = Localstring.containsIgnoreCase('SESSION');
        system.debug('there is not any SESSION = ' + iscontainSESSION);
    }
    }

