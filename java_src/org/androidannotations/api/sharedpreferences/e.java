package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import org.androidannotations.api.sharedpreferences.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class e<T extends e<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences.Editor f95037a;

    public e(SharedPreferences sharedPreferences) {
        this.f95037a = sharedPreferences.edit();
    }

    private T c() {
        return this;
    }

    public final void a() {
        m.a(this.f95037a);
    }

    protected c<T> b(String str) {
        return new c<>(c(), str);
    }

    public final T d() {
        this.f95037a.clear();
        return (T) c();
    }

    protected f<T> e(String str) {
        return new f<>(c(), str);
    }

    protected SharedPreferences.Editor f() {
        return this.f95037a;
    }

    protected h<T> g(String str) {
        return new h<>(c(), str);
    }

    protected j<T> h(String str) {
        return new j<>(c(), str);
    }

    protected o<T> i(String str) {
        return new o<>(c(), str);
    }

    protected q<T> j(String str) {
        return new q<>(c(), str);
    }
}
