version: 2.1
workflows:
  test_deploy:
    jobs:
      - python_project

jobs:
  python_project:
    docker:
      - image: cimg/python:3.10.0
    steps:
      - checkout
      - run:
          name: Install pandas
          command: pip -r requirement.txt
      - run:
          name: Install Numpy
          command: pip install numpy