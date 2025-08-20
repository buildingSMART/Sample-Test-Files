# IFC Import Certification – Minimal Test Set

The following list represents the **publicly available minimal test set** executed by buildingSMART for **global software certification** of IFC *import* functionality. These tests apply across all certified IFC versions and reflect the minimum requirements that software must meet to demonstrate conformance with openBIM standards for model interpretation and data integrity.

This set is part of buildingSMART’s commitment to open, transparent, and repeatable certification processes and is grounded in practical use cases from industry workflows.

## ✅ Minimum Import Test Criteria

1. **General visual geometry check**  
   Ensure that the imported model geometry visually matches the source model.

2. **Correct geographic positioning**  
   Validate that the model is correctly geolocated based on IFC positioning data.

3. **Projected CRS value import**  
   Confirm that the projected Coordinate Reference System (CRS) is interpreted and imported accurately.

4. **Assemblies and their information**  
   Verify that assemblies (e.g., aggregated elements) are imported with correct hierarchy and metadata.

5. **Presence of spaces**  
   Ensure spatial elements like IfcSpace are imported and correctly placed in the model structure.

6. **Accessibility of type-level information on instance level**  
   Check if attributes and properties defined at the type level (e.g., IfcWallType) are available on their instances (e.g., IfcWall).

7. **Groups and systems**  
   Validate that IfcGroup and IfcSystem relationships are preserved and correctly imported.

8. **Correct spatial breakdown**  
   Confirm the correct hierarchy for spatial containers (Project > Site > Building > Storey).

9. **Material assignment**  
   Ensure that materials assigned in the IFC file are correctly associated with elements upon import.

10. **Property sets and attributes**  
    Check that all property sets (Psets) and individual properties are imported accurately.

11. **Quantities**  
    Validate the import of IfcQuantity data (e.g., area, volume, length).

12. **Classification references**  
    Ensure that IfcClassificationReference data is present and that URIs are correctly imported.

13. **Colours**  
    Confirm that colour information (e.g., for visual representation) is imported correctly.

14. **Object GlobalId (GUID)**  
    Check that each object retains its original unique identifier (GUID) from the IFC source file.

15. **Road surface and markings (IFC 4.3 only)**  
    *(Applicable to IFC 4.3)*: Verify the relationship between road surfaces and road markings is correctly imported.
