version: 2.1
workflows:
  test_deploy:
    jobs:
      - python_project

jobs:
  python_setup:
    docker:
      - image: cimg/python:3.10.0
    steps:
      - checkout
      - run:
          name: Install pandas
          command: pip install pandas
      - run:
          name: Install Numpy
          command: pip install numpy