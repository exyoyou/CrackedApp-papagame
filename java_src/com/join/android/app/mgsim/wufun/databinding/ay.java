package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public class ay extends zx {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36110h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36111i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36112f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f36113g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f36111i = sparseIntArray;
        sparseIntArray.put(R.id.tv_label, 3);
    }

    public ay(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f36110h, f36111i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String showName;
        String coverPicUrl;
        synchronized (this) {
            j10 = this.f36113g;
            this.f36113g = 0L;
        }
        CommonGameInfoBean commonGameInfoBean = this.f48476e;
        long j11 = j10 & 3;
        if (j11 == 0 || commonGameInfoBean == null) {
            showName = null;
            coverPicUrl = null;
        } else {
            showName = commonGameInfoBean.getShowName();
            coverPicUrl = commonGameInfoBean.getCoverPicUrl();
        }
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f48473b, coverPicUrl, null, 0);
            TextViewBindingAdapter.setText(this.f48474c, showName);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f36113g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36113g = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.zx
    public void n(@Nullable CommonGameInfoBean ItemData) {
        this.f48476e = ItemData;
        synchronized (this) {
            this.f36113g |= 1;
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

    private ay(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1], (TextView) bindings[2], (TextView) bindings[3]);
        this.f36113g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f36112f = constraintLayout;
        constraintLayout.setTag(null);
        this.f48473b.setTag(null);
        this.f48474c.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
