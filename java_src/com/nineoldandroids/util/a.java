package com.nineoldandroids.util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> extends c<T, Float> {
    public a(String str) {
        super(Float.class, str);
    }

    @Override // com.nineoldandroids.util.c
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final void e(T t10, Float f10) {
        g(t10, f10.floatValue());
    }

    public abstract void g(T t10, float f10);
}
