use rand::Rng;
use simple_user_input::get_input;

fn main() {
    println!("Undertale Jokes, that's all. Mainly. You know, as ya want.");
    loop {
            let input: String = get_input("Enter Command, help to display commands");
            if input == "help" {
                println!("Commands: \n1. joke \n2. exit")
            } if input == "joke" {
                println!("{}", get_random_joke())
            } if input == "exit" {
                break
            } else {
                println!("Invalid command. Please try again.")
            }
    }
}

fn get_random_joke() -> String {
    let jokes = vec![
        "Why can't a bicycle stand up by itself? It's two tired!",
        "What do you call a bear with no teeth? A gummy bear!",
        "Why do cows wear bells? Their horns don't work!",
        "What do you call a fake noodle? An impasta!",
        "Why did the tomato turn red? Because it saw the sal-ad dressing!",
        "Why don't scientists trust atoms? Because they make up everything!",
        "Why did the scarecrow win an award? Because he was outstanding in his field!",
        "Why can't a nose be 12 inches long? Because then it would be a foot!",
        "Why did the kid throw his clock out the window? Because he wanted to see time fly!",
        "What do you call a boomerang that doesn't come back? A stick!"
    ];
    let random_index = rand::thread_rng().gen_range(0..jokes.len());
    return jokes[random_index].to_string();
}

mod simple_user_input {
    use std::io;
    pub fn get_input(prompt: &str) -> String{
        println!("{}",prompt);
        let mut input = String::new();
        match io::stdin().read_line(&mut input) {
            Ok(_goes_into_input_above) => {},
            Err(_no_updates_is_fine) => {},
        }
        input.trim().to_string()
    }
}
