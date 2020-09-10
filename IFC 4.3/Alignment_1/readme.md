
# Alignment

### Intent

This scenario includes an export of an designed alginment (horizontal and vertical). The second file includes the same alignment and additional an OffsetCurveByDistance. There are also properties attached to the horizontal alignment.


### Prerequisites

This scenario builds upon following other scenarios:
- none

### Content

This scenario covers the following concepts and/or IFC entities:
- georeferencing metadata
  - `IfcMapConversion`
  - `IfcProjectedCRS`
- construction site context 
  - start of the project structure
  - `IfcSite`
- placement
  - `IfcLocalPlacement`
- product
  - `IfcAlignment`
  - `IfcOffsetCurveByDistances`
- product representation
  - `IfcProductDefinitionShape`
  - `IfcShapeRepresentation`
  - `IFCPROPERTYSINGLEVALUE`
- representation
  - `IFCALIGNMENT2DHORIZONTAL`
  - `IFCALIGNMENT2DVERTICAL`
  - `IFCALIGNMENTCURVE`
  - `IFCTRANSITIONCURVESEGMENT2D`
  - `IFCLINESEGMENT2D`
  - `IFCCARTESIANPOINT`
  

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `Alignment-3D.ifc`                 | the exported content as IFC document      |
| `Alignment-3D+OffsetCurve.ifc`     | the exported content as IFC document|
| `Alignment-3D.jpg`                 | screenshot of the alignment-3d.ifc in DESITE md pro |
