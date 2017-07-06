StatusListener listener = new StatusListener() {
  void onStatus(Status status) {
    // Print the status to the console and increment the TweetLine counter
    println("@" + status.getUser().getScreenName() + ": " + status.getText());   
    line1.updateCount();
  }
  void onStallWarning(StallWarning stallwarning){}
  void onDeletionNotice(StatusDeletionNotice statusDeletionNotice) {}
  void onTrackLimitationNotice(int numberOfLimitedStatuses) {}
  void onScrubGeo(long userId, long upToStatusId) 
  {
    System.out.println("Got scrub_geo event userId:" + userId + " upToStatusId:" + upToStatusId);
  }
  void onException(Exception ex) {
    ex.printStackTrace();
  }
};