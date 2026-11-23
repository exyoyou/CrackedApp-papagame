package com.byazt.whk;

import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 908, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f21567c;

    public sp(JSONObject jSONObject) {
        this.f21567c = jSONObject;
    }

    public int c() {
        JSONObject jSONObject = this.f21567c;
        if (jSONObject != null) {
            return jSONObject.optInt("code", -1);
        }
        return -1;
    }

    @NonNull
    public String toString() {
        JSONObject jSONObject = this.f21567c;
        return jSONObject != null ? jSONObject.toString() : "pitaya error is null";
    }
}
