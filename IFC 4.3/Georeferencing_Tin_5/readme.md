
# Tin in map scale but with the (x,y) coordinates of the tin using a typical origin needed in 1990's infrastructure to reduce
 the number of digits in the (x,y) coordinates.
 At the time some survey software was still DOS based and used low precision. 
 This choice of origin was used because the final 3 digits before the decimal point, and those after the decimal point, are then identical
 to the full map coordinates.  

 IfcMapConversion places the data in the correct map coordinates.

 Since 2000, Australia the Authorities have stipulated that all Road and Rail Infrastructure are done in full MGA map coordinates.  
 Previously it was MGA94 but due the continental drift, it is now MGA2020

### Intent

IFC 4x3 RC1
The coordinates for the tin are in map scale but with a local origin of (256000.0, 7011000.0, 0.0)
IfcMapConversion is used to translate the coordinates to the correct (Easting, Northing, Height) for the map projection.
 
The Horizontal and Vertical datums are specified in the EPSG code in IfcProjectedCRS.
The EPSG code states that the cordinates are  MGA2020 Zone 56 and AHD (Ausralian Height Datum).

The ifc file was written by 12d Model. 

### Prerequisites

This scenario builds upon following other scenarios:
- Georeferencing_1
- Georeferencing_Tin_1

### Content

This scenario covers the following concepts and/or IFC entities:

- ifcProjectedCRS
- ifcMapConversion giving a translation in x an y but no scaling
- ifcSolidStratum
- IfcTriangulatedIrregularNetwork

### Supporting files

Following files correspond to this scenario:

| Filename                                                         | Description                               |
|------------------------------------------------------------------|-------------------------------------------|
| `UT_Tin_ifcMapConversion_to_place_in_MGA_56_Standard_Origin.ifc` | the exported content as IFC document      |
| `UT_Tin_ifcMapConversion_to_place_in_MGA_56_Standard_Origin.png` | screen shot from 12d Model                |

