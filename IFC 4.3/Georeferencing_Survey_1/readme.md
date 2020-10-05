
# Tiny survey of one string and one point in map coordinates

### Intent

IFC 4x3 RC1
Survey strings and points and their property sets are fundemental to the initial data for a project,
for any setting out any linear project, and for use in machine control.
So how this data is to be output in ifc 4x3 is critical. 

This scenario has a survey of one string with name "RD ET",
and one point with name "SF LE" and a user defined property set "Survey" with one one Text attribute 
named "Point Id" with the value "3". 

The coordinates are in Easting, Northing and AHD for the map projection MGA94 Zone 56.
The Horizontal and Vertical datums are specified in IfcProjectedCRS.

The ifc file was written by 12d Model. 

### Prerequisites

This scenario builds upon following other scenarios:
- None

### Content

This scenario covers the following concepts and/or IFC entities:

- ifcProjectedCRS
- ifcMapConversion
- ifcPropertySet
- ifcPropertySingleValue

### Supporting files

Following files correspond to this scenario:

| Filename                                 | Description                               |
|------------------------------------------|-------------------------------------------|
| `UT_One_String_One_Point_in_MGA_56.ifc`  | the exported content as IFC document      |
| `UT_One_String_One_Point_in_MGA_56.png`  | screen shot from 12d Model                |

