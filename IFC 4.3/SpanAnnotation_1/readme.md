
## SpanAnnotation_1

### Intent

This example demonstrates an IfcAnnotation, which placement uses an `IfcLinearPlacement` on top of an alignment. 

The annotation adds additional semantic data to a given alignment segments. 

### Prerequisites

This scenario builds upon following other scenarios:
- ProjectSetup
- Alignment according to IFC4x3_RC2

### Content

This scenario covers the following concepts and/or IFC entities:
- `IfcProject`
- `IfcSite`
- `IfcAlignment` with basic horizontal and vertical segments
- `IfcAnnotation`
- `IfcPropertySet` with simple properties
- `IfcLinearPlacement` positioning the `IfcAnnotation` 

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                                             |
|-----------------------------------|---------------------------------------------------------|
| UT_SpanAnnotation_1.ifc           | the desired IFC content acc. to IFC4X3_RC1              |
| UT_SpanAnnotation_1.dwg           | a parametric AutoCAD drawing vizualizing the intent     |
| UT_SpanAnnotation_1.png           | result in FZK Viewer                                    |
