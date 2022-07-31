public class conditionclass_assignment {
    public string ifclassMethod(integer rank){
        string month='';
        if (rank==1) {
            month='January';
        } else if (rank==2){
            month='Fabruary';
        }else{
            month='Not a valid Month';
        }
        return month;
    }
    public string caseMethod(String nameOfMonth){
        String output_Quarter='';
        switch on nameOfMonth {
            when 'January','February','March' {
            output_Quarter= 'Quarter 1';
        }    when 'April','May','June' {
            output_Quarter='Quarter 2';
        }   when 'july','August','September'{
            output_Quarter='Quarter 3';
        }   when 'October','November','December'{
            output_Quarter='Quarter 4';
        }   when else {
            output_Quarter='Enter a proper Month Name';
        }    }
        return output_Quarter;
    }
}