package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: loaded from: classes4.dex */
public class yx extends xx {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47992d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47993e = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f47994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f47995c;

    public yx(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 1, f47992d, f47993e));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f47995c = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47995c != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47995c = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        return true;
    }

    private yx(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0);
        this.f47995c = -1L;
        View view = (View) bindings[0];
        this.f47994b = view;
        view.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
