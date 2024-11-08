# First stage - Build
FROM python:3.7-slim AS build

# Set working directory
WORKDIR /app

# Install dependencies
RUN pip install networkx dash plotly

# Copy application code
COPY . .

# Second stage - Run
FROM python:3.7-slim

# Set working directory
WORKDIR /app

# Copy only necessary files and dependencies from build stage
COPY --from=build /app /app

# Create user for security
RUN groupadd -r webservice && useradd --no-log-init -r -g webservice webservice

# Set user and expose port
USER webservice:webservice
EXPOSE 8050

# Run the application
CMD ["python", "GraphAnalysis.py", "obj_dependency_data.csv"]
