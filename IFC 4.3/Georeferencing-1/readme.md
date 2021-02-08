
# Georeferencing-1

### Intent

This scenario encapsulates the model set up with correct georeferencing. 

It puts the project’s base point at the entrance to the Technical University of Munich,
 aligns the coordinate axes with East and North,
 and sets the units of the project to SI units. 

### Prerequisites

This scenario builds upon following other scenarios:

- ProjectSetup-1
- Tin-1

### Content

This scenario covers the following concepts and/or IFC entities:

- georeferencing metadata
    - `IfcMapConversion`
    - `IfcProjectedCRS`
- representation of `IfcSolidStratum`:
    - `IfcTriangulatedFaceSet`
    - `IfcCartesianPointList3D`

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `UT_GeoRef_1.ifc`                 | the exported content as IFC document      |
| `UT_GeoRef_1_1.png`               | screen shot of the entrance to TUM from BayernAtlas |
| `UT_GeoRef_1_2.jpg`               | schematic representation of georeferencing entities |
