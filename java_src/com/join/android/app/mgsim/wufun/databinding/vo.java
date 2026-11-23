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
import com.join.kotlin.quark.proxy.SourceShareClickProxy;
import com.join.kotlin.quark.viewmodel.SourceShareListViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class vo extends uo {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46367g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46368h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46369e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f46370f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f46368h = sparseIntArray;
        sparseIntArray.put(R.id.xrv_list, 1);
    }

    public vo(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f46367g, f46368h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f46370f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46370f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46370f = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 == variableId) {
            u((SourceShareListViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((SourceShareClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.uo
    public void t(@Nullable SourceShareClickProxy Click) {
        this.f45788d = Click;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.uo
    public void u(@Nullable SourceShareListViewModel Vm) {
        this.f45787c = Vm;
    }

    private vo(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (XQuickRecyclerView) bindings[1]);
        this.f46370f = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f46369e = linearLayout;
        linearLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
