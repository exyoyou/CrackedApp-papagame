package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.mgps.dto.BannerBean;

/* JADX INFO: loaded from: classes4.dex */
public class pc extends oc {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f43309f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f43310g = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f43311e;

    public pc(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f43309f, f43310g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f43311e;
            this.f43311e = 0L;
        }
        BannerBean bannerBean = this.f42794d;
        long j11 = j10 & 3;
        String pic_remote = (j11 == 0 || bannerBean == null) ? null : bannerBean.getPic_remote();
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f42792b, pic_remote, null, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f43311e != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f43311e = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.oc
    public void n(@Nullable BannerBean Data) {
        this.f42794d = Data;
        synchronized (this) {
            this.f43311e |= 1;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (11 != variableId) {
            return false;
        }
        n((BannerBean) variable);
        return true;
    }

    private pc(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1], (LinearLayout) bindings[0]);
        this.f43311e = -1L;
        this.f42792b.setTag(null);
        this.f42793c.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
