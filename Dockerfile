FROM trestletech/plumber
RUN mkdir -p /app/
RUN R -e "install.packages('cmprsk',dependencies=TRUE, repos='http://cran.rstudio.com/')"
WORKDIR /app/
COPY cox_model.R /app/
COPY cox_api.RData /app/
CMD ["/app/cox_model.R"]
