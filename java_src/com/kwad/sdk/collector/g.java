package com.kwad.sdk.collector;

import android.text.TextUtils;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public static int PERMISSION_DENIED = 2;
    public static int PERMISSION_GRANTED = 1;
    public static int aJf;
    private String aJe;
    private int state;

    public g(String str, int i10) {
        this.aJe = str;
        this.state = i10;
    }

    public static JSONArray C(List<g> list) {
        JSONArray jSONArray = new JSONArray();
        if (list == null) {
            return jSONArray;
        }
        Iterator<g> it2 = list.iterator();
        while (it2.hasNext()) {
            jSONArray.put(it2.next().toJson());
        }
        return jSONArray;
    }

    private String Ib() {
        int iLastIndexOf;
        String str = this.aJe;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return ((str.startsWith("com.android.") || str.startsWith("android.permission")) && (iLastIndexOf = str.lastIndexOf(o0.f49827a)) < str.length() + (-1)) ? str.substring(iLastIndexOf + 1) : str;
    }

    private JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", Ib());
            jSONObject.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, this.state);
        } catch (JSONException e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
        }
        return jSONObject;
    }
}
