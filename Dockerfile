FROM node:10.14.1-alpine

LABEL "com.github.actions.name"="ESLint"
LABEL "com.github.actions.description"="Run ESLint on all javascript files in the project."
LABEL "com.github.actions.icon"="circle"
LABEL "com.github.actions.color"="3523ca"

RUN yarn global add eslint

CMD ["eslint", "."]