apt update -y && apt ugrade -y
apt install -y docker docker-compose

bash <(curl -sSL https://raw.githubusercontent.com/hamid-gh98/x-ui-scripts/main/install_warp_proxy.sh)

docker-compose up -d

openssl req -x509 -newkey rsa:4096 -nodes -sha256 -keyout private.key -out public.key -days 3650 -subj "/CN=APP"
docker cp private.key 3x-ui:private.key
docker cp public.key 3x-ui:public.key
