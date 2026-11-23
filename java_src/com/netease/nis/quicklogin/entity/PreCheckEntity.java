package com.netease.nis.quicklogin.entity;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PreCheckEntity {
    public int code;
    public String data;
    public JSONObject extData;
    public String msg;

    public static class Data {
        public String appId;
        public String appKey;
        public int openCache;
        public int ot;
        public String token;
        public UiElement uiElement;
        public String url;
    }

    public static class UiElement {
        public String privacyName;
        public String privacyUrl;
        public String slogan;
    }
}
