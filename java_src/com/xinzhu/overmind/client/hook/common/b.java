package com.xinzhu.overmind.client.hook.common;

import java.lang.reflect.Method;
import sa.u;

/* JADX INFO: loaded from: classes8.dex */
public class b extends com.xinzhu.overmind.client.hook.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f89286a;

    public b(String str) {
        this.f89286a = str;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    protected String c() {
        return this.f89286a;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
        return u.a(method.getReturnType());
    }
}
