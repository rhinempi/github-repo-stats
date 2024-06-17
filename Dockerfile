FROM rhinempi/github-repo-stats-base:1b3fb79bd

COPY fetch.py /fetch.py
COPY analyze.py /analyze.py
COPY pdf.py /pdf.py
COPY entrypoint-test.sh /entrypoint.sh
COPY resources /resources

RUN mkdir /rundir && cd /rundir
WORKDIR /rundir
ENTRYPOINT ["/entrypoint.sh"]
