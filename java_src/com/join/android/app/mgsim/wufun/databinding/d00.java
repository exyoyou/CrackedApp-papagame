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

/* JADX INFO: loaded from: classes4.dex */
public class d00 extends c00 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f37183f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f37184g = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f37186e;

    public d00(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f37183f, f37184g));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f37186e;
            this.f37186e = 0L;
        }
        String str = this.f36671c;
        if ((j10 & 3) != 0) {
            TextViewBindingAdapter.setText(this.f36670b, str);
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.c00
    public void f(@Nullable String Title) {
        this.f36671c = Title;
        synchronized (this) {
            this.f37186e |= 1;
        }
        notifyPropertyChanged(44);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f37186e != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f37186e = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (44 != variableId) {
            return false;
        }
        f((String) variable);
        return true;
    }

    private d00(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[1]);
        this.f37186e = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f37185d = constraintLayout;
        constraintLayout.setTag(null);
        this.f36670b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
