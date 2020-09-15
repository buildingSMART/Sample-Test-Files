
## SpanAnnotation_1

### Intent

This example demonstrates an IfcAnnotation placed with linear referencing methods (i.e. IfcLinearSpanPlacement). 
The annotation adds additional semantic data to a given alignment curve. 
Respecting the separation between geometric and semantic data, this approach enables the modeler to enrich a given alignment curve with further design values like cant deficiency or several speed values. 

Possible feature request: 
- Add new PSET definitions for speeds to prevent various naming conventions

### Prerequisites

This scenario builds upon following other scenarios:
- ProjectSetup
- Alignment
- LinearPlacement

### Content

This scenario covers the following concepts and/or IFC entities:
- `IfcProject`
- `IfcSite`
- `IfcAlignment` with basic horizontal and vertical segments
- `IfcAnnotation`
- `IfcPropertySet` with simple properties
- `IfcLinearSpanPlacement` locating the `IfcAnnotation` based on the given `IfcAlignmentCurve`

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                                             |
|-----------------------------------|---------------------------------------------------------|
| UT_SpanAnnotation_1.ifc           | the desired IFC content acc. to IFC4X3_RC1              |
| UT_SpanAnnotation_1.dwg           | a parametric AutoCAD drawing vizualizing the intent     |
| UT_SpanAnnotation_1.png           | result in FZK Viewer                                    |
