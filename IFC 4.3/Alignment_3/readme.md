
## Alignment_3

### Intent

Automatically generated IFC file from a corresponding test file in Civil 3D. 

Converting the data given by the API of Civil into the IFC schema. Exports an 
alignment containing a horizontal and a vertical alignment segments.

Information for the alignment:

Horizontal:
	- Length Horizontal: 72.355 [m]
	- Angle from X axis: 0.462 [rad]

Vertical:
	- Length along Horizontal: 72.349 [m]
	- Gradient: -1.22 [%]


### Prerequisites

This scenario builds upon following other scenarios:
- ProjectSetup_1



### Content

This scenario covers the following concepts and/or IFC entities:
- Semantic alignment concepts
	- `IfcAlignment`
	- `IfcAlignmentHorizontal`
	- `IfcAlignmentVertical`
	- `IfcAlignmentHorizontalSegment`
	- `IfcAlignmentVerticalSegment`
- Geometric alignment concepts
	- `IfcGradientCurve`
	- `IfcCompositeCurve`
	- `IfcCurveSegment`
	- `IfcLine`
- Placement concepts
	- `IfcAxis2PlacementLinear`
	- `IfcPointByDistanceExpression`

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `UT_Alignment_3.ifc`              | the exported alignment as IFC document    |
| `UT_Alignment_3_1.jpg`			| screenshot from the KIT FZK Viewer		|
| `UT_Alignment_3_2.jpg`			| screenshot from Civil 3D             		|
| `UT_Alignment_3.dwg`	    		| originating Civil 3D file					|

