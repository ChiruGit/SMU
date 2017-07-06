protected void prepareOnExitHandler() {

 Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() {
   
   public void run () {
     twitter.clearListeners();
     twitter.cleanUp();
     twitter.shutdown();
   }
 }
 ));
}