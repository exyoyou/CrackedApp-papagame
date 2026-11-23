package com.kuaishou.weapon.p0;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class k<T> implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f74793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f74794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f74795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f74796d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f74797e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f74798f;

    public k(Context context, String str, String str2, String str3, JSONObject jSONObject, j jVar) {
        this.f74796d = context;
        this.f74793a = str3;
        this.f74794b = jSONObject;
        this.f74795c = jVar;
        this.f74797e = str;
        this.f74798f = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            l lVarA = l.a(this.f74796d);
            m mVar = new m(this.f74793a, this.f74794b);
            mVar.a(this.f74797e);
            mVar.b(this.f74798f);
            lVarA.b(mVar, new j() { // from class: com.kuaishou.weapon.p0.k.1
                @Override // com.kuaishou.weapon.p0.j
                public void a(String str) {
                    e.c("WeaponHttpTask sendLog response: --- " + str);
                    if (k.this.f74795c != null) {
                        k.this.f74795c.a(str);
                    }
                }

                @Override // com.kuaishou.weapon.p0.j
                public void b(String str) {
                    e.c("WeaponHttpTask sendLog errorMsg: --- " + str);
                    if (k.this.f74795c != null) {
                        k.this.f74795c.b(str);
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }
}
