public class Triangle {

  PVector p1, p2, p3;
  PVector d1, d2, d3;
  int i, j, k;
  Triangle mixed;
  
  public Triangle() {
    this.p1 = new PVector();
    this.p2 = new PVector();
    this.p3 = new PVector();
    
    this.d1 = new PVector();
    this.d2 = new PVector();
    this.d3 = new PVector();
  }
  
  public Triangle(int i, int j, int k) {
    this.i = i;
    this.j = j;
    this.k = k;
    
    p1 = new PVector(points1[i][0], points1[i][1]);
    p2 = new PVector(points1[j][0], points1[j][1]);
    p3 = new PVector(points1[k][0], points1[k][1]);
    
    d1 = new PVector(points2[i][0], points2[i][1]);
    d2 =new PVector(points2[j][0], points2[j][1]);
    d3 = new PVector(points2[k][0], points2[k][1]);
    
  }
  
  public Triangle(PVector p1, PVector p2, PVector p3) {
    this.p1 = p1;
    this.p2 = p2;
    this.p3 = p3;
  }
  
  public Triangle mix() {
    if (mixed == null) mixed = new Triangle();
    
    mixed.p1.x = p1.x*(1-amt) + d1.x*amt;
    mixed.p1.y = p1.y*(1-amt) + d1.y*amt;

    mixed.p2.x = p2.x*(1-amt) + d2.x*amt;
    mixed.p2.y = p2.y*(1-amt) + d2.y*amt;

    mixed.p3.x = p3.x*(1-amt) + d3.x*amt;
    mixed.p3.y = p3.y*(1-amt) + d3.y*amt;
    
    return mixed;
    
  }
}

void findTriangles(Delaunay d1, float[][] points2) {
  int[][] edges = d1.getLinks();
  int[][] matrica = new int[43][43];
  
  for(int i = 0 ; i < edges.length; i++){
    int a = edges[i][0];
    int b= edges[i][1];
    matrica[a][b] = 1;
    matrica[b][a] = 1;
  }

  for(int i = 0; i < 43; i++) {
    int[] linked = d1.getLinked(i);
    for(int j = 0; j < linked.length; j++){
      if(linked[j] < i) continue;
      for(int k = j+1; k< linked.length; k++){
        if(linked[k] < i) continue;
        if(matrica[linked[j]][linked[k]]==1) {
          Triangle t =new Triangle(i, linked[k], linked[j]);
          triangles.add(t);
        }
      }
    }
  }
}
