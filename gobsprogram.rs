use std::io;
use std::io::Write;
use std::process;

fn main() {

    let mut ans = String::new();
    let mut i: u32 = 0;

    loop{
        print!("Gob`s Program:  Y/N?\n?  ");
        let _ = io::stdout().flush();
        io::stdin().read_line(&mut ans).expect("");

        match ans.trim() {
            "Y" | "Yes" => loop{
                i = i + 1;
                print!("Penus");
                if i % 7 != 0 { print!("  ") } else { print!("\n") }
            },
            "N" | "No" => process::exit(0),
            _  => continue
        }
    }
}
