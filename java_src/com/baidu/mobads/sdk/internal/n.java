package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.CpuChannelResponse;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7917b;

    public static List<CpuChannelResponse> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                try {
                    n nVarA = a(jSONArray.getJSONObject(i10));
                    if (nVarA != null) {
                        arrayList.add(new CpuChannelResponse(nVarA));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    public String b() {
        return this.f7917b;
    }

    private static n a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("id", -1);
        String strOptString = jSONObject.optString("name", "");
        if (iOptInt == -1 || TextUtils.isEmpty(strOptString)) {
            return null;
        }
        n nVar = new n();
        nVar.f7916a = iOptInt;
        nVar.f7917b = strOptString;
        return nVar;
    }

    public int a() {
        return this.f7916a;
    }
}
