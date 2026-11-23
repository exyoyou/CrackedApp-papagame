package org.aspectj.runtime.reflect;

import ad.z;

/* JADX INFO: loaded from: classes4.dex */
class m implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Class f95223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f95224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f95225c;

    m(Class cls, String str, int i10) {
        this.f95223a = cls;
        this.f95224b = str;
        this.f95225c = i10;
    }

    @Override // ad.z
    public int a() {
        return this.f95225c;
    }

    @Override // ad.z
    public int b() {
        return -1;
    }

    @Override // ad.z
    public Class c() {
        return this.f95223a;
    }

    @Override // ad.z
    public String getFileName() {
        return this.f95224b;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getFileName());
        stringBuffer.append(":");
        stringBuffer.append(a());
        return stringBuffer.toString();
    }
}
