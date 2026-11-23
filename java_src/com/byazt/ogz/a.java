package com.byazt.ogz;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1190, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17775c = false;
    public boolean tt = true;

    public static a c(String str) {
        a aVar = new a();
        if (TextUtils.isEmpty(str)) {
            return aVar;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            aVar.f17775c = jSONObject.optBoolean("encrypt", false);
            aVar.tt = jSONObject.optBoolean("wait_io", true);
        } catch (Throwable unused) {
        }
        return aVar;
    }

    @NonNull
    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("encrypt", this.f17775c);
            jSONObject.put("wait_io", this.tt);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
