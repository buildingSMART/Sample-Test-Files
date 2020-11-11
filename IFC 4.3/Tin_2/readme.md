
# UT: Tin_2

### Intent

This scenario has a simple TIN with some break lines defined. 

The IFC file was written by 12d Model but with an edit to change IFCBUILDING to IFCFACILITY.

### Prerequisites

This scenario builds upon following other scenarios:
- Tin_1

### Content

This scenario covers the following concepts and/or IFC entities:

- `IfcTriangulatedIrregularNetwork`
  - Flags with indication of break lines (0, 1, 2, 4)
- `IfcFacility`: simple spatial structure

### Supporting files

Following files correspond to this scenario:

| Filename                     | Description                               |
|------------------------------|-------------------------------------------|
| `UT_Tin_2.ifc`               | the exported content as IFC document      |
| `UT_Tin_2_1.png`             | screen shot from 12d Model                |
| `UT_Tin_2_2.png`             | screen shot from OpenInfraPlatform with clearly seen break lines   |

