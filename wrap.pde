import megamu.mesh.*;

PImage prvi;
PImage drugi;

void setup() {
   size(600,600,P2D);
   
   prvi = loadImage("prvi.png");
   drugi = loadImage("drugi.png");
   String [] tprvi = loadStrings("prvi.data");
   String [] tdrugi = loadStrings("drugi.data");
   
   //float [][] points1 = new float[43][2];
   //int i = 0;
   //for(String s: tprvi){
   //  String [] k = s.split("\t");
   //  points1 [i][0] = Float.parseFloat(k[0]);
   //  points1 [i][1] = Float.parseFloat(k[1]);
   //  i ++;
   //}
   
   //float [][] points2 = new float[43][2];
   //i = 0;
   //for(String s: tdrugi){
   //  String [] k = s.split("\t");
   //  points2 [i][0] = Float.parseFloat(k[0]);
   //  points2 [i][1] = Float.parseFloat(k[1]);
   //  i ++;
   //}
   
   //Delaunay d1 = new Delaunay(points1);
   //Delaunay d2 = new Delaunay(points2);
   
   //float[][] myEdges = d1.getEdges();

   //for( i=0; i<myEdges.length; i++)
   // {
   //   float startX = myEdges[i][0];
   //   float startY = myEdges[i][1];
   //   float endX = myEdges[i][2];
   //   float endY = myEdges[i][3];
   //   line( startX, startY, endX, endY );
   // }
   
}

void draw() {
    
   // prvi
   //   fill(255);
   //rect(309,506,10,10); // 1
   
   //rect(217,464,10,10); rect(172,388,10,10); rect(162,322,10,10); // 2 3 4
   //rect(163,229,10,10); rect(186,142,10,10); rect(234,100,10,10); // 5 6 7
   
   //rect(360,111,10,10); rect(437,173,10,10); rect(451,253,10,10); // 8 9 10
   //rect(454,326,10,10); rect(438,396,10,10); rect(396,467,10,10); // 11 12 13
   
   //fill(0, 0, 255);
   //rect(150,367,10,10); rect(135,302,10,10); rect(149,264,10,10); // 14 15 16
   //rect(144,156,10,10); rect(183,80,10,10); rect(257,25,10,10); // 17 18 19
   
   //rect(364,25,10,10); rect(435,79,10,10); rect(473,160,10,10); // 20 21 22
   //rect(470,241,10,10); rect(476,281,10,10); rect(458,368,10,10); // 23 24 25
   
   //fill(0, 255, 0);
   //rect(240,259,10,10); rect(378,260,10,10); // 26 27
   
   //fill(0, 255, 255);
   //rect(189,247,10,10); rect(232,222,10,10); rect(275,235,10,10); // 28 29 30
   
   //rect(330,241,10,10); rect(389,225,10,10); rect(431,251,10,10); // 31 32 33
   
   //fill(255, 0, 0);
   //rect(306,232,10,10); // 34
   //rect(275,341,10,10); rect(313,348,10,10); rect(347,341,10,10); // 35 36 37
  
   //fill(255, 255, 0);
   //rect(260,408,10,10); rect(310,387,10,10); rect(360,407,10,10); // 38 39 40
   //rect(275,418,10,10); rect(309,426,10,10); rect(345,417,10,10); // 41 42 43
   
 
   
   //drugi
   //fill(255);
   //rect(295,500,10,10); // 1
   
   //rect(217,464,10,10); rect(172,388,10,10); rect(162,322,10,10); // 2 3 4
   //rect(163,229,10,10); rect(181,139,10,10); rect(237,100,10,10); // 5 6 7
   
   //rect(360,106,10,10); rect(401,181,10,10); rect(419,258,10,10); // 8 9 10
   //rect(417,326,10,10); rect(402,396,10,10); rect(368,457,10,10); // 11 12 13
   
   //fill(0, 0, 255);
   //rect(134,347,10,10); rect(120,282,10,10); rect(142,246,10,10); // 14 15 16
   //rect(136,181,10,10); rect(162,86,10,10); rect(242,23,10,10); // 17 18 19
   
   //rect(335,30,10,10); rect(419,82,10,10); rect(436,172,10,10); // 20 21 22
   //rect(435,240,10,10); rect(453,314,10,10); rect(440,365,10,10); // 23 24 25
   
   //fill(0, 255, 0);
   //rect(235,247,10,10); rect(346,250,10,10); // 26 27
   
   //fill(0, 255, 255);
   //rect(195,230,10,10); rect(232,211,10,10); rect(270,225,10,10); // 28 29 30
   
   //rect(321,230,10,10); rect(356,218,10,10); rect(389,232,10,10); // 31 32 33
   
   //fill(255, 0, 0);
   //rect(296,232,10,10); // 34
   //rect(265,328,10,10); rect(298,338,10,10); rect(328,328,10,10); // 35 36 37
  
   //fill(255, 255, 0);
   //rect(239,400,10,10); rect(300,380,10,10); rect(351,394,10,10); // 38 39 40
   //rect(264,404,10,10); rect(301,411,10,10); rect(336,406,10,10); // 41 42 43

}
