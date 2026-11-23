package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public class wx extends vx {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47005f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47006g = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f47008e;

    public wx(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f47005f, f47006g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f47008e;
            this.f47008e = 0L;
        }
        CommonGameInfoBean commonGameInfoBean = this.f46485c;
        long j11 = j10 & 3;
        String coverPicUrl = (j11 == 0 || commonGameInfoBean == null) ? null : commonGameInfoBean.getCoverPicUrl();
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f46484b, null, coverPicUrl, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47008e != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47008e = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.vx
    public void n(@Nullable CommonGameInfoBean ItemData) {
        this.f46485c = ItemData;
        synchronized (this) {
            this.f47008e |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 != variableId) {
            return false;
        }
        n((CommonGameInfoBean) variable);
        return true;
    }

    private wx(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1]);
        this.f47008e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f47007d = constraintLayout;
        constraintLayout.setTag(null);
        this.f46484b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
