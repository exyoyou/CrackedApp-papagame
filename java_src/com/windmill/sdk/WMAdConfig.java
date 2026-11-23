package com.windmill.sdk;

/* JADX INFO: loaded from: classes8.dex */
public final class WMAdConfig {
    private WMCustomController customController;
    private Object mTTMediationConfig;

    public static class Builder {
        private WMCustomController customController;

        public WMAdConfig build() {
            WMAdConfig wMAdConfig = new WMAdConfig();
            wMAdConfig.setCustomController(this.customController);
            return wMAdConfig;
        }

        public Builder customController(WMCustomController controller) {
            this.customController = controller;
            return this;
        }
    }

    public WMCustomController getCustomController() {
        return this.customController;
    }

    public void setCustomController(WMCustomController controller) {
        this.customController = controller;
    }

    private WMAdConfig() {
    }
}
