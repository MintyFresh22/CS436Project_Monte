### Monte Hedrick
# Story Generator

Story Generator is a project that uses a fine-tuned GPT-2 model to generate short stories. 

## Installation

WARNING! THIS GIT REPO TAKES UP ABOUT 4.2 GB OF STORAGE SPACE

To install Story Generator run the following command from a terminal:\
$git clone https://github.com/MintyFresh22/CS436Project_Monte

Cloning the repository might take some time because of its size

## Usage

Once the repository has been cloned it should have the following file structure:\
CS436Project_Monte/:
Project/  README.md

CS436Project_Monte/Project:
__pycache__/     cohesion_model.pickle  stories.csv
cohesion_model/  Project.ipynb          trained_generator.pickle

CS436Project_Monte/Project/__pycache__:
generator.cpython-37.pyc

CS436Project_Monte/Project/cohesion_model:
assets/  saved_model.pb  variables/

CS436Project_Monte/Project/cohesion_model/assets:

CS436Project_Monte/Project/cohesion_model/variables:
variables.data-00000-of-00001  variables.index
\
\
navigate to the Project directory and open the Project.ipynb file in jupyter notebook:\
$jupyter notebook

Do NOT run all cells, run only cells under sections labeled "Run all cells in this section". Make sure to run cells at the top of the file that contain the StoryGenerator class, and the get_sent_embedding, get_tokenized_sent, and get_word_embedding functions. 

Next, scroll down in the file running cells in sections labeled "Run all cells in this section" only. Make sure to run the cell that loads the story generator, and cohesion model from their files.

After all the prerequisite cells have been run scroll to the bottom of the file labeled "Run these cells to generate and evaluate a story". Run these cells in the order they appear in the file. A prompt will appear where you may enter the first few sentences of the story to be generated, entering between 1-10 sentences produces reliable results. After you have entered all of your sentences, you will be prompted to select how many sentences should be added to your story by the story generator. It is recommended to select a number between 1-20 sentences but be aware that the story generator may take anywhere from 5-15 minutes to complete the story depending on how many sentences are generated.

Once the story has been generated, the story will be printed to the screen. To measure the cohesiveness of the generated story run the next cell. Cohesiveness is scored from 0 to 1 where 1 is the most cohesive. 

To generate a new story rerun the first cell under the section labeled "Run these cells to generate and evaluate a story"
