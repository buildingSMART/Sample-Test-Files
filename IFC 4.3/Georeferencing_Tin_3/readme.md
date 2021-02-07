
#UT Georeferencing_Tin_3 
Tin in map cordinates with one internal hole 

## Intent
IFC 4x3 RC2
This scenario has a tin with just one colour for all the triangles. 
There is one internal hole.

The Horizontal and Vertical datums are specified in the EPSG code in IfcProjectedCRS.
The given EPSG code says that the cordinates are  MGA94 Zone 56 and AHD (Ausralian Height Datum).

The ifc file was written by 12d Model. 

## Prerequisites
This scenario builds upon the other scenarios:
- Georeferencing_Tin_1

## Content
This scenario covers the extra concepts and/or IFC entities:
- Internal hole in the tin

## KIT Checking Tool
- Only error is missing ViewDefinition but ViewDefinition is not yet defined in the standard

## Supporting files
Following files correspond to this scenario:

| Filename                             | Description                               |
|--------------------------------------|-------------------------------------------|
| `UT_Tin_with_one_hole_in_MGA_56.ifc` | the exported content as IFC document      |
| `UT_Tin_with_one_hole_in_MGA_56.png` | screen shot from 12d Model                |

