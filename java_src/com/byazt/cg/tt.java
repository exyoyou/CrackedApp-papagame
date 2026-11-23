package com.byazt.cg;

import com.byazt.dna.or;
import com.byazt.nr.m;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 549, 13})
public class tt implements or {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f12411a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Class f12412c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Method f12413n;
    public Method tt;
    public Method uj;
    public Method ve;

    public tt() {
        try {
            Class<?> clsLoadClass = getClass().getClassLoader().loadClass("android.os.SystemProperties");
            this.f12412c = clsLoadClass;
            Method declaredMethod = clsLoadClass.getDeclaredMethod("get", String.class);
            this.tt = declaredMethod;
            declaredMethod.setAccessible(true);
            this.f12411a = true;
        } catch (Exception unused) {
            this.f12412c = null;
            this.f12411a = false;
        }
    }

    private Method c(String str, Class<?>... clsArr) {
        try {
            Method declaredMethod = this.f12412c.getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.byazt.dna.or
    public String get(String str) {
        return (String) c(this.tt, str);
    }

    @Override // com.byazt.dna.or
    public boolean getBoolean(String str) {
        if (this.f12413n == null) {
            this.f12413n = c("getBoolean", String.class, Boolean.TYPE);
        }
        Boolean bool = (Boolean) c(this.f12413n, str);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @Override // com.byazt.dna.or
    public int getInt(String str) {
        if (this.ve == null) {
            this.ve = c("getInt", String.class, Integer.TYPE);
        }
        Integer num = (Integer) c(this.ve, str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // com.byazt.dna.or
    public long getLong(String str) {
        if (this.uj == null) {
            this.uj = c("getLong", String.class, Long.TYPE);
        }
        Long l10 = (Long) c(this.uj, str);
        if (l10 != null) {
            return l10.longValue();
        }
        return 0L;
    }

    @Override // com.byazt.dna.or
    public void set(String str, String str2) {
    }

    private <T> T c(Method method, String str) {
        if (method == null) {
            return null;
        }
        try {
            return (T) method.invoke(this.f12412c, str);
        } catch (Exception e10) {
            m.tt("SystemPropRefect", "invoke failed", e10);
            return null;
        }
    }

    public boolean c() {
        return this.f12411a;
    }
}
