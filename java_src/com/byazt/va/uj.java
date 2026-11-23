package com.byazt.va;

import android.text.TextUtils;
import com.byazt.gqp.t;
import com.byazt.gqp.yp;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 116, 15})
public abstract class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, Object> f21138c;
    public Object tt;
    public t ve;
    public String uj = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Map<String, String> f21139n = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f21137a = null;
    public boolean sp = false;

    public uj(t tVar) {
        this.ve = tVar;
        tt(UUID.randomUUID().toString());
    }

    public abstract com.byazt.hm.tt c();

    public void c(String str) {
        this.f21137a = str;
    }

    public void n(Map<String, Object> map) {
        this.f21138c = map;
    }

    public void tt(String str, String str2) {
        this.f21139n.put(str, str2);
    }

    public void uj(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f21139n.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public Map<String, Object> ve() {
        return this.f21138c;
    }

    public void c(yp.c cVar) {
        if (cVar != null && this.f21139n.size() > 0) {
            for (Map.Entry<String, String> entry : this.f21139n.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    String value = entry.getValue();
                    if (value == null) {
                        value = "";
                    }
                    cVar.tt(key, value);
                }
            }
        }
    }

    public void tt(String str) {
        this.uj = str;
    }

    public String tt() {
        return this.uj;
    }

    public Object uj() {
        return this.tt;
    }

    public void c(boolean z10) {
        this.sp = z10;
    }
}
