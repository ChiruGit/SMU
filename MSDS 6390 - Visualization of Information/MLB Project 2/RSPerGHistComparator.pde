class RSPerGHistComparator implements Comparator {
  int compare(Object o1, Object o2) {
    Float a = ((Team) o1).getRSPerGHist();
    Float b = ((Team) o2).getRSPerGHist();
    int val =  b.compareTo(a);
    
    // If values are equal sort alphabetically
    if (val == 0) {
      String str1 = ((Team) o1).getName();
      String str2 = ((Team) o2).getName();
      val = str1.compareTo(str2);
    }
    return val;
  }
}