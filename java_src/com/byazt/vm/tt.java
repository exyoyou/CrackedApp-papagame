package com.byazt.vm;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 13})
public abstract class tt<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile T f21256c;

    public abstract T c(Object... objArr);

    public final T tt(Object... objArr) {
        if (this.f21256c == null) {
            synchronized (this) {
                if (this.f21256c == null) {
                    this.f21256c = c(objArr);
                }
            }
        }
        return this.f21256c;
    }
}
