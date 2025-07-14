FROM "steamcmd/steamcmd:ubuntu-24"

# corekeeper 初回起動時に タイムゾーンを選択させられることを回避
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# サーバー実行
CMD ""
ENTRYPOINT steamcmd +login anonymous +force_install_dir "/root/corekeeper" +app_update 1963720 validate +quit && cd "/root/corekeeper" && ./_launch.sh
