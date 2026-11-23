package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.search.viewmodel.SearchListGameViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class ko extends jo {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f40897g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f40898h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f40900f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40898h = sparseIntArray;
        sparseIntArray.put(R.id.xrv_list, 1);
        sparseIntArray.put(R.id.iv_feed, 2);
    }

    public ko(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f40897g, f40898h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f40900f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f40900f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f40900f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.jo
    public void n(@Nullable SearchListGameViewModel Vm) {
        this.f40325d = Vm;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 != variableId) {
            return false;
        }
        n((SearchListGameViewModel) variable);
        return true;
    }

    private ko(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[2], (XQuickRecyclerView) bindings[1]);
        this.f40900f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f40899e = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
