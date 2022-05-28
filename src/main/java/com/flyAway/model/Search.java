package com.flyAway.model;


public abstract class Search {
    public static String date;
    public static String day;
    public static String source;
    public static String destination;
    public static int persons;
    

    public static String getQuery() {
        return "select * from flights where source = '"+source+"' and destination='"+destination+"' and day='"+day+"'";
    }
 
}
