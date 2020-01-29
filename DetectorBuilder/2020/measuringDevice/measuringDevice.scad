//Units: mm
requiredProbeLength = 300;
sensorHoleDiameterInner = 50;
thickness = 5;


sensorHoleDiameterOuter = sensorHoleDiameterInner + 2*thickness;
adjustedProbeLength = (requiredProbeLength - sensorHoleDiameterOuter)/2;
sensorHoleOverlap = thickness;

translate([0, -thickness/2])
cube([adjustedProbeLength+sensorHoleOverlap, thickness, thickness]);

translate([adjustedProbeLength + sensorHoleDiameterOuter-sensorHoleOverlap, -thickness/2])
cube([adjustedProbeLength+sensorHoleOverlap, thickness, thickness]);

translate([sensorHoleDiameterOuter/2 + adjustedProbeLength, 0])
linear_extrude(thickness) {
     difference() {
          $fn = 100;
          circle(d = sensorHoleDiameterOuter);
          circle(d = sensorHoleDiameterInner);
     }
}
