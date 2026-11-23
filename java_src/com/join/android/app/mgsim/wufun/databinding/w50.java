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
public class w50 extends v50 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46637i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46638j = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46639g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f46640h;

    public w50(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f46637i, f46638j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String showName;
        String ico;
        String big_pic;
        String showScore;
        GInfoBean g_info;
        synchronized (this) {
            j10 = this.f46640h;
            this.f46640h = 0L;
        }
        CommonGameInfoBean commonGameInfoBean = this.f46085f;
        long j11 = j10 & 3;
        if (j11 != 0) {
            if (commonGameInfoBean != null) {
                showName = commonGameInfoBean.getShowName();
                g_info = commonGameInfoBean.getG_info();
                big_pic = commonGameInfoBean.getBig_pic();
                showScore = commonGameInfoBean.getShowScore();
            } else {
                showName = null;
                g_info = null;
                big_pic = null;
                showScore = null;
            }
            ico = g_info != null ? g_info.getIco() : null;
        } else {
            showName = null;
            ico = null;
            big_pic = null;
            showScore = null;
        }
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f46081b, ico, null, 0);
            SimpleDrawableViewKt.loadUrl(this.f46082c, big_pic, null, 0);
            TextViewBindingAdapter.setText(this.f46083d, showName);
            TextViewBindingAdapter.setText(this.f46084e, showScore);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46640h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46640h = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.v50
    public void n(@Nullable CommonGameInfoBean ItemData) {
        this.f46085f = ItemData;
        synchronized (this) {
            this.f46640h |= 1;
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

    private w50(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[2], (SimpleDraweeView) bindings[1], (TextView) bindings[3], (TextView) bindings[4]);
        this.f46640h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f46639g = constraintLayout;
        constraintLayout.setTag(null);
        this.f46081b.setTag(null);
        this.f46082c.setTag(null);
        this.f46083d.setTag(null);
        this.f46084e.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
