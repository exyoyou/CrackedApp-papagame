package com.kwad.components.core.n;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import com.kwad.sdk.mvp.Presenter;
import com.kwad.sdk.mvp.a;
import com.kwad.sdk.widget.KSFrameLayout;
import com.kwad.sdk.wrapper.m;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d<T extends com.kwad.sdk.mvp.a> extends KSFrameLayout {
    public T abm;
    public Presenter mPresenter;
    protected ViewGroup oC;

    public d(Context context) {
        this(context, null);
    }

    private void initMVP() {
        this.abm = (T) an();
        com.kwad.sdk.core.d.c.w("jky", this + " BaseMVPView initMVP mCallerContext: " + this.abm);
        if (this.mPresenter == null) {
            this.mPresenter = onCreatePresenter();
            com.kwad.sdk.core.d.c.w("jky", this + " BaseMVPView initMVP mPresenter: " + this.mPresenter + ", mContainerView: + " + this.oC);
            this.mPresenter.N(this.oC);
        }
        this.mPresenter.q(this.abm);
    }

    protected abstract void a(@NonNull ViewGroup viewGroup);

    @Override // com.kwad.sdk.widget.KSFrameLayout
    public void ae() {
        super.ae();
        com.kwad.sdk.core.d.c.w("jky", this + " BaseMVPView onViewAttached");
        initMVP();
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout
    public void af() {
        super.af();
        T t10 = this.abm;
        if (t10 != null) {
            t10.release();
        }
        Presenter presenter = this.mPresenter;
        if (presenter != null) {
            presenter.destroy();
        }
    }

    protected boolean al() {
        return false;
    }

    protected abstract T an();

    @LayoutRes
    protected abstract int getLayoutId();

    protected abstract void initData();

    @NonNull
    public abstract Presenter onCreatePresenter();

    protected final void tp() {
        com.kwad.sdk.core.d.c.w("jky", this + " BaseMVPView createView");
        initData();
        if (getLayoutId() > 0) {
            this.oC = (ViewGroup) m.inflate(getContext(), getLayoutId(), this);
        } else {
            this.oC = tq();
        }
        a(this.oC);
    }

    protected ViewGroup tq() {
        return null;
    }

    private d(Context context, AttributeSet attributeSet) {
        this(context, null, 0);
    }

    private d(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, 0);
        com.kwad.sdk.core.d.c.w("jky", this + " BaseMVPView init createOnChild: " + al());
        if (al()) {
            return;
        }
        tp();
    }
}
