FROM jgehrcke/github-repo-stats-base:e87aa5891

				     
COPY fetch.py /fetch.py
COPY analyze.py /analyze.py
COPY pdf.py /pdf.py
COPY entrypoint.sh /entrypoint.sh
COPY resources /resources

RUN mkdir /rundir && cd /rundir
RUN chmod 777 /entrypoint.sh
WORKDIR /rundir
ENTRYPOINT ["/entrypoint.sh"]
