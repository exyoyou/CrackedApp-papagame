package com.byazt.ete;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13876c;
    public List<String> tt;

    public sp(Map<String, Object> map) {
        this.f13876c = "";
        this.tt = new ArrayList();
        try {
            this.f13876c = (String) map.get("auto_test_param");
            String str = (String) map.get("auto_test_hosts");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            this.tt = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                this.tt.add(jSONArray.optString(i10));
            }
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public String c() {
        return this.f13876c;
    }

    public List<String> tt() {
        return this.tt;
    }
}
