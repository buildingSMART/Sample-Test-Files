# BuildingSMART Spec examples

---

### Intent

This test set includes the example files from the buildingSMART examples included originally in the official specification at https://technical.buildingsmart.org/standards/ifc/ifc-schema-specifications/. The set started from the original SPF files that were included in the spec. Errors in those files were corrected. For each STEP file, corresponding RDF graphs (in TTL syntax), JSON and XML are provided, offering means to compare content in various syntaxes.

Original files are attributed to Jon Mirtschin (geometryGym) and Tim Chipman (Constructivity). Converted files are obtained through the software in https://github.com/pipauwel/IFCtoRDF and https://github.com/pipauwel/IFC.JAVA. In case of errors or remarks, please contact p.pauwels@tue.nl or, better, leave an issue in this repository.

### Prerequisites

This scenario builds upon following other scenarios:

- none

### Content

All key concepts and difficult exceptions in EXPRESS are included in this test set. So there is not an exhaustive list of included concepts in this test set. By way of an overview, the following concepts are the starting points for file contents:

- Basic unit declaration
- CSG primitive
- Extruded solid
- Surface model
- Brep model
- Tessellated item
- Bath CSG Solid
- Cube advanced Brep
- Basin advanced brep
- Basin faceted brep
- Basin tessellation
- Polygonal face tessellation
- Beam straight I-shape tessellated
- Beam curved I-shape tessellated
- Column straight rectangle tessellation
- Slab tessellated unique vertices
- Tessellation with individual colors
- Tessellation with image texture
- Tessellation with blob texture
- Tessellation with pixel texture
- Mapped shape without transformation
- Mapped shape with transformation
- Mapped shape with multiple items
- Grid placement
- Beam standard case
- Beam extruded solid
- Beam revolved solid
- Column extruded solid
- Slab standard case
- Wall standard case
- Wall elemented case
- Wall with opening and window
- Air terminal element
- Air terminal library object
- Structural curve member
- Construction scheduling task
- Beam varying cardinal points
- Beam varying extrusion paths
- Beam varying profiles
- Reinforcing assembly
- Reinforcing stirrup
- Slab openings

### Supporting files

Following files correspond to this scenario:

| Filename                                                         | Description                             |
| ---------------------------------------------------------------- | --------------------------------------- |
| air-terminal-element.ifc / .ttl / .json / .xml                   | Air terminal element                    |
| air-terminal-library-object.ifc / .ttl / .json / .xml            | Air terminal library object             |
| basin-advanced-brep.ifc / .ttl / .json / .xml                    | Basin advanced BREP                     |
| basin-faceted-brep.ifc / .ttl / .json / .xml                     | Basin faceted BREP                      |
| basin-tessellation.ifc / .ttl / .json / .xml                     | Basin tessellated                       |
| bath-csg-solid.ifc / .ttl / .json / .xml                         | Bath as CSG solid                       |
| beam-curved-i-shape-tessellated.ifc / .ttl / .json / .xml        | Curved I-Beam tessellated               |
| beam-extruded-solid.ifc / .ttl / .json / .xml                    | Beam as extruded solid                  |
| beam-revolved-solid.ifc / .ttl / .json / .xml                    | Beam as revolved solid                  |
| beam-standard-case.ifc / .ttl / .json / .xml                     | Beam standard case                      |
| beam-straight-i-shape-tessellated.ifc / .ttl / .json / .xml      | Straight I-Beam tessellated             |
| beam-varying-cardinal-points.ifc / .ttl / .json / .xml           | Beam with varying cardinal points       |
| beam-varying-extrusion-paths.ifc / .ttl / .json / .xml           | Beam with varying extrusion paths       |
| beam-varying-profiles.ifc / .ttl / .json / .xml                  | Beam with varying profiles              |
| brep-model.ifc / .ttl / .json / .xml                             | BREP model                              |
| column-extruded-solid.ifc / .ttl / .json / .xml                  | Column as extruded solid                |
| column-straight-rectangle-tessellation.ifc / .ttl / .json / .xml | Straight rectangular column tessellated |
| construction-scheduling-task.ifc / .ttl / .json / .xml           | Construction scheduling task            |
| csg-primitive.ifc / .ttl / .json / .xml                          | CSG primitive                           |
| cube-advanced-brep.ifc / .ttl / .json / .xml                     | Cube advanced BREP                      |
| extruded-solid.ifc / .ttl / .json / .xml                         | Extruded solid                          |
| geographic-referencing.ifc / .ttl / .json / .xml                 | Geographic referencing of project       |
| grid-placement.ifc / .ttl / .json / .xml                         | Grid placement                          |
| mapped-shape-with-multiple-items.ifc / .ttl / .json / .xml       | Mapped shape with multiple items        |
| mapped-shape-without-transformation.ifc / .ttl / .json / .xml    | Mapped shape without transformation     |
| mapped-shape-with-transformation.ifc / .ttl / .json / .xml       | Mapped shape with transformation        |
| reinforcing-assembly.ifc / .ttl / .json / .xml                   | Reinforcing assembly                    |
| reinforcing-stirrup.ifc / .ttl / .json / .xml                    | Reinforcing stirrup                     |
| slab-openings.ifc / .ttl / .json / .xml                          | Slab openings                           |
| slab-standard-case.ifc / .ttl / .json / .xml                     | Slab standard case                      |
| slab-tessellated-unique-vertices.ifc / .ttl / .json / .xml       | Slab tessellated with unique vertices   |
| structural-curve-member.ifc / .ttl / .json / .xml                | Structural curve member                 |
| surface-model.ifc / .ttl / .json / .xml                          | Surface model                           |
| tessellated-item.ifc / .ttl / .json / .xml                       | Tessellated item                        |
| tessellation-with-blob-texture.ifc / .ttl / .json / .xml         | Tessellated item with blob texture      |
| tessellation-with-image-texture.ifc / .ttl / .json / .xml        | Tessellated item with image texture     |
| tessellation-with-individual-colors.ifc / .ttl / .json / .xml    | Tessellated item with individual colors |
| tessellation-with-pixel-texture.ifc / .ttl / .json / .xml        | Tessellated item with pixel texture     |
| wall-elemented-case.ifc / .ttl / .json / .xml                    | Wall elemented case                     |
| wall-standard-case.ifc / .ttl / .json / .xml                     | Wall standard case                      |
| wall-with-opening-and-window.ifc / .ttl / .json / .xml           | Wall with opening and window            |

