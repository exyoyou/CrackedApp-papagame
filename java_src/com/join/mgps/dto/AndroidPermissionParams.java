package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class AndroidPermissionParams implements Serializable {
    private String cancelText;
    private String confirmText;
    private String content;
    private boolean isSingleBtn;

    public AndroidPermissionParams(String content) {
        this(content, "", "", false);
    }

    public String getCancelText() {
        return this.cancelText;
    }

    public String getConfirmText() {
        return this.confirmText;
    }

    public String getContent() {
        return this.content;
    }

    public boolean isSingleBtn() {
        return this.isSingleBtn;
    }

    public void setCancelText(String cancelText) {
        this.cancelText = cancelText;
    }

    public void setConfirmText(String confirmText) {
        this.confirmText = confirmText;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setSingleBtn(boolean singleBtn) {
        this.isSingleBtn = singleBtn;
    }

    public AndroidPermissionParams(String content, String cancelText, String confirmText, boolean isSingleBtn) {
        this.content = content;
        this.cancelText = cancelText;
        this.confirmText = confirmText;
        this.isSingleBtn = isSingleBtn;
    }
}
