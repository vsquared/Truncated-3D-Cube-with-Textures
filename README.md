# Truncated-3D-Cube-with-Textures
Truncating each of the corners of a cube yields six octagons and eight triangles.  The Processing 4.5.6 source code below demonstrates applying textures to the octagons with the aid of textureMode(NORMAL), described here: https://processing.org/reference/textureMode_.html.  The images used for the textures are in the 'data' folder which should be downloaded and placed inside the sketch folder.  The 'normal' coordinates of a quadrilateral image are 0,0 (left top), 1,0 (right top), 1,1 (right bottom), and 0,1 (left bottom).  Horizontal and vertical normal coordinates (u,v) which yield distortion-free images for the octagons are shown below.  These points may be calculated by taking one half of the crop percentage, approximately 0.16 in this case, and using it in combination with 0.84 (1.0 - 0.16).  Mouse down and drag to rotate cube.

Octagonal 'Normal' Coordinates:
<img width="479" height="417" alt="oct_coord" src="https://github.com/user-attachments/assets/c1a55e75-2cd0-4079-a0bb-40a814b370d9" />

Output:
<img width="326" height="319" alt="output" src="https://github.com/user-attachments/assets/e3845403-c1b7-4ff6-8dce-3c28cfc2b553" />


