package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class al extends zk {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f35880g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f35881h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f35883f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f35881h = sparseIntArray;
        sparseIntArray.put(R.id.cl_container, 1);
        sparseIntArray.put(R.id.xrv_list, 2);
    }

    public al(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f35880g, f35881h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f35883f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f35883f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f35883f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.zk
    public void n(@Nullable CloudAssetRecordViewModel Vm) {
        this.f48284d = Vm;
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
        n((CloudAssetRecordViewModel) variable);
        return true;
    }

    private al(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ConstraintLayout) bindings[1], (XQuickRecyclerView) bindings[2]);
        this.f35883f = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f35882e = linearLayout;
        linearLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
