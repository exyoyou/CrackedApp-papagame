package org.androidannotations.api.sharedpreferences;

import org.androidannotations.api.sharedpreferences.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<T extends e<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final T f95032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final String f95033b;

    public a(T t10, String str) {
        this.f95032a = t10;
        this.f95033b = str;
    }

    public final T a() {
        this.f95032a.f().remove(this.f95033b);
        return this.f95032a;
    }
}
