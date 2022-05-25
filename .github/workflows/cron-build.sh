name: Trigger Site Rebuild on a CRON Schedule

on:
  schedule:
    - cron: '*/5 * * * *'

jobs:
  build:
    name: Trigger Site Rebuild
    runs-on: ubuntu-latest
    steps:
      - name: pwd
        run: pwd
      - name: ls
        run: ls
      - name: export
        run: export
