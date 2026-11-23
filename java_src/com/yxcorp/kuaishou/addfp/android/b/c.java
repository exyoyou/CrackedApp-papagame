package com.yxcorp.kuaishou.addfp.android.b;

import android.text.TextUtils;
import com.haima.hmcp.beans.HmInputMappingContent;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f90325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f90326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f90327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f90328d;

    c(String str) {
        this.f90325a = true;
        if (TextUtils.isEmpty(str)) {
            this.f90325a = false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f90326b = jSONObject.optInt("errorCode", 2);
            this.f90327c = jSONObject.optBoolean("userSet", true);
            this.f90328d = jSONObject.optString(HmInputMappingContent.FIELD_VALUE, "KWE_OTHER");
        } catch (JSONException e10) {
            this.f90325a = false;
            e10.printStackTrace();
        }
    }

    public String a(boolean z10) {
        if (!this.f90325a) {
            return "KWE_OTHER";
        }
        if (z10 != this.f90327c) {
            return "KWE_NPN";
        }
        int i10 = this.f90326b;
        if (i10 == 0) {
            return !TextUtils.isEmpty(this.f90328d) ? this.f90328d : "KWE_N";
        }
        if (i10 == 1) {
            return "KWE_PN";
        }
        if (i10 == 2) {
            return "KWE_PE";
        }
        if (i10 != 3) {
            return i10 != 4 ? "KWE_OTHER" : "KWE_NS";
        }
        return "KWE_N";
    }
}
