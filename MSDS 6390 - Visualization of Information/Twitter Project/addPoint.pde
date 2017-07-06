int[] addPoint(int[] points, int newPoint){
  if(points.length == 10){
    for(int i = 0; i < points.length - 1; i++){
      points[i] = points[i + 1];
    }
    points[points.length - 1] = newPoint;
  } else{
    points = append(points, newPoint);
  }

  return points;
}