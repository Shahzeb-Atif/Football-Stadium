//Stadium Class//

class Stadium {

//Variables//
    int totalattendants;
    int rows;
    int columns;
    int offset;
    int center;
    int frame;
    String name;
    Student[] attendants;
    Stadium(int row, int column, int offset, int center) {
      
//Object statements//        
      this.totalattendants = row * column;
        this.rows = row;
        this.columns = column;
        this.offset = offset;
        this.center = center;
        this.attendants = new Student[this.totalattendants];
   }

     int[] getLocation(int r, int c) {
        int gap1 = (width - this.offset) / this.rows;
        int gap2 = student;
        int newX = this.offset + r * gap1;
        int newY = gap2 * (c  - int((float)(this.columns / 2))) + this.center;
        
        if (c >= this.columns / 2) {
            newY += gap2;
            newY += student;    
        } 
        
        else {
            newY -= student;
        }
   
        int[] dimensions = { newX, newY };
        return dimensions;
    }

//Fill stadium and call random method//
     void fillStadium(String method) {
        switch (method) {
            case "random": {
                this.Random();
                this.name = "Random";
            }
           }
          } 
          
//Student placement//
     void placestudent(int r, int c, int i) {
        int[] location = new int[1];
        location = this.getLocation(r, c);
        this.attendants[i] = new Student(i * student * -1, this.center, location[0], location[1], 5, student);
    }
    
//Random Seating//
     void Random() {
        ArrayList<Integer> notSeated = new ArrayList<Integer>();
        for (int i = 0; i < this.totalattendants; ++i) {
            notSeated.add(i);
        }
        for (int i = 0; i < this.totalattendants; ++i) {
            int rand =  int(random((float)notSeated.size()));
            int c =  int((float)(i / this.rows));
            int r = i % this.rows;
            this.placestudent(r, c, notSeated.get(rand));
            notSeated.remove(rand);
        }
    }
 
//Update//
     void update() {
        for (int i = 0; i < this.attendants.length; ++i) {
          this.attendants[i].drawSeat();
        }
        for (int i = 0; i < this.attendants.length; ++i) {
            this.attendants[i].drawStudent();
            if (this.attendants[i].move(this.attendants)) {
          }
         }
        }
       }
