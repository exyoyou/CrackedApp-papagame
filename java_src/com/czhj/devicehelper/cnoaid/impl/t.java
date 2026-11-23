package com.czhj.devicehelper.cnoaid.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes9.dex */
class t implements com.czhj.devicehelper.cnoaid.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f25341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class<?> f25342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f25343c;

    @SuppressLint({"PrivateApi"})
    public t(Context context) {
        this.f25341a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f25342b = cls;
            this.f25343c = cls.newInstance();
        } catch (Exception e10) {
            com.czhj.devicehelper.cnoaid.g.a(e10);
        }
    }

    private String b() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return (String) this.f25342b.getMethod("getOAID", Context.class).invoke(this.f25343c, this.f25341a);
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f25341a == null || cVar == null) {
            return;
        }
        if (this.f25342b == null || this.f25343c == null) {
            cVar.a(new com.czhj.devicehelper.cnoaid.f("Xiaomi IdProvider not exists"));
            return;
        }
        try {
            String strB = b();
            if (strB == null || strB.length() == 0) {
                throw new com.czhj.devicehelper.cnoaid.f("OAID query failed");
            }
            com.czhj.devicehelper.cnoaid.g.a("OAID query success: " + strB);
            cVar.a(strB);
        } catch (Exception e10) {
            com.czhj.devicehelper.cnoaid.g.a(e10);
            cVar.a(e10);
        }
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        return this.f25343c != null;
    }
}
