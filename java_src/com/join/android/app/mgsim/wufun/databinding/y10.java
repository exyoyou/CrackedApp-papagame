package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class y10 extends x10 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47539e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47540f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f47542d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47540f = sparseIntArray;
        sparseIntArray.put(R.id.content, 1);
    }

    public y10(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f47539e, f47540f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f47542d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47542d != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47542d = 1L;
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

    private y10(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[1]);
        this.f47542d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f47541c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
