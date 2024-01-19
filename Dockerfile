# This Dockerfile is to build a new image based on the bcb420 base image.
# The packages pheatmap and DESeq2 are installed. 

FROM risserlin/bcb420-base-image:winter2024-arm64

RUN R -e 'install.packages(c("pheatmap"))'
RUN R -e 'BiocManager::install(c("DESeq2"))'