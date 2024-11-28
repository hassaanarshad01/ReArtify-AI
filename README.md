# ReArtify-AI

ReArtify-AI is an innovative tool designed to restore damaged paintings using cutting-edge machine learning techniques. It identifies the type of damage on an uploaded painting and applies specialized restoration processes to bring the artwork back to life.

## Key Features
- **Damage Classification**: 
  - Utilizes a self-trained Keras classifier to determine the type of damage, categorized as:
    - Missing areas
    - Scratches
    - Blur
    - Discoloration
    - Smudge
- **Damage-Specific Repair**: 
  - **Custom CNN Models**: Four specialized CNN models handle restoration based on the identified damage type:
    - Scratches
    - Blur
    - Discoloration
    - Smudging
  - **Missing Regions**: 
    - A custom mask generator combines detection, dilation, and erosion techniques to prepare damaged areas for repair.
    - Stability AI's **Stable Diffusion Inpainting 2.0** model restores missing regions with remarkable accuracy.

## Results

### Before and After Restoration
Below is an example of a damaged painting repaired using ReArtify-AI:

| **Damaged Input** | **Restored Output** |
|--------------------|---------------------|
| ![Damaged Painting](_Images/images_test/blur/3.jpg) | ![Restored Painting](_Images/Output/images_test_results/blur/3.jpg) |

---

### Process Example
1. **Uploaded Image**: The input painting was analyzed to determine the damage type.
2. **Damage Classification**: The classifier identified the damage as "Blur"
3. **Repair**: The corresponding CNN model repaired the image with the following results:


## Installation and Setup
To reduce repository size:
1. **Frontend Dependencies**:
   - The `node_modules` folder has been removed.
   - Install necessary frontend dependencies using:
     ```bash
     cd frontend
     npm install
     ```
2. **Stable Diffusion Inpainting Model**:
   - The Stability AI inpainting model is not included in this repository.
   - Download the model and place it in the `models/inpainting` folder.
   - Use the provided download script:
     ```
     models/backup-models-and-codes/inpainting-model-downloader.ipynb
     ```

## Usage
1. Run the project using: Launch.bat
2. Follow the on-screen instructions to upload a damaged painting and view the restoration results.
## Dependencies
- **Frontend**: Install modules using `package.json`.
- **Backend and Models**:
- Keras for damage classification.
- Stability AI's Stable Diffusion Inpainting 2.0 for missing regions.
- Custom CNN models for specific damage types.

## How It Works
1. **Upload Painting**: Users upload an image of the damaged painting.
2. **Classification**: The Keras classifier identifies the type of damage.
3. **Restoration**:
- If the damage is scratches, blur, discoloration, or smudging, the corresponding CNN model repairs the image.
- For missing areas, the mask generator prepares the image, and the inpainting model restores the regions.
4. **Result**: The restored painting is displayed or saved.

## Notes
- Ensure that the inpainting model and dependencies are properly set up before running the application.
- Refer to the download script for obtaining required external models.

## Future Enhancements
- Improved damage classification for multi-type damages.
- Additional models to address new types of painting damage.
- Enhanced user interface for better accessibility.

---

We hope you enjoy using ReArtify-AI to bring damaged artwork back to life! 😊
