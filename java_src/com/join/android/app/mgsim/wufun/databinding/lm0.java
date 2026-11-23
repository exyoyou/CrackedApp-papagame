package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.mgps.dto.DomainInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public class lm0 extends km0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f41410j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f41411k = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41412g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41413h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f41414i;

    public lm0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f41410j, f41411k));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            DomainInfoBean domainInfoBean = this.f40874e;
            OnClickArchiveListener onClickArchiveListener = this.f40875f;
            if (onClickArchiveListener != null) {
                onClickArchiveListener.onClickDomain(domainInfoBean);
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        DomainInfoBean domainInfoBean2 = this.f40874e;
        OnClickArchiveListener onClickArchiveListener2 = this.f40875f;
        if (onClickArchiveListener2 != null) {
            onClickArchiveListener2.onClickDomain(domainInfoBean2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f41414i;
            this.f41414i = 0L;
        }
        if ((j10 & 4) != 0) {
            this.f40871b.setOnClickListener(this.f41413h);
            this.f40873d.setOnClickListener(this.f41412g);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41414i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41414i = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 == variableId) {
            u((DomainInfoBean) variable);
        } else {
            if (9 != variableId) {
                return false;
            }
            t((OnClickArchiveListener) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.km0
    public void t(@Nullable OnClickArchiveListener ClickListener) {
        this.f40875f = ClickListener;
        synchronized (this) {
            this.f41414i |= 2;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.km0
    public void u(@Nullable DomainInfoBean ItemData) {
        this.f40874e = ItemData;
        synchronized (this) {
            this.f41414i |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private lm0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1], (CardView) bindings[0], (TextView) bindings[2]);
        this.f41414i = -1L;
        this.f40871b.setTag(null);
        this.f40872c.setTag(null);
        this.f40873d.setTag(null);
        setRootTag(root);
        this.f41412g = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f41413h = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
