package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.jni.Engine;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class au {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f74470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f74471b;

    public au(Context context) {
        if (Engine.loadSuccess) {
            try {
                String strPqr = Engine.getInstance(context).pqr(Integer.valueOf(ci.f74600h).intValue(), 0, 200, "");
                if (TextUtils.isEmpty(strPqr)) {
                    return;
                }
                this.f74470a = new JSONObject(strPqr);
            } catch (Throwable unused) {
            }
        }
    }

    public String a(String str) {
        JSONObject jSONObject = this.f74470a;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getString(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public List b(String str) {
        JSONObject jSONObject = this.f74470a;
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.getString(str);
            if (TextUtils.isEmpty(string) || string.length() <= 3) {
                return null;
            }
            String strA = i.a("98bb0a15913e0654348b", "0805");
            JSONArray jSONArray = new JSONArray(string);
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                String string2 = jSONArray.getString(i10);
                if (string2.contains(strA)) {
                    this.f74471b = true;
                } else {
                    arrayList.add(string2);
                }
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public boolean a() {
        return this.f74471b;
    }
}
