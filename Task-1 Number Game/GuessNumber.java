package GuessNumber;

import java.util.Scanner;

class Secret
    {
        static int minRange=0;
        static int maxRange=100;

        static int randomNumber = (int)( Math.random() * (maxRange - minRange + 1 ) + minRange);  
        
        public void playGame()
        {
            
            Scanner sc=new Scanner(System.in);
            System.out.println("Enter your name");
            String name=sc.nextLine();
            System.out.println("\n*************************************************");
            System.out.println("Welcome to the Number Guessing Game.....  " + name);
            System.out.println("*************************************************");

            System.out.println("Enter your level," + "\n 1. EASY" +"\n 2. MEDIUM" + "\n 3. HARD");
            int level=sc.nextInt();
            
           if(level == 1 || level == 2 || level == 3 )
           {
                System.out.println("\nSo, I guessed a number between " + minRange +" to " + maxRange +"\n" );
           }
            

            int attempts=1,score=100;

            switch(level)
            {
                case 1: 
                        while(attempts <= 10)
                        {
                            System.out.println("\nEnter your guess :  ");
                            int userInput=sc.nextInt();
                          
                           
                            if(userInput > randomNumber)
                            {
                                System.out.println("The number you have guessed is higher than my guessed number");
                                score-=10;
                            }
                            else if(userInput < randomNumber)
                            {
                            System.out.println("The number you have guessed is lower than my guessed number");
                            score-=10;
                            }
                            else if(userInput == randomNumber)
                            {
                                System.out.println("Hooray, You guessed the number right!!!!!!");
                                break;
                            }

                            attempts++;
                        } 
                        break;

                case 2 : while(attempts <= 5)
                        {
                            System.out.println("\nEnter your guess:-  ");
                            int userInput=sc.nextInt();

                            if(userInput > randomNumber)
                            {
                                System.out.println("The number you have guessed is too higher than my guessed number");
                                score-=20;
                            }
                            else if(userInput < randomNumber)
                            {
                            System.out.println("The number you have guessed is  lower than my guessed number");
                            score-=20;
                            }
                            else
                            {
                                System.out.println("Hooray, You guessed the number right!!!!!!");
                                break;
                            }

                            attempts++;
                        } 
                        break;

                case 3 : while(attempts <= 2)
                        {
                            System.out.println("\nEnter your guess:-  ");
                            int userInput=sc.nextInt();

                            if(userInput > randomNumber)
                            {
                                System.out.println("The number you have guessed is higher than my guessed number");
                                score-=50;
                            }
                            else if(userInput < randomNumber)
                            {
                                System.out.println("The number you have guessed is lower than my guessed number");
                                score-=50;
                            }
                            else
                            {
                                System.out.println("Hooray, You guessed the number right!!!!!!");
                                break;
                            }

                            attempts++;
                        } 
                        break;
                         
                default : System.out.println("You Entered wrong choice!!");
            }

            if(level == 1 || level == 2 || level == 3 )
            {
                System.out.println("\nBased on your performance you have scored : " + score);
            }
            
            if(level == 1 || level == 2 || level == 3 )
            {
                if(attempts > 10)
                {
                    System.out.println("\n" + name + ", You have reached the maximum limit.... \n" + "\nBased on your performance you have scored :  " + score );
                }

                System.out.println("The number was : " + randomNumber );
            }
           


            sc.close();
        }
        
    }






public class guessNumber 
{
    public static void main(String[] args) 
    {
        Secret obj=new Secret();
        obj.playGame();
        
    }
}
