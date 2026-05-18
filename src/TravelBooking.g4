grammar TravelBooking;

@parser::members {
    @Override
    public void notifyErrorListeners(String msg) {
        super.notifyErrorListeners(msg);
    }
}

start : booking EOF ;

booking
    : BOOK departure TO destination DATE travelDate CLASS travelClass PASSENGERS passengerCount PAYMENT paymentMethod TRIP tripType
    ;

departure : CITY ;
destination : CITY ;
travelDate : DATEFORMAT ;
travelClass : TYPE ;
passengerCount : NUMBER ;
paymentMethod : PAYMENTTYPE ;
tripType : TRIPTYPE ;

BOOK : 'BOOK' ;
TO : 'TO' ;
DATE : 'DATE'  ;
CLASS : 'CLASS' ;
PASSENGERS : 'PASSENGERS' ;
PAYMENT : 'PAYMENT' ;
TRIP : 'TRIP' ;

TYPE : 'Economy' | 'Business' | 'First' ;
PAYMENTTYPE : 'VISA' | 'MADA' | 'CASH' ;
TRIPTYPE : 'ONEWAY' | 'ROUNDTRIP' ;

CITY : [A-Z][a-zA-Z]* ;
DATEFORMAT : [0-9][0-9] '-' [0-9][0-9] ;
NUMBER : [1-9][0-9]* ;

WS : [ \t\r\n]+ -> skip ;