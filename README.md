I have loved solving Rubik's cubes for around ten years, specifically speed cubing with the 3x3. Often, while practising, I use a scramble generator and timer app. This MATLAB script randomly generates a scramble for a 3x3 Rubik's cube, and displays what the cube should look like to check the user has applied it correctly. 
In the scramble, the following letters are used as notation for different moves on the cube. Much of it is self explanatory:

R - Right Face

F- Front Face

U - Top Face

D - Bottom Face

B - Back Face

L - Left Face

Any letter with a '2' after it means the face should be turned 180 degrees, and an ''' means the face should be turned anticlockwise instead of clockwise. 
Scrambles must be generated subject to a few constraints:
The same face must not appear consecutively (e.g. 'R R' is invalid).
Certain sequences of moves cannot appear, as they are unnecessary (e.g. 'R L R' is invalid, as this should be represented by 'R2 L' instead).

To display the result of the scramble, I started by creating 6 graphic object arrays (for the six faces), with 9 squares each. I arranged them on a figure in a 2D net of a 3x3 Rubik's cube, and assigned them colours so the cube started in the solved state. 
Then, I created functions for each move which defined how the colours for each square on the cube would change, and used these to display the scramble once it is generated. 
An example of the output of the code is shown below. 


![Scramble](https://github.com/user-attachments/assets/ebc658b3-f609-4950-892a-8424cb77295a)

Next steps to this would be to add a timer, and the option to generate and display scrambles for different cubes, like a 4x4. Another option would be to generate scrambles for specific cases, like where the entire cube is solved except for the last layer. 
