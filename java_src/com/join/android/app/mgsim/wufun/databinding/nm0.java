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
public class nm0 extends mm0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f42421j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f42422k = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f42425i;

    public nm0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f42421j, f42422k));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            DomainInfoBean domainInfoBean = this.f41976e;
            OnClickArchiveListener onClickArchiveListener = this.f41977f;
            if (onClickArchiveListener != null) {
                onClickArchiveListener.onClickDomain(domainInfoBean);
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        DomainInfoBean domainInfoBean2 = this.f41976e;
        OnClickArchiveListener onClickArchiveListener2 = this.f41977f;
        if (onClickArchiveListener2 != null) {
            onClickArchiveListener2.onClickDomain(domainInfoBean2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f42425i;
            this.f42425i = 0L;
        }
        if ((j10 & 4) != 0) {
            this.f41973b.setOnClickListener(this.f42424h);
            this.f41975d.setOnClickListener(this.f42423g);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42425i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42425i = 4L;
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

    @Override // com.join.android.app.mgsim.wufun.databinding.mm0
    public void t(@Nullable OnClickArchiveListener ClickListener) {
        this.f41977f = ClickListener;
        synchronized (this) {
            this.f42425i |= 2;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.mm0
    public void u(@Nullable DomainInfoBean ItemData) {
        this.f41976e = ItemData;
        synchronized (this) {
            this.f42425i |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private nm0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1], (CardView) bindings[0], (TextView) bindings[2]);
        this.f42425i = -1L;
        this.f41973b.setTag(null);
        this.f41974c.setTag(null);
        this.f41975d.setTag(null);
        setRootTag(root);
        this.f42423g = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f42424h = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
