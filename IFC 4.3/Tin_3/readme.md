
# UT: Tin_3

### Intent

This scenario has a tiny TIN (only 1.5K triangles) with no voids in between.

The content is georeferenced:
- the horizontal coordinates are in Easting & Northing for the map projection MGA94 Zone 56,
- the vertical coordinates are in AHD,
- the horizontal and vertical datums are MGA94 Zone 56 and AHD.

The IFC file was written by 12d Model. 

### Prerequisites

This scenario builds upon following other scenarios:
- Georef_1
- Tin_1

### Content

This scenario covers the following concepts and/or IFC entities:

- `IfcProjectedCRS`
  - EPSG codes are set
- `IfcMapConversion`
  - no translation or rotation
- `IfcTriangulatedIrregularNetwork`
- `IfcSolidStratum`


### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `UT_Tin_3.ifc`                    | the exported content as IFC document      |
| `UT_Tin_3_1.png`                  | screen shot from 12d Model                |
| `UT_Tin_3_2.png`                  | screen shot from OIP                      |

