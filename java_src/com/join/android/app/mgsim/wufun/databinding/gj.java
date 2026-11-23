package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class gj extends fj {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38865g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38866h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f38868f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38866h = sparseIntArray;
        sparseIntArray.put(R.id.loadingLayoutMain, 1);
        sparseIntArray.put(R.id.failedLayoutMain, 2);
        sparseIntArray.put(R.id.recycleView, 3);
    }

    public gj(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f38865g, f38866h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38868f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f38868f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38868f = 1L;
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

    /* JADX WARN: Illegal instructions before constructor call */
    private gj(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        Object obj = bindings[2];
        mj mjVarBind = obj != null ? mj.bind((View) obj) : null;
        Object obj2 = bindings[1];
        super(bindingComponent, root, 0, mjVarBind, obj2 != null ? ke0.bind((View) obj2) : null, (XRecyclerView) bindings[3]);
        this.f38868f = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f38867e = linearLayout;
        linearLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
