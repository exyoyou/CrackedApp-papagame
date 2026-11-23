package com.byazt.yih;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 730, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f22271c;

    public ve(JSONObject jSONObject) {
        this.f22271c = jSONObject;
    }

    public int a() {
        JSONObject jSONObject = this.f22271c;
        if (jSONObject == null) {
            return 1;
        }
        return jSONObject.optInt("max_notification", 1);
    }

    public boolean c() {
        JSONObject jSONObject = this.f22271c;
        return jSONObject == null || jSONObject.optInt("enable_install_notification", 1) == 1;
    }

    public long n() {
        JSONObject jSONObject = this.f22271c;
        if (jSONObject == null) {
            return 1800L;
        }
        return jSONObject.optLong("notification_internal", 1800L);
    }

    public int sp() {
        JSONObject jSONObject = this.f22271c;
        if (jSONObject == null) {
            return 1;
        }
        return jSONObject.optInt("max_interface", 1);
    }

    public boolean tt() {
        JSONObject jSONObject = this.f22271c;
        return jSONObject == null || jSONObject.optInt("enable_active_notification", 1) == 1;
    }

    public long uj() {
        JSONObject jSONObject = this.f22271c;
        if (jSONObject == null) {
            return 300L;
        }
        return jSONObject.optLong("uninstall_delay", 300L);
    }

    public boolean ve() {
        JSONObject jSONObject = this.f22271c;
        return jSONObject != null && jSONObject.optInt("enable_install_interface", 0) == 1;
    }
}
