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
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public class hx extends gx {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f39535g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f39536h = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final TextView f39538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f39539f;

    public hx(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f39535g, f39536h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String showName;
        String ico;
        GInfoBean g_info;
        synchronized (this) {
            j10 = this.f39539f;
            this.f39539f = 0L;
        }
        CommonGameInfoBean commonGameInfoBean = this.f39037c;
        long j11 = j10 & 3;
        if (j11 != 0) {
            if (commonGameInfoBean != null) {
                showName = commonGameInfoBean.getShowName();
                g_info = commonGameInfoBean.getG_info();
            } else {
                showName = null;
                g_info = null;
            }
            ico = g_info != null ? g_info.getIco() : null;
        } else {
            showName = null;
            ico = null;
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f39538e, showName);
            SimpleDrawableViewKt.loadUrl(this.f39036b, ico, null, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f39539f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39539f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.gx
    public void n(@Nullable CommonGameInfoBean ItemData) {
        this.f39037c = ItemData;
        synchronized (this) {
            this.f39539f |= 1;
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

    private hx(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1]);
        this.f39539f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f39537d = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[2];
        this.f39538e = textView;
        textView.setTag(null);
        this.f39036b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
