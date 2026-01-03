import random

def generate_pin(length=4):
    return ''.join([str(random.randint(0, 9)) for _ in range(length)])

# Generate a PIN
pin = generate_pin()
print("Generated PIN:", pin)
