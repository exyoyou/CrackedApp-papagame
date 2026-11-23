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
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.mgps.dto.BTActivityBean;

/* JADX INFO: loaded from: classes4.dex */
public class dp0 extends cp0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f37588i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f37589j = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f37590h;

    public dp0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f37588i, f37589j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String sub_head;
        String title;
        String type;
        synchronized (this) {
            j10 = this.f37590h;
            this.f37590h = 0L;
        }
        BTActivityBean bTActivityBean = this.f37037f;
        long j11 = j10 & 5;
        if (j11 == 0 || bTActivityBean == null) {
            sub_head = null;
            title = null;
            type = null;
        } else {
            sub_head = bTActivityBean.getSub_head();
            title = bTActivityBean.getTitle();
            type = bTActivityBean.getType();
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f37034c, sub_head);
            TextViewBindingAdapter.setText(this.f37035d, type);
            TextViewBindingAdapter.setText(this.f37036e, title);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f37590h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f37590h = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (3 == variableId) {
            t((BTActivityBean) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            u((ClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.cp0
    public void t(@Nullable BTActivityBean Album) {
        this.f37037f = Album;
        synchronized (this) {
            this.f37590h |= 1;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.cp0
    public void u(@Nullable ClickProxy Click) {
        this.f37038g = Click;
    }

    private dp0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ConstraintLayout) bindings[0], (TextView) bindings[3], (TextView) bindings[1], (TextView) bindings[2]);
        this.f37590h = -1L;
        this.f37033b.setTag(null);
        this.f37034c.setTag(null);
        this.f37035d.setTag(null);
        this.f37036e.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
