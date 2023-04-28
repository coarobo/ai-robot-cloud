cd docker
docker login -u "gitlab+deploy-token-1977716" -p "SCh-JaCU2cdHoaQ6_YHY" registry.gitlab.com/coarobo/workspaces/ai-robot-book/ai-robot-desktop
docker build ./ \
--build-arg http_proxy=${http_proxy} \
--build-arg https_proxy=${https_proxy} \
--build-arg HTTP_PROXY=${HTTP_PROXY} \
--build-arg HTTPS_PROXY=${HTTPS_PROXY} \
-t registry.gitlab.com/coarobo/workspaces/ai-robot-book/ai-robot-cloud