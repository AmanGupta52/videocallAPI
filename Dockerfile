# Use official LiveKit server image
FROM livekit/livekit-server:latest

# Expose port (Render will map this automatically)
EXPOSE 7880

# Set environment variables for LiveKit
# Bind to all interfaces and use Render's assigned PORT
ENV LIVEKIT_BIND_ADDR=0.0.0.0
ENV LIVEKIT_PORT=7880

# Start LiveKit in dev mode
CMD ["livekit-server", "--dev"]
