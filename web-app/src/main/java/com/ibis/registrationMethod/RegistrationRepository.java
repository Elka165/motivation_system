package com.ibis.registrationMethod;

import com.ibis.model.Registration;

public class RegistrationRepository {

public Boolean checkThatRegistrationIsCorrectFilled(Registration registration){
    Boolean flag=false;
    if(!registration.getName().isEmpty()&& !registration.getSurname().isEmpty() && !registration.getTypeOfPermission().isEmpty()
    && registration.getName()!=null && registration.getSurname()!=null && registration.getTypeOfPermission()!=null){
        flag=true;
    }
    return flag;
}

public String writeASentence(Registration r){
    String text;
    if(checkThatRegistrationIsCorrectFilled(r)){
        text="Dane zostały przesłane do administratora";
    }else{
        text="*Wszystkie pola muszą zostać uzupełnione.";
    }
    return text;
}
}
