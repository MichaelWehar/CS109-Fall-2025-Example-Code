float museumTicketPrice(int age) {
  if(age >= 65) {
    // Senior citizen discount
    return 10.50;
  } else if(age >= 18) {
    // Adult's pay full price
    return 14.0;
  } else {
    // Child discount
    return 9.50;
  }
}

void printTicketPrice(String name, int age) {
  double price = museumTicketPrice(age);
  println(name + " must pay $" + price + " to purchase a ticket.");
}

void setup() {
  printTicketPrice("Bob", 67);
  printTicketPrice("Sally", 25);
  printTicketPrice("Johnny", 10);
}
