package com.beizi.fusion.d.a;

import android.content.Context;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class f10181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f10182c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Method f10183d;

    public k(Context context) {
        this.f10180a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f10181b = cls;
            this.f10182c = cls.newInstance();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            this.f10183d = this.f10181b.getMethod("getOAID", Context.class);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private String a(Context context, Method method) {
        Object obj = this.f10182c;
        if (obj != null && method != null) {
            try {
                return (String) method.invoke(obj, context);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public String a() {
        return a(this.f10180a, this.f10183d);
    }
}
