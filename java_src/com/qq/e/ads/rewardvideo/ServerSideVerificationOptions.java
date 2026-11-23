package com.qq.e.ads.rewardvideo;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ServerSideVerificationOptions {
    public static final String ACTION = "rewardAction";
    public static final String TRANS_ID = "transId";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f78255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f78256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JSONObject f78257c;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f78258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f78259b;

        public ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }

        public Builder setCustomData(String str) {
            this.f78258a = str;
            return this;
        }

        public Builder setUserId(String str) {
            this.f78259b = str;
            return this;
        }
    }

    private ServerSideVerificationOptions(Builder builder) {
        this.f78257c = new JSONObject();
        this.f78255a = builder.f78258a;
        this.f78256b = builder.f78259b;
    }

    public String getCustomData() {
        return this.f78255a;
    }

    public JSONObject getOptions() {
        return this.f78257c;
    }

    public String getUserId() {
        return this.f78256b;
    }
}
