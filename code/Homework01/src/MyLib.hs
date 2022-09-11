
-- Write a function that takes a value and multiplies it by 3. Test that it works using GHCi.
multiply x = 3 * x

-- Write a function that calculates the area of a circle. Test that it works using GHCi.
areaCircle r = pi * r^2

-- Write a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 
-- Test that it works using GHCi.
volCylinder r h = areaCircle r * h

-- Write a function that checks if the volume of a cylinder is greater than or equal to 42. Test that it works using GHCi.

checkVol r h = volCylinder r  h >= 42