class Nodo{
  private Tablero actual;
  private Nodo padre;
  private Nodo hijos[];
  private int x;
  private int y;
  public void sethijos( ){
    Tablero t = new Tablero(8);  
      int p[][]={{x+2,y+1},
              {x-2,y+1},
              {x+1,y+2},
              {x-1,y+2},
              {x+2,y-1},
              {x-2,y-1},
              {x+1,y-2},
              {x-1,y-2}};
   
   int ch=0;
 
   for (int i=0; i<8; i++){
     if((p[i][0]>0 && p[i][0]<8) && (p[i][1]>0 && p[i][1]<8)){
       if(t.casillas[p[i][0]][p[i][1]]==0){
         ch++;
     }
   }
 }
  hijos= new Nodo[ch];
  }
  public Nodo (int p,int j){
      this.x=p;
      this.y=j;
      this.actual = new Tablero(8,x,y);
  }
}
