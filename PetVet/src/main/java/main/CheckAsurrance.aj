package main;
import java.util.Scanner;
public aspect CheckAsurrance {
	pointcut verifyAssurance():execution(void PetStore.makeAppointment());
	
	before(): verifyAssurance(){
		System.out.println("Verifying assurance...");
		System.out.println("Name of your pet:");
		Scanner pet = new Scanner(System.in);
		System.out.println("Welcome " + pet.nextLine());
	}
	
	after(): verifyAssurance(){
		System.out.println("Request was executed succesfully\n");
	}
}
