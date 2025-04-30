import java.util.*;

public class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        int letterWidth = in.nextInt();   // Width of each letter
        int letterHeight = in.nextInt();  // Height of each letter
        in.nextLine(); // Consume the newline

        String text = in.nextLine().toUpperCase(); // Convert input text to uppercase

        // Read the ASCII art alphabet (A-Z + ?)
        String[] asciiAlphabet = new String[letterHeight];
        for (int i = 0; i < letterHeight; i++) {
            asciiAlphabet[i] = in.nextLine();
        }

        // For each row of the ASCII art
        for (int row = 0; row < letterHeight; row++) {
            StringBuilder line = new StringBuilder();

            for (char character : text.toCharArray()) {
                int index;

                // Find the index in ASCII art (A=0, B=1, ..., Z=25, others=?=26)
                if (character >= 'A' && character <= 'Z') {
                    index = character - 'A';
                } else {
                    index = 26; // Index of '?'
                }

                int start = index * letterWidth;
                int end = start + letterWidth;

                line.append(asciiAlphabet[row], start, end);
            }

            System.out.println(line);
        }
    }
}
