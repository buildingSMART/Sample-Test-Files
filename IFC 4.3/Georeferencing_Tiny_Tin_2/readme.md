
# UT: Tin_4 in map scale but coordinates in a local origin and IfcMapConversion to place it in map coordinates 

### Intent

This scenario expands Tin_3 directly.

There is only one change: the coordinates for the TIN are in map scale but with a local origin of (256400.0, 7011600.0, 0.0).

The IFC file was written by 12d Model. 

### Prerequisites

This scenario builds upon following other scenarios:
- Tin_3

### Content

This scenario covers the following concepts and/or IFC entities:

- `IfcMapConversion` is used to translate the coordinates to the correct (*Easting*, *Northing*, *Height*) for the map projection.

### Supporting files

Following files correspond to this scenario:

| Filename                                         | Description                               |
|--------------------------------------------------|-------------------------------------------|
| `UT_Tin_4.ifc`                                   | the exported content as IFC document      |
| `UT_Tin_4_1.png`                                 | screen shot from 12d Model                |
| `UT_Tin_4_2.png`                                 | screen shot from OIP                      |

