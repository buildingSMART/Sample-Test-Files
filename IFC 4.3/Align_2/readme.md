## *Align_2*

### Intent

*This scenario shows an alignment with zero length circular curve between clothoids, zero length line segment between cuves, and a transition curve between two circular curves. Those zero length elements are not present in ifc file, they are just a concept, but some software vendors include those zero length elements in data files.*

| Element | Length | Entity in file |
|----|----|----|
| straight | 688.338m  | `#50` |
| clothoid | 834.767m  | `#36` |
| arc      | 0m        | `None`|
| clothoid | 1099.370m | `#38` |
| straight | 0m        | `None`|
| clothoid | 928.817m  | `#40` |
| arc	   | 393.904m  | `#42` |
| clothoid | 646.649m  | `#44` |
| arc      | 497.872m  | `#46` |
| clothoid | 461.366m  | `#58` |
| straight | 100m      | `#52` |

### Prerequisites

This scenario builds upon following other scenarios:
- *Align_1*

### Content

This scenario covers the following concepts and/or IFC entities:
- *In 1523.105 station, there is a zero length circular curve with 1103.685 radius*
- *In 2622.475 station, there is a zero length segment*
- *In 3945.196 station, there is a Clothoid with 972.837 starting radius and 1387.185 end radius (`#46)*

### Supporting files

Following files correspond to this scenario:

| Filename                     | Description                               |
|------------------------------|-------------------------------------------|
| *UT_Align_2.ifc*             | *Exported data as IFC*             |
| *UT_Align_2.dwg*             | *CAD file with alignment representation* |
| *UT_Align_2_zero_length.png* | *screen shot of CAD file*                 |
| *UT_Align_2_transition.png*  | *screen shot of CAD file*                 |
| *UT_Align_2.xml*             | *same content of Ifc file, in LandXML format* |
  
