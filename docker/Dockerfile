FROM jicscicomp/bioformats

RUN pip install jupyter jicbioimage.core

RUN mkdir /data && \
    cd /data && \
    wget https://ndownloader.figshare.com/articles/3438743/versions/1

COPY jupyter_notebook_config.py /conf/jupyter_notebook_config.py
COPY data/* /data
COPY notebooks/* /notebooks/

ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

# Disable warnings.
RUN ipython profile create
COPY disable-warnings.py /root/.ipython/profile_default/startup/

EXPOSE 8888

CMD ["jupyter", "notebook", "--no-browser", "--ip=*", "--config=/conf/jupyter_notebook_config.py"]
