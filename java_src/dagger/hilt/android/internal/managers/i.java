package dagger.hilt.android.internal.managers;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.EntryPoint;
import dagger.hilt.InstallIn;

/* JADX INFO: loaded from: classes8.dex */
public class i implements jb.b<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f90802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f90803c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Fragment f90804d;

    @EntryPoint
    @InstallIn({eb.a.class})
    public interface a {
        gb.c c();
    }

    public i(Fragment fragment) {
        this.f90804d = fragment;
    }

    private Object a() {
        jb.d.c(this.f90804d.getHost(), "Hilt Fragments must be attached before creating the component.");
        jb.d.d(this.f90804d.getHost() instanceof jb.b, "Hilt Fragments must be attached to an @AndroidEntryPoint Activity. Found: %s", this.f90804d.getHost().getClass());
        f(this.f90804d);
        return ((a) dagger.hilt.a.a(this.f90804d.getHost(), a.class)).c().a(this.f90804d).build();
    }

    public static ContextWrapper b(Context base, Fragment fragment) {
        return new p.a(base, fragment);
    }

    public static ContextWrapper c(LayoutInflater baseInflater, Fragment fragment) {
        return new p.a(baseInflater, fragment);
    }

    public static final Context d(Context context) {
        while ((context instanceof ContextWrapper) && !(context instanceof Activity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        return context;
    }

    public static final void e(Fragment fragment) {
        jb.d.b(fragment);
        if (fragment.getArguments() == null) {
            fragment.setArguments(new Bundle());
        }
    }

    protected void f(Fragment fragment) {
    }

    @Override // jb.b
    public Object generatedComponent() {
        if (this.f90802b == null) {
            synchronized (this.f90803c) {
                if (this.f90802b == null) {
                    this.f90802b = a();
                }
            }
        }
        return this.f90802b;
    }
}
