// Remember to import Scanner!
import java.util.Scanner;

public class RPSGame {
	/*
	 * Asks the computer to randomly select rock, paper, or scissors.
	 * @return a string value (rock, paper, or scissors)
	 */
	public static String askComputer() {
		int choice = (int)(3 * Math.random());
		if(choice == 0) {
			return "rock";
		} else if(choice == 1) {
			return "paper";
		} else {
			return "scissors";
		}
	}
	/*
	 * Asks the user to type rock, paper, or scissors.
	 * @return a string value (rock, paper, or scissors)
	 */
	public static String askHuman() {
		// Fill this in using the Scanner class
		// Should convert human entry to lowercase
		// Should return "error" if input is invalid
		Scanner in = new Scanner(System.in);
		System.out.println("Make your choice: ");
		String choice = in.nextLine();
		String lowerChoice = choice.toLowerCase();
		if(lowerChoice.equals("rock") || lowerChoice.equals("paper") || lowerChoice.equals("scissors")) {
			return lowerChoice;
		} else {
			// Made recursive to reprompt the user
			// if they entered an invalid input.
			return askHuman();
		}
	}
	/*
	 * Checks if the human won the game.
	 * @param human user's selection
	 * @param computer's selection
	 * @return a boolean value (true if human won, false otherwise)
	 */
	public static boolean humanIsTheWinner(String humanChoice, String computerChoice) {
		// Fill this in using multicase format
		if(humanChoice.equals("rock") && computerChoice.equals("scissors")) {
			return true;
		} else if(humanChoice.equals("paper") && computerChoice.equals("rock")) {
			return true;
		} else if(humanChoice.equals("scissors") && computerChoice.equals("paper")) {
			return true;
		} else {
			return false;
		}
	}
	/*
	 * Runs the game code so that the user can play RPS.
	 */
	public static void main(String[] args) {
		// Ask both players to make a choice
		String choice1 = askHuman();
		String choice2 = askComputer();
		// Print both choices
		System.out.println("Human: " + choice1);
		System.out.println("Computer: " + choice2);
		// Check if human choice was valid
		if(!choice1.equals("rock") && !choice1.equals("paper") && !choice1.equals("scissors")) {
			System.out.println("Human made an invalid selection!");
		} else {
			// Check if human player won
			if(humanIsTheWinner(choice1, choice2)) {
				System.out.println("Human wins! :)");
			} else {
				System.out.println("Computer wins [or there is a tie]. :(");
			}
		}
	}
}
