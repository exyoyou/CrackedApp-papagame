package com.beizi.fusion.sm.b.a;

import android.annotation.SuppressLint;
import android.content.Context;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes6.dex */
class q implements com.beizi.fusion.sm.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class<?> f10316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f10317c;

    @SuppressLint({"PrivateApi"})
    public q(Context context) {
        this.f10315a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f10316b = cls;
            this.f10317c = cls.newInstance();
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
        }
    }

    private String b() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        return (String) this.f10316b.getMethod("getOAID", Context.class).invoke(this.f10317c, this.f10315a);
    }

    @Override // com.beizi.fusion.sm.b.c
    public boolean a() {
        return this.f10317c != null;
    }

    @Override // com.beizi.fusion.sm.b.c
    public void a(com.beizi.fusion.sm.b.b bVar) {
        if (this.f10315a == null || bVar == null) {
            return;
        }
        if (this.f10316b == null || this.f10317c == null) {
            bVar.a(new com.beizi.fusion.sm.b.d("Xiaomi IdProvider not exists"));
            return;
        }
        try {
            String strB = b();
            if (strB == null || strB.length() == 0) {
                throw new com.beizi.fusion.sm.b.d("OAID query failed");
            }
            com.beizi.fusion.sm.b.e.a("OAID query success: " + strB);
            bVar.a(strB);
        } catch (Exception e10) {
            com.beizi.fusion.sm.b.e.a(e10);
            bVar.a(e10);
        }
    }
}
