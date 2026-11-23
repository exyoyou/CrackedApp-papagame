package com.nineoldandroids.util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b<T> extends c<T, Integer> {
    public b(String str) {
        super(Integer.class, str);
    }

    @Override // com.nineoldandroids.util.c
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final void e(T t10, Integer num) {
        e(t10, Integer.valueOf(num.intValue()));
    }

    public abstract void g(T t10, int i10);
}
