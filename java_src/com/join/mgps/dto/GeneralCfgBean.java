package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GeneralCfgBean implements Serializable {
    private String memberUrl;
    private NormalModeBean normalMode;
    private StrongModeBean strongMode;

    public static class NormalModeBean implements Serializable {
        private String subTitle;
        private String title;

        public String getSubTitle() {
            return this.subTitle;
        }

        public String getTitle() {
            return this.title;
        }

        public void setSubTitle(String subTitle) {
            this.subTitle = subTitle;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static class StrongModeBean implements Serializable {
        private String subTitle;
        private String title;

        public String getSubTitle() {
            return this.subTitle;
        }

        public String getTitle() {
            return this.title;
        }

        public void setSubTitle(String subTitle) {
            this.subTitle = subTitle;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public String getMemberUrl() {
        return this.memberUrl;
    }

    public NormalModeBean getNormalMode() {
        return this.normalMode;
    }

    public StrongModeBean getStrongMode() {
        return this.strongMode;
    }

    public void setMemberUrl(String memberUrl) {
        this.memberUrl = memberUrl;
    }

    public void setNormalMode(NormalModeBean normalMode) {
        this.normalMode = normalMode;
    }

    public void setStrongMode(StrongModeBean strongMode) {
        this.strongMode = strongMode;
    }
}
