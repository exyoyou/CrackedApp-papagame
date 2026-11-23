package com.facebook.common.memory;

/* JADX INFO: loaded from: classes9.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f26887a;

    public static synchronized d c() {
        if (f26887a == null) {
            f26887a = new d();
        }
        return f26887a;
    }

    @Override // com.facebook.common.memory.c
    public void a(b trimmable) {
    }

    @Override // com.facebook.common.memory.c
    public void b(b trimmable) {
    }
}
