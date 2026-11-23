package org.aspectj.internal.lang.reflect;

import ad.y;

/* JADX INFO: loaded from: classes4.dex */
public class p implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f95125a;

    public p(String str) {
        this.f95125a = str;
    }

    @Override // ad.y
    public String a() {
        return this.f95125a;
    }

    public String toString() {
        return a();
    }
}
