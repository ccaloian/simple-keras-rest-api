eksctl create cluster \
    --name udacity-devops \
    --region us-west-2 \
    --with-oidc \
    --ssh-access \
    --ssh-public-key ~/.ssh/udacity.pub \
    --managed
    