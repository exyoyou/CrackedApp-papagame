package com.sigmob.windad;

import com.sigmob.sdk.base.utils.t;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class WindAdOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f82159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f82160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<String, String> f82161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WindCustomController f82162d;

    public WindAdOptions(String appId, String appKey) {
        if (t.b(appId)) {
            this.f82159a = appId.trim();
        }
        this.f82160b = appKey;
    }

    public String getAppId() {
        return this.f82159a;
    }

    public String getAppKey() {
        return this.f82160b;
    }

    public WindCustomController getCustomController() {
        return this.f82162d;
    }

    public HashMap<String, String> getExtData() {
        return this.f82161c;
    }

    public WindAdOptions setCustomController(WindCustomController customController) {
        this.f82162d = customController;
        return this;
    }

    public WindAdOptions setExtData(HashMap<String, String> extData) {
        this.f82161c = extData;
        return this;
    }
}
