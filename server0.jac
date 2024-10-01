walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker add_numbers {
    has num1: int;
    has num2: int;

    can return_message with `root entry {
        report {
            "response": "The sum of " + str(self.num1) + " and " + str(self.num2) + " is " + str(self.num1 + self.num2) + "."
        };
    }
}

walker greet_with_age {
    has name: str;
    has age: int;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "! You are " + str(self.age) + " years old."
        };
    }
}