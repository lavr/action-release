import os
import requests  # noqa We are just importing this to prove the dependency installed correctly


def main():
    version = os.environ["INPUT_VERSION"]

    my_output = f"Version is {version}"

    print(f"::set-output name=version::{my_output}")


if __name__ == "__main__":
    main()
