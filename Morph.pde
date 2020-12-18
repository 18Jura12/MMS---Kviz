void morph() {
  for (Triangle n : triangles) {
     Triangle t = n.mix();

     tint(255,255 - amt*255);
     noStroke();
     noFill();
     textureMode(IMAGE);
     beginShape();
     texture(prvi);
     vertex(t.p1.x, t.p1.y, n.p1.x, n.p1.y);
     vertex(t.p2.x, t.p2.y, n.p2.x, n.p2.y);
     vertex(t.p3.x, t.p3.y, n.p3.x, n.p3.y);
     endShape();

     tint(255, amt*255);
     noStroke();
     noFill();
     textureMode(IMAGE);
     beginShape();
     texture(drugi);
     
     vertex(t.p1.x, t.p1.y, n.d1.x, n.d1.y);
     vertex(t.p2.x, t.p2.y, n.d2.x, n.d2.y);
     vertex(t.p3.x, t.p3.y, n.d3.x, n.d3.y);
     endShape();
      
  }
}

void displayImage() {
  for (Triangle t : triangles) {
    noTint();
    noStroke();
    noFill();
    textureMode(IMAGE);
    beginShape();
    texture(prvi);
    stroke(255);

    PVector a = t.p1;
    PVector b = t.p2;
    PVector c = t.p3;
    vertex(a.x, a.y, a.x, a.y);
    vertex(b.x, b.y, b.x, b.y);
    vertex(c.x, c.y, c.x, c.y);
    vertex(a.x, a.y, a.x, a.y);
    endShape();
      
    beginShape();
    texture(drugi);
    stroke(255);
      
    a = t.d1;
    b = t.d2;
    c = t.d3;
    vertex(a.x+600, a.y, a.x, a.y);
    vertex(b.x+600, b.y, b.x, b.y);
    vertex(c.x+600, c.y, c.x, c.y);
    vertex(a.x+600, a.y, a.x, a.y);
    endShape();
  }
}
