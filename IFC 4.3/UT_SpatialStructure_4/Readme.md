
## UT_SpatialStructure_4

### Intent

This UT establishes a spatial structure for the level crossing storyline. The intention is to serve as a skeleton for upcoming unit tests for this storyline.

It is based on the storylines [SLLC-DD](https://app.box.com/folder/119147119179?s=q1x0vz7yqq7otrlet7dm2dx4u44s8fks) (IFC Rail phase 2) and [bSFi_IR_SLRD_DD](https://app.box.com/folder/122373280942?s=x9q3q62tcc77hdqpdw0vjncj7bg3byay) (IFC Infra Deployment)

### Prerequisites

None

### Content

This scenario covers the following concepts and/or IFC entities:
- Georeferencing
  - `IfcProjectedCRS`
  - `IfcMapConversion`
- Spatial structure
  - `IfcSite`
  - `IfcRailway`
  - `IfcRoad`
  - `IfcFacilityPart` with correct `PredefinedType`
  - `IfcRelInterferesElements`
- Geometry
  - `IfcExtrudedAreaSolid`
  - `IfcBoundingBox`

#### Situation

The figure below shows the extent of the IfcSite and its georeferenced location.

![](./Figure%201%20-%20Situation.PNG)

The figures below shows the spatial breakdown of the project into IfcFacility (blue) and IfcFacilityPart (turkoise).

![](./Figure%202%20-%20Toivola_area_borders.JPG)

![](./Figure%203%20-%20Toivola_area_borders2.JPG)

#### Project Breakdown

To represent the project breakdown for this unit test, we envision the following project structure:

- A. IfcProject
  - A.a IfcSite 
    - Representation=IfcBoundingBox
    - A.a.1 IfcRoad (Sammalammintie)
      - Representation=IfcExtrudedAreaSolid
      - A.a.1.1 IfcFacilityPart (Sammalammintie segment 150 - 230)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcRoadPartTypeEnum.ROADSEGMENT
        - UsageType=LONGITUDINAL
      - A.a.1.2 IfcFacilityPart (Sammalammintie Päijänteentie intersection)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcFacilityPartCommonTypeEnum.INTERSECTION
        - UsageType=LONGITUDINAL
      - A.a.1.3 IfcFacilityPart (Sammalammintie segment 247 - 270)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcRoadPartTypeEnum.ROADSEGMENT
        - UsageType=LONGITUDINAL
      - A.a.1.4 IfcFacilityPart (Sammalammintie safety equipment road intersection)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcRoadPartTypeEnum.INTERSECTION
        - UsageType=LONGITUDINAL
      - A.a.1.5 IfcFacilityPart (Sammalamminitie level crossing)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcRoadPartTypeEnum.RAILWAYCROSSING
        - UsageType=LONGITUDINAL
      - A.a.1.6 IfcFacilityPart (Sammalammimtie segment 315 - 358)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcRoadPartTypeEnum.ROADSEGMENT
        - UsageType=LONGITUDINAL
      - A.a.1.7 IfcFacilityPart (Sammalammintie Road2 intersection)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcRoadPartTypeEnum.INTERSECTION
        - UsageType=LONGITUDINAL
      - A.a.1.8 IfcFacilityPart (Sammalammintie segment 386 - 620)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcRoadPartTypeEnum.ROADSEGMENT
        - UsageType=LONGITUDINAL
    - A.a.2 IfcRoad (Safety equipment road)
      - Representation=IfcExtrudedAreaSolid
      - A.a.2.1 IfcFacilityPart (Safety equipment terminal)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcFacilityPartCommonTypeEnum.TERMINAL
        - UsageType=LONGITUDINAL
      - A.a.2.2 IfcFacilityPart (Sammalammintie safety equipment road intersection)
        - Representation=IfcExtrudedAreaSolid - Shared with A.a.1.4
        - PredefinedType*=IfcRoadPartTypeEnum.INTERSECTION
        - UsageType=LONGITUDINAL
        - IfcRelInterferesElements
          - InterferenceType=Crosses
          - RelatingElement=#A.a.1.4
          - RelatedElement=#A.a.2.2
    - A.a.3 IfcRoad (Road2)
      - Representation=IfcExtrudedAreaSolid
      - A.a.3.1 IfcFacilityPart (Road2 segment 18 - 36)
        - Representation=IfcExtrudedAreaSolid
        - PredefinedType*=IfcRoadPartTypeEnum.ROADSEGMENT
        - UsageType=LONGITUDINAL
      - A.a.3.2 IfcFacilityPart (Sammalammintie Road2 intersection)
        - Representation=IfcExtrudedAreaSolid - Shared with A.a.1.7
        - PredefinedType*=IfcRoadPartTypeEnum.INTERSECTION
        - UsageType=LONGITUDINAL
        - IfcRelInterferesElements
          - InterferenceType=Crosses
          - RelatingElement=#A.a.1.7
          - RelatedElement=#A.a.3.2
    - A.a.4 IfcRailway (Railway)
      - IfcExtrudedAreaSolid
      - A.a.4.1 IfcFacilityPart (Railway part 1)
        - Representation=-
        - PredefinedType*=IfcRailwayPartTypeEnum.TRACKSTUCTUREPART
        - UsageType=LONGITUDINAL
      - A.a.4.2 IfcFacilityPart (Sammalamminitie level crossing)
        - Representation=IfcExtrudedAreaSolid - Shared with A.a.1.5
        - PredefinedType*=IfcFacilityPartCommonTypeEnum.LEVELCROSSING
        - UsageType=LONGITUDINAL
        - IfcRelInterferesElements
          - InterferenceType=Crosses
          - RelatingElement=#A.a.1.5
          - RelatedElement=#A.a.4.2
      - A.a.4.3 IfcFacilityPart (Railway part 3)
        - Representation=-
        - PredefinedType*=IfcRailwayPartTypeEnum.TRACKSTUCTUREPART
        - UsageType=LONGITUDINAL
      - A.a.4.4 IfcFacilityPart (Turvalaite Terminal)
        - Representation=IfcExtrudedAreaSolid - Shared with A.1.2.1
        - PredefinedType*=IfcFacilityPartCommonTypeEnum.TERMINAL
        - UsageType=LONGITUDINAL
        - IfcRelInterferesElements
          - InterferenceType=Crosses
          - RelatingElement=#A.a.2.1
          - RelatedElement=#A.a.4.4

_* the PredefinedType enumeration is selected through "IfcFacilityPartTypeSelect"_.


---

#### Expected Results

The aim of this Unit Test, as explained above, is to test the implementation of the project breakdown through the spatial structure concepts of IFC 4.3.

As such, the expected results are:

1. Screen-shot of the spatial structure breakdown as represented in the native application,
2. The resulting IFC file containing the spatial structure requested.

For example, the application should be able to display something like what is shown in the picture below: 

![](./Figure%204%20-%20result.png)

### Supporting files

Following files correspond to this scenario:

| Filename                               | Description                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| `UT_SpatialStructure_4.ifc`            | IFC file with the content                                    |
| `Figure 1 - Situation.png`             | picture showing a map view of the situation                  |
| `Figure 2 - Toivola_area_borders.JPG`  | picture showing a map over different facilities and parts - part1 |
| `Figure 3 - Toivola_area_borders2.JPG` | picture showing a map over different facilities and parts - part 2 |
| `Figure 4 - result.png`                | picture showing possible result                              |
| `Toivola_area_borders.dwg`             | dwg file as basis for figures 2 and 3                        |
| `IFCTreeView.png`                      | picture showing file structure in IFCTreeView                |
