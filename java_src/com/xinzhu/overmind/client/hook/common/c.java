package com.xinzhu.overmind.client.hook.common;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class c extends com.xinzhu.overmind.client.hook.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f89287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f89288b;

    public c(String str, Object obj) {
        this.f89287a = obj;
        this.f89288b = str;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    protected String c() {
        return this.f89288b;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
        return this.f89287a;
    }
}
