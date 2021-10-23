FROM intel/oneapi-hpckit:latest
RUN apt-get update && apt-get install -y git xz-utils libboost-serialization-dev
COPY . /workloads
WORKDIR /workloads
RUN bash graph500.sh
RUN bash GraphMat.sh
RUN bash spec.sh
ENTRYPOINT ["/workloads/entrypoint.sh"]
CMD ["bash"]
