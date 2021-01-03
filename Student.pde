//Student class//

class Student {

//Variables//
  int x; 
  int y; 
  int aX; 
  int aY; 
  int speed; 
  int size;

//Colour Variables//  
  color blue= color(30,144,255);
  color red= color(220,20,60);
  color[] colors = {blue,red};
  color c1=(colors[int(random(0,2))]);

//Student variables//
  Student(int xi, int yi, int aXi, int aYi, int speedi, int sizei) {

//Object statements//
    this.x = xi;
    this.y = yi;
    this.aX = aXi;
    this.aY = aYi;
    this.speed = speedi;
    this.size = sizei;
  }
  
//Student//
    void drawStudent() {
      noStroke();
      //Student shirt colour (Can Change)//
      fill(c1);
      ellipse((float)this.x, (float)this.y, (float)this.size, (float)this.size);
    }

//Seats//
    void drawSeat() {
      stroke(0);
      fill(255);
      rect((float)this.aX - this.size/2, (float)this.aY- this.size/2, (float)this.size, (float)this.size);
    }

//Check infront//
    boolean checkF(Student[] attendants) {
    for (int i = 0; i < attendants.length; ++i) {
      float space = dist((float)this.x, (float)this.y, (float)attendants[i].x, (float)attendants[i].y);
      if (space < (this.size + attendants[i].size + 20) / 2 && this.x < attendants[i].x && attendants[i] != this) {
        return false;
     }
   }
        return true;
}

//Animation//
    boolean move(Student[] attendants) {
    if (this.x < this.aX) {
      if (this.checkF(attendants)) {
        this.x += this.speed;
        if (abs(this.x - this.aX) < this.speed) {
          this.x = this.aX;
        }
      }
      return true;
    } 
    else if (this.y > this.aY && abs(this.y - this.aY) > this.speed) {
      this.y -= this.speed;
      return true;
    } 
    else if (this.y < this.aY) {
      this.y += this.speed;
      return true;
    } 
    else {
      this.y = this.aY;
    }
    return false;
  }
}
