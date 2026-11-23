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
public class y00 extends x00 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47519g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47520h = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47521d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final TextView f47522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f47523f;

    public y00(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f47519g, f47520h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String showName;
        String ico;
        GInfoBean g_info;
        synchronized (this) {
            j10 = this.f47523f;
            this.f47523f = 0L;
        }
        CommonGameInfoBean commonGameInfoBean = this.f47032c;
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
            TextViewBindingAdapter.setText(this.f47522e, showName);
            SimpleDrawableViewKt.loadUrl(this.f47031b, ico, null, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47523f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47523f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x00
    public void n(@Nullable CommonGameInfoBean ItemData) {
        this.f47032c = ItemData;
        synchronized (this) {
            this.f47523f |= 1;
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

    private y00(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1]);
        this.f47523f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f47521d = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[2];
        this.f47522e = textView;
        textView.setTag(null);
        this.f47031b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
