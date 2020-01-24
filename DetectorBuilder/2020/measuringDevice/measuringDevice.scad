//Units: mm
requiredProbeLength = 300;
sensorHoleDiameterInner = 50;
thickness = 5;


sensorHoleDiameterOuter = sensorHoleDiameterInner + 2*thickness;
adjustedProbeLength = requiredProbeLength - sensorHoleDiameterOuter;
sensorHoleOverlap = thickness;

translate([sensorHoleDiameterOuter-sensorHoleOverlap, -thickness/2])
cube([adjustedProbeLength+sensorHoleOverlap, thickness, thickness]);

translate([sensorHoleDiameterOuter/2, 0])
linear_extrude(thickness) {
     difference() {
          $fn = 100;
          circle(d = sensorHoleDiameterOuter);
          circle(d = sensorHoleDiameterInner);
     }
}
