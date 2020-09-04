#!/bin/bash



git clone https://github.com/openai/gym; \

#Install openai utilities
cd gym; \
pip install -e .; \
pip install -e .'[box2d]'; \
pip install -e .'[classic_control]'; \
cd ..; \

#Install necessary python
git clone https://github.com/udacity/deep-reinforcement-learning; \
cd deep-reinforcement-learning/python; \
pip install .; \
cd ../../; \

#set up python kernel for drlnd env
python -m ipykernel install --user --name drlnd --display-name "drlnd"; \

# remove unnecessary clones
rm -rf gym deep-reinforcement-learning

#clone my github project
cd collector; \


#dowload and unzip Udacity visual enviroment
curl https://s3-us-west-1.amazonaws.com/udacity-drlnd/P1/Banana/Banana.app.zip --output Banana.app.zip; \
unzip Banana.app.zip; \
