class RDifProjComparator implements Comparator {
  int compare(Object o1, Object o2) {
    Integer a = ((Team) o1).getRDifProj();
    Integer b = ((Team) o2).getRDifProj();
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