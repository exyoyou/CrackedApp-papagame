package com.kingja.loadsir.core;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.kingja.loadsir.callback.Callback;
import com.kingja.loadsir.callback.SuccessCallback;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class LoadLayout extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f73570h = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f73571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<Class<? extends Callback>, Callback> f73572c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f73573d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Callback.OnReloadListener f73574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Class<? extends Callback> f73575f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Class<? extends Callback> f73576g;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f73577b;

        a(Class cls) {
            this.f73577b = cls;
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadLayout.this.f(this.f73577b);
        }
    }

    public LoadLayout(@NonNull Context context) {
        super(context);
        this.f73571b = getClass().getSimpleName();
        this.f73572c = new HashMap();
    }

    private void c(Class<? extends Callback> cls) {
        if (!this.f73572c.containsKey(cls)) {
            throw new IllegalArgumentException(String.format("The Callback (%s) is nonexistent.", cls.getSimpleName()));
        }
    }

    private void d(Class<? extends Callback> cls) {
        post(new a(cls));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Class<? extends Callback> cls) {
        Class<? extends Callback> cls2 = this.f73575f;
        if (cls2 != null) {
            if (cls2 == cls) {
                return;
            } else {
                this.f73572c.get(cls2).onDetach();
            }
        }
        if (getChildCount() > 1) {
            removeViewAt(1);
        }
        for (Class<? extends Callback> cls3 : this.f73572c.keySet()) {
            if (cls3 == cls) {
                SuccessCallback successCallback = (SuccessCallback) this.f73572c.get(SuccessCallback.class);
                if (cls3 == SuccessCallback.class) {
                    successCallback.show();
                } else {
                    successCallback.showWithCallback(this.f73572c.get(cls3).getSuccessVisible());
                    View rootView = this.f73572c.get(cls3).getRootView();
                    addView(rootView);
                    this.f73572c.get(cls3).onAttach(this.f73573d, rootView);
                }
                this.f73575f = cls;
            }
        }
        this.f73576g = cls;
    }

    public void b(Callback callback) {
        if (this.f73572c.containsKey(callback.getClass())) {
            return;
        }
        this.f73572c.put((Class<? extends Callback>) callback.getClass(), callback);
    }

    public void e(Class<? extends Callback> cls) {
        c(cls);
        if (i7.b.b()) {
            f(cls);
        } else {
            d(cls);
        }
    }

    public Class<? extends Callback> getCurrentCallback() {
        return this.f73576g;
    }

    public void setCallBack(Class<? extends Callback> cls, d dVar) {
        if (dVar == null) {
            return;
        }
        c(cls);
        dVar.a(this.f73573d, this.f73572c.get(cls).obtainRootView());
    }

    public void setupCallback(Callback callback) {
        Callback callbackCopy = callback.copy();
        callbackCopy.setCallback(this.f73573d, this.f73574e);
        b(callbackCopy);
    }

    public void setupSuccessLayout(Callback callback) {
        b(callback);
        View rootView = callback.getRootView();
        rootView.setVisibility(4);
        addView(rootView, new ViewGroup.LayoutParams(-1, -1));
        this.f73576g = SuccessCallback.class;
    }

    public LoadLayout(@NonNull Context context, Callback.OnReloadListener onReloadListener) {
        this(context);
        this.f73573d = context;
        this.f73574e = onReloadListener;
    }
}
