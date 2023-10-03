FROM jenkins/jenkins:2.345
RUN jenkins-plugin-cli --verbose --latest true --plugins \
  popper2-api:latest \
  parameter-separator:latest \
  multiple-scms:latest \
  cloudbees-folder:latest \
  durable-task:latest \
  plain-credentials:latest \
  pipeline-stage-view:latest \
  mask-passwords:latest \
  metrics:latest \
  strict-crumb-issuer:latest \
  build-view-column:latest \
  pipeline-utility-steps:latest \
  sonar:latest \
  bouncycastle-api:latest \
  kubernetes-credentials:latest \
  workflow-job:latest \
  config-file-provider:latest \
  job-dsl:latest \
  pipeline-model-api:latest \
  workflow-step-api:latest \
  configuration-as-code-support:latest \
  kubernetes-client-api:latest \
  workflow-aggregator:latest \
  ldap:latest \
  docker-commons:latest \
  authentication-tokens:latest \
  configuration-as-code:latest \
  pipeline-model-extensions:latest \
  pipeline-stage-tags-metadata:latest \
  plugin-util-api:latest \
  build-user-vars-plugin:latest \
  echarts-api:latest \
  workflow-multibranch:latest \
  aws-java-sdk:latest \
  apache-httpcomponents-client-4-api:latest \
  ssh-credentials:latest \
  matrix-project:latest \
  bootstrap4-api:latest \
  variant:latest \
  lockable-resources:latest \
  workflow-support:latest \
  branch-api:latest \
  display-url-api:latest \
  amazon-ecr:latest \
  popper-api:latest \
  momentjs:latest \
  bitbucket:latest \
  ace-editor:latest \
  saml:latest \
  workflow-durable-task-step:latest \
  workflow-cps-global-lib:latest \
  pipeline-stage-step:latest \
  token-macro:latest \
  docker-workflow:latest \
  audit-trail:latest \
  git-client:latest \
  git-server:latest \
  bitbucket-build-status-notifier:latest \
  jsch:latest \
  checks-api:latest \
  scriptler:latest \
  kubernetes:latest \
  structs:latest \
  caffeine-api:latest \
  pipeline-rest-api:latest \
  git:latest \
  matrix-auth:latest \
  mercurial:latest \
  configuration-as-code-secret-ssm:latest \
  handlebars:latest \
  antisamy-markup-formatter:latest \
  jdk-tool:latest \
  workflow-scm-step:latest \
  pipeline-milestone-step:latest \
  snakeyaml-api:latest \
  pipeline-build-step:latest \
  pipeline-input-step:latest \
  trilead-api:latest \
  font-awesome-api:latest \
  workflow-api:latest \
  jackson2-api:latest \
  extra-columns:latest \
  sshd:latest \
  uno-choice:latest \
  hidden-parameter:latest \
  ansicolor:latest \
  script-security:latest \
  jquery3-api:latest \
  mailer:latest \
  generic-webhook-trigger:latest \
  bitbucket-push-and-pull-request:latest \
  scm-api:latest \
  pipeline-model-definition:latest \
  junit:latest \
  bootstrap5-api:latest \
  email-ext:latest \
  aws-credentials:latest \
  jira:latest \
  pipeline-graph-analysis:latest \
  workflow-basic-steps:latest \
  windows-slaves:latest \
  credentials-binding:latest \
  slack:latest \
  command-launcher:latest \
  credentials:latest \
  workflow-cps:latest \
  hubot-steps:latest \
  ansible:latest \
  pipeline-aws:latest \
  jquery:latest \
  extended-choice-parameter:latest
