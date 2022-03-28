FROM julia

# Create project directory (workdir)
WORKDIR /app

# Add source code files to WORKDIR
ADD . .

# Container start command for development
# Allows DevSpace to restart the dev container
# It is also possible to override this in devspace.yaml via images.*.cmd
CMD ["julia"]
