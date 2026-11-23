package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class WebDiskPositionModeBean {
    private WebDiskCfgDownLoadStateBean download_mode;
    private WebDiskCfgSetupModelEnumBean setup_mode;

    public WebDiskCfgDownLoadStateBean getDownload_mode() {
        return this.download_mode;
    }

    public WebDiskCfgSetupModelEnumBean getSetup_mode() {
        return this.setup_mode;
    }

    public void setDownload_mode(WebDiskCfgDownLoadStateBean download_mode) {
        this.download_mode = download_mode;
    }

    public void setSetup_mode(WebDiskCfgSetupModelEnumBean setup_mode) {
        this.setup_mode = setup_mode;
    }
}
