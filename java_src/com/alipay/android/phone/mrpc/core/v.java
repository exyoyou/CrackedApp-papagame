package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes7.dex */
public final class v extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f6963a;

    public v(Context context) {
        this.f6963a = context;
    }

    @Override // com.alipay.android.phone.mrpc.core.g
    public final <T> T a(Class<T> cls, l lVar) {
        h hVar = new h(new w(this, lVar));
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new i(hVar.f6930a, cls, hVar.f6931b));
    }
}
