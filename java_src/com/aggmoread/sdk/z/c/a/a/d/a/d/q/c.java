package com.aggmoread.sdk.z.c.a.a.d.a.d.q;

import com.aggmoread.sdk.z.c.a.a.d.b.e;

/* JADX INFO: loaded from: classes7.dex */
public class c extends d<com.aggmoread.sdk.z.a.h.c.b> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f4549b;

    private c() {
    }

    public static synchronized c c() {
        if (f4549b == null) {
            synchronized (c.class) {
                if (f4549b == null) {
                    f4549b = new c();
                }
            }
        }
        return f4549b;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.q.d
    protected com.aggmoread.sdk.z.a.h.a.EnumC0074a a() {
        return com.aggmoread.sdk.z.a.h.a.EnumC0074a.f3482b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.q.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.aggmoread.sdk.z.a.h.c.b a(e eVar) {
        return new com.aggmoread.sdk.z.a.h.c.b(eVar.f4948d);
    }
}
