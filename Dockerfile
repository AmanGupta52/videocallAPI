# Use official LiveKit server image
FROM livekit/livekit-server:latest

# Expose HTTP port (Render maps this automatically)
EXPOSE 7880

# Bind HTTP and WebRTC ports to all interfaces
ENV LIVEKIT_BIND_ADDR=0.0.0.0
ENV LIVEKIT_PORT=${PORT}
ENV LIVEKIT_RTC_BIND_ADDR=0.0.0.0
ENV LIVEKIT_RTC_PORT_TCP=7881
ENV LIVEKIT_RTC_PORT_UDP_START=7882
ENV LIVEKIT_RTC_PORT_UDP_END=7882

# Start LiveKit in development mode
CMD ["livekit-server", "--dev"]
