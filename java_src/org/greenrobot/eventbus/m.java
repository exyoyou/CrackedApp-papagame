package org.greenrobot.eventbus;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes10.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Method f95305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ThreadMode f95306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Class<?> f95307c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f95308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f95309e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f95310f;

    public m(Method method, Class<?> cls, ThreadMode threadMode, int i10, boolean z10) {
        this.f95305a = method;
        this.f95306b = threadMode;
        this.f95307c = cls;
        this.f95308d = i10;
        this.f95309e = z10;
    }

    private synchronized void a() {
        if (this.f95310f == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append(this.f95305a.getDeclaringClass().getName());
            sb2.append('#');
            sb2.append(this.f95305a.getName());
            sb2.append('(');
            sb2.append(this.f95307c.getName());
            this.f95310f = sb2.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        a();
        m mVar = (m) obj;
        mVar.a();
        return this.f95310f.equals(mVar.f95310f);
    }

    public int hashCode() {
        return this.f95305a.hashCode();
    }
}
