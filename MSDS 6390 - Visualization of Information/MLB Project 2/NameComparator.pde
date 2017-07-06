class NameComparator implements Comparator {
 int compare(Object o1, Object o2) {
   String a = ((Team) o1).getName();
   String b = ((Team) o2).getName();
   return a.compareTo(b);
 }
}