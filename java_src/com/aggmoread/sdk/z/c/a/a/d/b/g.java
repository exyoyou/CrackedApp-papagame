package com.aggmoread.sdk.z.c.a.a.d.b;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<String> f5057b = new ArrayList();

    private g(String str) {
        this.f5056a = str;
    }

    private String a() {
        if (this.f5057b.size() == 1) {
            return this.f5057b.get(0);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it2 = this.f5057b.iterator();
        while (it2.hasNext()) {
            try {
                jSONArray.put(it2.next());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    public static g b(String str) {
        return new g(str);
    }

    public void c() {
        if (this.f5057b.size() > 0) {
            boolean z10 = this.f5057b.size() > 1;
            com.aggmoread.sdk.z.c.a.a.e.e.b("AMHTTAG", this.f5056a + ", batchReport " + z10);
            new m().a(a(), z10);
        }
    }

    public void a(m mVar) {
        if (mVar != null) {
            a(com.aggmoread.sdk.z.c.a.a.b.d(mVar.f5153a.f5230a));
        }
    }

    public void b() {
        this.f5057b.clear();
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f5057b.add(str);
    }
}
