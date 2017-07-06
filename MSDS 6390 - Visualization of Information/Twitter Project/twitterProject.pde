// Zach Brown
// MSDS 6390 - 404
// Project 6

import twitter4j.conf.*;
import twitter4j.*;
import twitter4j.auth.*;
import twitter4j.api.*;
import java.util.*;

PImage logo;
int time;
int wait = 1000;
int curvePoints[] = {};
String hashtag = "#DataScience";
int maxId = 0;
int xSeg;
int ySeg;

void setup() {
  size(550,550);
  background(0);
  curveTightness(0.5);
  xSeg = width/11;
  ySeg = height/4;

  logo = loadImage("TwitterLogo.png");
  drawGraph();

  time = millis();
}
 
void draw() {
  if (millis() - time >= wait){
    background(0);

    drawGraph();
    ////Credentials
    //ConfigurationBuilder cb; 
    //cb = new ConfigurationBuilder();
    //cb.setOAuthConsumerKey("ZNqbOfXHFjaq3QX0e0IOq1oqo");   
    //cb.setOAuthConsumerSecret("ijvyCq8EdgzdHkBeUz4OdVkXCg0lLzo808SosLs6V5SLmebOMA");   
    //cb.setOAuthAccessToken("31968915-dqvqt6AiAwXPntaS6GTdJBtR1lczR9bszJtLgVz5p");   
    //cb.setOAuthAccessTokenSecret("GyVZVWTYiG2liwT8C7Gjxrk83dYLR4B2WjV2xf7mtDC5n");
    ////Make the twitter object and prepare the query
    //Twitter twitter = new TwitterFactory(cb.build()).getInstance();
    //Query query = new Query(hashtag);
    //query.count(100);
    //query.sinceId(maxId);
       
    ////Try making the query request.
    //try {
    //  QueryResult result = twitter.search(query);
    //  ArrayList tweets = (ArrayList) result.getTweets();
    //  int size = tweets.size();
    //  int[] tweetIds = new int[size];
    //addPoint(curvePoints, size);
        
      //for (int i = 0; i < size; i++) {
      // Status t = (Status) tweets.get(i);
      // tweetIds[i] = int(t.getId());
      //}
        
      //maxId = max(tweetIds);
      //println("maxID: " + str(maxId));
    //}
  //  catch (TwitterException te) {
      //println("Couldn't connect: " + te);
    //};
     
    int newPoint = int(random(100));
    curvePoints = addPoint(curvePoints, newPoint);
    drawCurve(curvePoints);
  
    time = millis();
  } 
}