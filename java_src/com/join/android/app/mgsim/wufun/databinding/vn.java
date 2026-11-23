package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class vn extends un {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46353g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46354h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final FrameLayout f46355e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f46356f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f46354h = sparseIntArray;
        sparseIntArray.put(R.id.cl_container, 1);
        sparseIntArray.put(R.id.xrv_list, 2);
    }

    public vn(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f46353g, f46354h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f46356f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46356f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46356f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.un
    public void n(@Nullable NostalgiaGameViewModel Vm) {
        this.f45781d = Vm;
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
        n((NostalgiaGameViewModel) variable);
        return true;
    }

    private vn(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (FrameLayout) bindings[1], (XQuickRecyclerView) bindings[2]);
        this.f46356f = -1L;
        FrameLayout frameLayout = (FrameLayout) bindings[0];
        this.f46355e = frameLayout;
        frameLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
