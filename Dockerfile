FROM livekit/livekit-server:latest

# Expose internal HTTP port (Render uses this)
EXPOSE 7880

# Use Render's assigned port
ENV LIVEKIT_BIND_ADDR=0.0.0.0
ENV LIVEKIT_PORT=${PORT}
ENV LIVEKIT_RTC_BIND_ADDR=0.0.0.0
ENV LIVEKIT_RTC_PORT_TCP=7881
ENV LIVEKIT_RTC_PORT_UDP_START=7882
ENV LIVEKIT_RTC_PORT_UDP_END=7882

# Dev mode with bind addresses correctly set
CMD ["livekit-server", "--dev"]
