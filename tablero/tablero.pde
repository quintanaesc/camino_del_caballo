Tablero t;
class Tablero{
  private int n;
  private int casillas[][];
  public Tablero(int N){
    this.n=N;
    this.casillas=new int[n][n];
    for(int j=0;j<n;j++){
      for(int i=0;i<n;i++){
        casillas[j][i]=0; 
      }
    }
   
  }
  void pintaTablero(color A,color B){
    float l=(width-20)/n;
    //casillas
    for(int j=0;j<n;j++){
      for(int i=0;i<n;i++){
        if(j%2==0){
          if(i%2==0){
            fill(A);
          }
          else{
            fill(B);
          }
        }
        else{
          if(i%2==0){
            fill(B);
          }
          else{
            fill(A);
          }
        }
        rect(10+l*i,10+l*j,l,l);
      }
    }
    //numeracion
        for(int j=0;j<n;j++){
      for(int i=0;i<n;i++){
        if(j%2==0){
          if(i%2==0){
            fill(B);
          }
          else{
            fill(A);
          }
        }
        else{
          if(i%2==0){
            fill(A);
          }
          else{
            fill(B);
          }
        }
        textSize(l/2);
        text(casillas[i][j],(10+l*i)+(l/4),(10+l*j)+((3*l)/4));
      }
    }
  }
}


void setup(){
  size(600,600);
  t = new Tablero(20);
 
}


void draw(){
  t.pintaTablero(color(255,255,255),color(0,0,0));
}



void busquedaTablero(int x, int y){
  int p[][]={{x+2,y+1}, {x-2,y+1},
  {x+1,y+2},
  {x-1,y+2},
  {x+2,y-1},
  {x-2,y-1},
  {x+1,y-2},
  {x-1,y-2}};
 
 for (int i=0; i<8; i++){
   if((p[i][0]>0 && p[i][0]<8) && (p[i][1]>0 && p[i][1]<8)){
     if(t.casillas[p[i][0]][p[i][1]]==0){
       t.casillas[p[i][0]][p[i][1]]=t.casillas[x][y]+1;
     }
   }
 }
}
