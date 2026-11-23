package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final T f95034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final SharedPreferences f95035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final String f95036c;

    public b(SharedPreferences sharedPreferences, String str, T t10) {
        this.f95035b = sharedPreferences;
        this.f95036c = str;
        this.f95034a = t10;
    }

    protected final void a(SharedPreferences.Editor editor) {
        m.a(editor);
    }

    protected SharedPreferences.Editor b() {
        return this.f95035b.edit();
    }

    public final boolean c() {
        return this.f95035b.contains(this.f95036c);
    }

    public final T d() {
        return e(this.f95034a);
    }

    public abstract T e(T t10);

    public String f() {
        return this.f95036c;
    }

    public final void g(T t10) {
        if (t10 == null) {
            t10 = this.f95034a;
        }
        h(t10);
    }

    protected abstract void h(T t10);

    public final void i() {
        a(b().remove(this.f95036c));
    }
}
