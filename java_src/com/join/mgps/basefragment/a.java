package com.join.mgps.basefragment;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.fragment.e;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a extends e implements LoadingLayout.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected LoadingLayout f64133c;

    /* JADX INFO: renamed from: com.join.mgps.basefragment.a$a, reason: collision with other inner class name */
    class RunnableC0704a implements Runnable {
        RunnableC0704a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = a.this.f64133c;
            if (loadingLayout != null) {
                loadingLayout.h();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = a.this.f64133c;
            if (loadingLayout != null) {
                loadingLayout.d();
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = a.this.f64133c;
            if (loadingLayout != null) {
                loadingLayout.i();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = a.this.f64133c;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    protected void O(View mView) {
        this.f64133c = (LoadingLayout) LayoutInflater.from(getContext()).inflate(R.layout.layout_papa_loading, (ViewGroup) null);
        int iQ = Q();
        if (iQ > 0) {
            this.f64133c.c(mView, iQ);
            this.f64133c.setRefreshCallBackListener(this);
            this.f64133c.setLoadingLayoutMarginTop(R());
        }
    }

    protected abstract int P();

    protected abstract int Q();

    protected int R() {
        return 0;
    }

    protected void S() {
        new Handler(Looper.getMainLooper()).post(new b());
    }

    protected void U(String loadingFailMsg) {
        this.f64133c.setFailedMessage(loadingFailMsg);
    }

    protected void V() {
        new Handler(Looper.getMainLooper()).post(new d());
    }

    protected void W() {
        new Handler(Looper.getMainLooper()).post(new RunnableC0704a());
    }

    protected void X() {
        new Handler(Looper.getMainLooper()).post(new c());
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        W();
        loadData();
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    protected abstract void loadData();

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View viewInflate = inflater.inflate(P(), container, false);
        O(viewInflate);
        Object parent = viewInflate.getParent();
        return parent == null ? viewInflate : (View) parent;
    }
}
