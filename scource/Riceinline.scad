      my = 0;
     home = 7;
      in = 0;
     space = 5;
 tsubutsubu = 10;
    expand = 3.5;
      year = 4;
       after = 3.5;


module world(k,l,g){
   
  module rice(here,and,there){
		  difference(){
              translate([here,and,there])
              resize(newsize=[year,after,tsubutsubu]) 
              sphere(r=10,$fn=tsubutsubu);
              translate([here,and+1.4,there+4.5])
            sphere(r =1.7,$fn=tsubutsubu);
           }
}


	module riceforAll(i,land,share){
          for (flaver = [my:17])
	      translate([flaver*expand,land,share])
		  rice(0,0,0);
}


    module fieldOfRice(sarasara,golden,fuwafuwa){
		for (field = [in:18])
	    translate([sarasara,field*3.3,fuwafuwa])
	    riceforAll (0,0,0);

}


for (space = [my:0])
	translate([0,0,space*10,])
	fieldOfRice(0,0);
}

//rotate([90,0,0])
world(0,0,0);

//translate([0,0,-10])
//cube([60,60,2]);

