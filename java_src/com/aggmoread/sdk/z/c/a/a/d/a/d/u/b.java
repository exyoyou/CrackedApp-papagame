package com.aggmoread.sdk.z.c.a.a.d.a.d.u;

import com.aggmoread.sdk.z.c.a.a.d.a.d.q.d;
import com.aggmoread.sdk.z.c.a.a.d.b.e;

/* JADX INFO: loaded from: classes7.dex */
public class b extends d<com.aggmoread.sdk.z.b.b.a.b> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f4757b;

    private b() {
    }

    public static synchronized b c() {
        if (f4757b == null) {
            synchronized (b.class) {
                if (f4757b == null) {
                    f4757b = new b();
                }
            }
        }
        return f4757b;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.q.d
    protected com.aggmoread.sdk.z.a.h.a.EnumC0074a a() {
        return com.aggmoread.sdk.z.a.h.a.EnumC0074a.f3483c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.q.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.aggmoread.sdk.z.b.b.a.b a(e eVar) {
        return new com.aggmoread.sdk.z.b.b.a.b(eVar.f4948d);
    }
}
