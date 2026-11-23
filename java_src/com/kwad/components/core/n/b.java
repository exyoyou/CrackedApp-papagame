package com.kwad.components.core.n;

import androidx.annotation.CallSuper;
import com.kwad.components.core.n.a;
import com.kwad.components.core.proxy.f;
import com.kwad.sdk.mvp.Presenter;
import com.kwad.sdk.service.ServiceProvider;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b<T extends a> extends f {
    public T mCallerContext;
    protected Presenter mPresenter;

    private void notifyOnCreate() {
        T t10 = this.mCallerContext;
        if (t10 == null) {
            return;
        }
        Iterator<com.kwad.components.core.n.a.a> it2 = t10.abk.iterator();
        while (it2.hasNext()) {
            it2.next().hk();
        }
    }

    private void notifyOnDestroy() {
        T t10 = this.mCallerContext;
        if (t10 == null) {
            return;
        }
        Iterator<com.kwad.components.core.n.a.a> it2 = t10.abk.iterator();
        while (it2.hasNext()) {
            it2.next().hl();
        }
    }

    private void notifyOnPause() {
        T t10 = this.mCallerContext;
        if (t10 == null) {
            return;
        }
        Iterator<com.kwad.components.core.n.a.a> it2 = t10.abk.iterator();
        while (it2.hasNext()) {
            it2.next().d(this);
        }
    }

    private void notifyOnResume() {
        T t10 = this.mCallerContext;
        if (t10 == null) {
            return;
        }
        Iterator<com.kwad.components.core.n.a.a> it2 = t10.abk.iterator();
        while (it2.hasNext()) {
            it2.next().c(this);
        }
    }

    public void initMVP() {
        this.mCallerContext = (T) onCreateCallerContext();
        if (this.mPresenter == null) {
            Presenter presenterOnCreatePresenter = onCreatePresenter();
            this.mPresenter = presenterOnCreatePresenter;
            presenterOnCreatePresenter.N(this.mRootView);
        }
        this.mPresenter.q(this.mCallerContext);
    }

    @Override // com.kwad.components.core.proxy.f
    @CallSuper
    public void onActivityCreate() {
        try {
            super.onActivityCreate();
            initMVP();
            notifyOnCreate();
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    protected abstract T onCreateCallerContext();

    protected abstract Presenter onCreatePresenter();

    @Override // com.kwad.components.core.proxy.f, com.kwad.sdk.api.proxy.IActivityProxy
    @CallSuper
    public void onDestroy() {
        try {
            super.onDestroy();
            notifyOnDestroy();
            T t10 = this.mCallerContext;
            if (t10 != null) {
                t10.release();
            }
            Presenter presenter = this.mPresenter;
            if (presenter != null) {
                presenter.destroy();
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    @Override // com.kwad.components.core.proxy.f, com.kwad.sdk.api.proxy.IActivityProxy
    @CallSuper
    public void onPause() {
        try {
            super.onPause();
            notifyOnPause();
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    @Override // com.kwad.components.core.proxy.f, com.kwad.sdk.api.proxy.IActivityProxy
    @CallSuper
    public void onResume() {
        try {
            super.onResume();
            notifyOnResume();
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }
}
