package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CheckGameVersionResponseData {
    private List<VersionInfo> gameList;

    public static class VersionInfo extends AppBean {
        private CommonGameInfoBean ad_info;
        private int game_upgrade_state;
        private String packageName;
        private long resource_size;
        private String resource_url_remote;

        public CommonGameInfoBean getAd_info() {
            return this.ad_info;
        }

        public int getGame_upgrade_state() {
            return this.game_upgrade_state;
        }

        @Override // com.join.mgps.dto.AppBean, com.join.kotlin.base.impl.GInfo
        public String getPackageName() {
            return this.packageName;
        }

        public long getResource_size() {
            return this.resource_size;
        }

        public String getResource_url_remote() {
            return this.resource_url_remote;
        }

        public void setAd_info(CommonGameInfoBean ad_info) {
            this.ad_info = ad_info;
        }

        public void setGame_upgrade_state(int game_upgrade_state) {
            this.game_upgrade_state = game_upgrade_state;
        }

        @Override // com.join.mgps.dto.AppBean
        public void setPackageName(String packageName) {
            this.packageName = packageName;
        }

        public void setResource_size(long resource_size) {
            this.resource_size = resource_size;
        }

        public void setResource_url_remote(String resource_url_remote) {
            this.resource_url_remote = resource_url_remote;
        }
    }

    public List<VersionInfo> getGameList() {
        return this.gameList;
    }

    public void setGameList(List<VersionInfo> gameList) {
        this.gameList = gameList;
    }
}
