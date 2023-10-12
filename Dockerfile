FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN useradd -m -s /bin/bash ilspy
USER ilspy

WORKDIR /home/ilspy

RUN dotnet tool install -g ilspycmd

RUN echo 'export PATH="$PATH:/home/ilspy/.dotnet/tools/"' >> /home/ilspy/.bashrc

ENTRYPOINT [ "/bin/bash" ]
