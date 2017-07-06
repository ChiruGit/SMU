// Zach Brown
// MSDS 6390 - 404
// Project 7

// Import libraries
import twitter4j.conf.*;
import twitter4j.*;
import twitter4j.auth.*;
import twitter4j.api.*;
import java.util.*;

// Declare global variables
ConfigurationBuilder cb; 
TwitterStream twitter;
TweetLine line1;
PImage logo;
//String search = "#DataScience";
String search = "#StPatricksDay";

void setup() {
  size(550,550);
  background(0);
  
  //Credentials
  cb = new ConfigurationBuilder(); 
  cb.setOAuthConsumerKey("ZNqbOfXHFjaq3QX0e0IOq1oqo");   
  cb.setOAuthConsumerSecret("ijvyCq8EdgzdHkBeUz4OdVkXCg0lLzo808SosLs6V5SLmebOMA");   
  cb.setOAuthAccessToken("31968915-dqvqt6AiAwXPntaS6GTdJBtR1lczR9bszJtLgVz5p");   
  cb.setOAuthAccessTokenSecret("GyVZVWTYiG2liwT8C7Gjxrk83dYLR4B2WjV2xf7mtDC5n");
  
  // Initialize the TwitterStream
  twitter = new TwitterStreamFactory(cb.build()).getInstance();
  twitter.addListener(listener);
  twitter.filter(new FilterQuery().track(search));
  prepareOnExitHandler();
  
  // Draw the heading and graph axes
  logo = loadImage("TwitterLogo.png");
  drawGraph();
  
  // Initialize the TweetLine
  line1 = new TweetLine(search);
  
  // Set TweetLine color to Kelly Green
//  line1.setColor(color(76,187,23));
}
 
void draw() {
  background(0);
  
  // Draw the heading and graph axes
  drawGraph();
  
  // Update the points in the TweetLine if necessary
  line1.update();
  
  // Draw the TweetLine
  line1.display();
}