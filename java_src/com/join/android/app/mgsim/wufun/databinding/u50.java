package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class u50 extends t50 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45582e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45583f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f45585d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f45583f = sparseIntArray;
        sparseIntArray.put(R.id.rv_list, 1);
    }

    public u50(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f45582e, f45583f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f45585d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45585d != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45585d = 1L;
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

    private u50(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (RecyclerView) bindings[1]);
        this.f45585d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f45584c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
