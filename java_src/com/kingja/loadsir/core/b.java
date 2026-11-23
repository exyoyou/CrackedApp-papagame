package com.kingja.loadsir.core;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.kingja.loadsir.callback.Callback;
import com.kingja.loadsir.callback.SuccessCallback;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f73579a = getClass().getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LoadLayout f73580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.kingja.loadsir.core.a<T> f73581c;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f73582b;

        a(Class cls) {
            this.f73582b = cls;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f73582b != null) {
                b.this.f73580b.e(this.f73582b);
            }
        }
    }

    b(com.kingja.loadsir.core.a<T> aVar, LoadLayout loadLayout, c.b bVar) {
        this.f73581c = aVar;
        this.f73580b = loadLayout;
        e(bVar);
    }

    private void e(c.b bVar) {
        List<Callback> listE = bVar.e();
        Class<? extends Callback> clsF = bVar.f();
        if (listE != null && listE.size() > 0) {
            Iterator<Callback> it2 = listE.iterator();
            while (it2.hasNext()) {
                this.f73580b.setupCallback(it2.next());
            }
        }
        new Handler().post(new a(clsF));
    }

    public Class<? extends Callback> b() {
        return this.f73580b.getCurrentCallback();
    }

    public LoadLayout c() {
        return this.f73580b;
    }

    public LinearLayout d(Context context, ViewGroup viewGroup, View view) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setLayoutParams(layoutParams);
        viewGroup.removeView(view);
        linearLayout.addView(view);
        linearLayout.addView(this.f73580b, layoutParams);
        return linearLayout;
    }

    public b<T> f(Class<? extends Callback> cls, d dVar) {
        this.f73580b.setCallBack(cls, dVar);
        return this;
    }

    public void g(Class<? extends Callback> cls) {
        this.f73580b.e(cls);
    }

    public void h() {
        this.f73580b.e(SuccessCallback.class);
    }

    public void i(T t10) {
        com.kingja.loadsir.core.a<T> aVar = this.f73581c;
        if (aVar == null) {
            throw new IllegalArgumentException("You haven't set the Convertor.");
        }
        this.f73580b.e(aVar.map(t10));
    }
}
