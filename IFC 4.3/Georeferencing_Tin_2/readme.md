
# Tin in map scale but coordinates in a local origin and IfcMapConversion to place it in map coordinates 

### Intent

IFC 4x3 RC1
This scenario has a tin with just one colour for all the triangles. 
There are no voids.
The coordinates for the tin are in map scale but with a local origin of (256400.0, 7011600.0, 0.0)
IfcMapConversion is used to translate the coordinates to the correct (Easting, Northing, Height) for the map projection.

The Horizontal and Vertical datums are specified in the EPSG code in IfcProjectedCRS.
The given EPSG code says that the cordinates are  MGA94 Zone 56 and AHD (Ausralian Height Datum).

The ifc file was written by 12d Model. 

### Prerequisites

This scenario builds upon following other scenarios:
- Georeferencing_1
- Georeferencing_Tin_1

### Content

This scenario covers the following concepts and/or IFC entities:

- ifcMapConversion giving a translation in x an y

### Supporting files

Following files correspond to this scenario:

| Filename                                         | Description                               |
|--------------------------------------------------|-------------------------------------------|
| `UT_Tin_ifcMapConversion_to_place_in_MGA_56.ifc` | the exported content as IFC document      |
| `UT_Tin_ifcMapConversion_to_place_in_MGA_56.png` | screen shot from 12d Model                |

