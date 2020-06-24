FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-runtime

RUN mkdir -p /opt/mnist

WORKDIR /opt/mnist/src
ADD mnist.py /opt/mnist/src/mnist.py

RUN  chgrp -R 0 /opt/mnist \
  && chmod -R g+rwX /opt/mnist

ENTRYPOINT ["python", "/opt/mnist/src/mnist.py"]