## Results of a comparison between applications

| file                                       | entity                      | type        | added version | status     | xBIM Xplorer (4.0.2002.10344) | Trimble Connect Web (22-2-2023) | Solibri (9.13.0.23) | Revit (2022.1.3) |
| ------------------------------------------ | --------------------------- | ----------- | ------------- | ---------- | ----------------------------- | ------------------------------- | ------------------- | ---------------- |
| air-terminal-element.ifc                   | IfcExtrudedAreaSolidTapered | geometry    | IFC4          |            | -                             | ++                              | --                  | --               |
| air-terminal-element.ifc                   | IfcAirTerminal              | entity      | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| air-terminal-library-object.ifc            | IfcProjectLibrary           | library     | IFC4          |            | +                             | -                               | -                   | --               |
| basin-advanced-brep.ifc                    | IfcAdvancedBrep             | geometry    | IFC4          |            | ++                            | -                               | --                  | --               |
| basin-faceted-brep.ifc                     | IfcSanitaryTerminal         | entity      | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| basin-tessellation.ifc                     | IfcTriangulatedFaceSet      | geometry    | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| bath-csg-solid.ifc                         | IfcSanitaryTerminal         | entity      | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| bath-csg-solid.ifc                         | IfcBooleanResult            | geometry    | IFC1.5.1      |            | ++                            | ++                              | ++                  | ++               |
| beam-curved-i-shape-tessellated.ifc        | IfcTriangulatedFaceSet      | geometry    | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| beam-extruded-solid.ifc                    | IfcBeamStandardCase         | entity      | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| beam-revolved-solid.ifc                    | IfcRevolvedAreaSolid        | geometry    | IFC4          |            | --                            | ++                              | ++                  | ++               |
| beam-standard-case.ifc                     | IfcBeamStandardCase         | entity      | IFC4          | deprecated | ++                            | ++                              | ++                  | ++               |
| beam-straight-i-shape-tessellated.ifc      | IfcTriangulatedFaceSet      | geometry    | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| beam-varying-cardinal-points.ifc           | IfcBeamStandardCase         | entity      | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| beam-varying-extrusion-paths.ifc           | IfcRevolvedAreaSolid        | geometry    | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| beam-varying-profiles.ifc                  | IfcBeamStandardCase         | entity      | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| brep-model.ifc                             | IfcFacetedBrep              | entity      | IFC1.0        |            | ++                            | ++                              | ++                  | ++               |
| column-extruded-solid.ifc                  | IfcColumnStandardCase       | entity      | IFC4          | deprecated | ++                            | ++                              | ++                  | ++               |
| column-straight-rectangle-tessellation.ifc | IfcTriangulatedFaceSet      | geometry    | IFC4          |            | --                            | ++                              | ++                  | --               |
| construction-scheduling-task.ifc           | IfcTask                     | entity      | IFC1.0        |            | --                            | --                              | --                  | --               |
| csg-primitive.ifc                          | IfcCsgSolid                 | geometry    | IFC1.5.1      |            | ++                            | ++                              | ++                  | --               |
| cube-advanced-brep.ifc                     | IfcAdvancedBrep             | geometry    | IFC4          |            | ++                            | -                               | -                   | -                |
| extruded-solid.ifc                         | IfcExtrudedAreaSolid        | geometry    | IFC1.5        |            | ++                            | ++                              | ++                  | ++               |
| geographic-referencing.ifc                 | IfcProjectedCRS             | geolocatie  | IFC4          |            | --                            | --                              | --                  | --               |
| geographic-referencing.ifc                 | IfcRightCircularCylinder    | geometry    | IFC2x3        |            | ++                            | -                               | --                  | --               |
| geographic-referencing.ifc                 | IfcRightCircularCone        | geometry    | IFC2x3        |            | ++                            | -                               | --                  | --               |
| grid-placement.ifc                         | IfcGridPlacement            | geometry    | IFC2x3        |            | ++                            | ++                              | ++                  | --               |
| mapped-shape-with-multiple-items.ifc       | IfcMappedItem               | geometry    | IFC2x         |            | ++                            | ++                              | ++                  | ++               |
| mapped-shape-with-transformation.ifc       | IfcMappedItem               | geometry    | IFC2x         |            | ++                            | ++                              | ++                  | ++               |
| mapped-shape-without-transformation.ifc    | IfcMappedItem               | geometry    | IFC2x         |            | ++                            | ++                              | ++                  | ++               |
| reinforcing-assembly.ifc                   | IfcReinforcingBar           | entity      | IFC2x2        |            | --                            | ++                              | ++                  | ++               |
| reinforcing-assembly.ifc                   | IfcElementAssembly          | geometry    | IFC2x2        |            | --                            | ++                              | ++                  | ++               |
| reinforcing-assembly.ifc                   | IfcSweptDiskSolid           | geometry    | IFC2x2        |            | --                            | ++                              | ++                  | ++               |
| reinforcing-stirrup.ifc                    | IfcSweptDiskSolid           | geometry    | IFC2x2        |            | --                            | +                               | ++                  | ++               |
| slab-openings.ifc                          | IfcOpeningStandardCase      | geometry    | IFC4          | deprecated | ++                            | ++                              | ++                  | +                |
| slab-standard-case.ifc                     | IfcSlabStandardCase         | geometry    | IFC4          | deprecated | ++                            | ++                              | ++                  | ++               |
| slab-tessellated-unique-vertices.ifc       | IfcTriangulatedFaceSet      | geometry    | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| structural-curve-member.ifc                | IfcStructuralCurveMember    | belastingen | IFC2x2        |            | --                            | --                              | --                  | --               |
| surface-model.ifc                          | IfcFaceBasedSurfaceModel    | geometry    | IFC2x         |            | ++                            | ++                              | ++                  | ++               |
| tessellated-item.ifc                       | IfcTriangulatedFaceSet      | geometry    | IFC4          |            | ++                            | ++                              | ++                  | ++               |
| tessellation-with-blob-texture.ifc         | IfcBlobTexture              | textures    | IFC2x3        |            | --                            | --                              | -                   | -                |
| tessellation-with-image-texture.ifc        | IfcImageTexture             | textures    | IFC2x2        |            | --                            | -                               | -                   | -                |
| tessellation-with-individual-colors.ifc    | IfcIndexedColourMap         | geometry    | IFC4          |            | -                             | -                               | -                   | -                |
| tessellation-with-pixel-texture.ifc        | IfcPixelTexture             | textures    | IFC2x2        |            | --                            | --                              | -                   | -                |
| wall-elemented-case.ifc                    | IfcWallElementedCase        | entity      | IFC4          | deprecated | -                             | ++                              | ++                  | --               |
| wall-standard-case.ifc                     | IfcWallStandardCase         | entity      | IFC 2x        | deprecated | ++                            | ++                              | ++                  | ++               |
| wall-with-opening-and-window.ifc           | IfcOpeningElement           | geometry    | IFC 1.0       |            | ++                            | ++                              | ++                  | -                |

### Ratings

`++:` Looks great!

`+ :` Shows everyting: only minor visual errors

`- :` Shows something: major visual errors / only bounding box

`--:` Does not open or has missing objects
