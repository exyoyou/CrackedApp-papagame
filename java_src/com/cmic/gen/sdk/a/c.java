package com.cmic.gen.sdk.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.cmic.gen.sdk.e.k;

/* JADX INFO: loaded from: classes9.dex */
public class c implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static c f24256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f24257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f24258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f24259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f24260e;

    private c(Context context) {
        this.f24260e = context;
        b();
    }

    public static c a(Context context) {
        if (f24256a == null) {
            synchronized (c.class) {
                if (f24256a == null) {
                    f24256a = new c(context);
                }
            }
        }
        return f24256a;
    }

    private void b() {
        String strB = k.b("sdk_config_version", "");
        if (TextUtils.isEmpty(strB) || !com.cmic.gen.sdk.auth.c.SDK_VERSION.equals(strB)) {
            b bVarA = b.a(true);
            this.f24259d = bVarA;
            this.f24257b = bVarA.a();
            if (!TextUtils.isEmpty(strB)) {
                c();
            }
        } else {
            b bVarA2 = b.a(false);
            this.f24259d = bVarA2;
            this.f24257b = bVarA2.b();
        }
        this.f24259d.a(this);
        this.f24258c = this.f24259d.a();
    }

    private void c() {
        com.cmic.gen.sdk.e.c.b("UmcConfigManager", "delete localConfig");
        this.f24259d.c();
    }

    public a a() {
        try {
            return this.f24257b.clone();
        } catch (CloneNotSupportedException unused) {
            return this.f24258c;
        }
    }

    @Override // com.cmic.gen.sdk.a.b.a
    public void a(a aVar) {
        this.f24257b = aVar;
    }

    public void a(com.cmic.gen.sdk.a aVar) {
        this.f24259d.a(aVar);
    }
}
