/*************************************************************
TITLE         : LA RATATOUILLE RESTAURANT RESERVATION SYSTEM

GROUP MEMBERS : 1) NURBAITI JANNATI BINTI NUHAIRI
                2) SITI NORHAJAR BINTI NORHAMADI
                3) NUR AISYAH ADINA BINTI ALI SYADIKIN
                4) AMELIA NATASYA BINTI AZMAN

GROUP         : T5CS1103A

FACULTY       : FSKM, UITM KAMPUS KUALA TERENGGANU
**************************************************************/


import java.util.ArrayList; //create an array list of reservations
import java.util.Collections; //sort the reservations by date
import java.util.Scanner; //read input from the user
import java.time.LocalDate; //store and manipulate dates for the reservations

  //store and manage a list of reservations
  public class ReservationSystem {
    private ArrayList<Reservation> reservations;
  
  public ReservationSystem() {
    reservations = new ArrayList<Reservation>();
  }
  
  //code to start the program
  public static void main(String[] args) {
    ReservationSystem reservationSystem = new ReservationSystem();
    reservationSystem.start();
  }
  
  //main loop for the reservation system
  public void start() {
    while (true) {
      printMenu();
      Scanner scanner = new Scanner(System.in);
      int choice = scanner.nextInt();
      switch (choice) {
        case 1: 
          addReservations(); //code block
          break;
        case 2:
          sortReservations(); //code block
          break;
        case 3:
          searchReservations(); //code block
          break;
        case 4:
          totalReservations(); //code block
          break;
        case 5:
          totalPrice(); //code block
          break;
        case 6:
          return;
      }
    }
  }
  
  //print the menu options for the reservation system to the console
  private void printMenu() {
    System.out.println("1.Add a reservation");
    System.out.println("2.Sort reservations");
    System.out.println("3.Search for a reservation");
    System.out.println("4.Total number of reservations");
    System.out.println("5.Total price of all reservations");
    System.out.println("6.Exit");
  }
  
  //adding new reservations to the system
 private void addReservations(){
    Scanner scanner = new Scanner(System.in);
    System.out.println("Enter the name of person making the reservation: ");
    String name = scanner.nextLine();
    System.out.print("Enter the date of the reservation (YYYY-MM-DD): ");
    LocalDate localDate = LocalDate.parse(scanner.nextLine());
    System.out.print("Enter the number of people in the party: ");
    int partySize = scanner.nextInt();
    System.out.print("Enter the price per person: ");
    double pricePerPerson = scanner.nextDouble();
    Reservation reservation = new Reservation(name, localDate, partySize, pricePerPerson);
    reservations.add(reservation);
  }
  //sorts the reservations stored in the reservations ArrayList
  private void sortReservations() {
    Collections.sort(reservations);
     for (Reservation reservation : reservations) {
       System.out.println(reservation);
    }
  }
  
  //searches through the list of reservations and looks for a reservation with a name that matches the input name provided by the user
  //counts the total number of reservations by adding the party size of each reservation and displaying the total in the console
  private void searchReservations() {
    Scanner scanner = new Scanner(System.in);
    System.out.println("Enter the name of the person to search for: ");
    String name = scanner.nextLine();
    boolean found = false;
    for(Reservation reservation : reservations){
      if(reservation.getName().equals(name)){
        System.out.println(reservation);
        found = true;
        break;
      }
    }
    if (!found) {
      System.out.println("No reservation found for" + name);
    }
  }
  
  private void totalReservations() {
    int total = 0;
    for(Reservation reservation : reservations) {
      total += reservation.getPartySize();
    }
    System.out.println("Total number of reservations: " + total);
  }
  
  private void totalPrice() {
    double totalPrice = 0;
    for(Reservation reservation : reservations) {
      totalPrice += reservation.getPartySize() * reservation.getPricePerPerson();
    }
    System.out.println("Total price of all reservations: " + totalPrice);
  }
  
  public class Reservation implements
  Comparable<Reservation>{
    private String name;
    private LocalDate date;
    private int partySize;
    private double pricePerPerson;
    
  public Reservation(String name, LocalDate date, int partySize, double pricePerPerson) {
    this.name = name;
    this.date = date;
    this.partySize = partySize;
    this.pricePerPerson = pricePerPerson;
    }
    
  public String getName() {
    return name;
    }
  
  public LocalDate getDate() {
    return date;
    }
  
  public int getPartySize() {
    return partySize;
    }
  
  public double getPricePerPerson() {
    return pricePerPerson;
    }
    
  public int compareTo(Reservation other) {
    return this.date.compareTo(other.date);
    }
    
  public String toString() {
    return "Name: " + name + ", Date: " + date + ", Party Size: " + partySize + ", Price per Person: " + pricePerPerson;
    }
  }
}