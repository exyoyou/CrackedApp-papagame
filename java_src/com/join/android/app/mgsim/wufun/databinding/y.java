package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.search.viewmodel.CollectionSearchListGameViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class y extends x {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47493g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47494h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47495e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f47496f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47494h = sparseIntArray;
        sparseIntArray.put(R.id.title_bar_layout, 1);
        sparseIntArray.put(R.id.xrv_list, 2);
    }

    public y(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f47493g, f47494h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f47496f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47496f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47496f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x
    public void n(@Nullable CollectionSearchListGameViewModel Vm) {
        this.f47022d = Vm;
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
        n((CollectionSearchListGameViewModel) variable);
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private y(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        Object obj = bindings[1];
        super(bindingComponent, root, 0, obj != null ? hw0.bind((View) obj) : null, (XQuickRecyclerView) bindings[2]);
        this.f47496f = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f47495e = linearLayout;
        linearLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
