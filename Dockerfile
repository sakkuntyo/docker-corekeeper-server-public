FROM "steamcmd/steamcmd:ubuntu-24"

# FactoryServer.sh が root では実行できないため専用ユーザー作成
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# サーバー実行
CMD ""
ENTRYPOINT steamcmd +login anonymous +force_install_dir "/root/corekeeper" +app_update 1963720 validate +quit && rm -rf /var/lib/apt/lists/* && cd "/root/corekeeper" && ./_launch.sh
