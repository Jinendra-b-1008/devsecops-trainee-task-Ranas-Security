FROM python:3.12-slim
RUN adduser -D appuser
WORKDIR /app
COPY user_name.sh /app/user_name.sh
RUN chmod +x /app/user_name.sh
USER appuser
ENTRYPOINT ["/app/user_name.sh"]
