package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.proxy.GameDetailCouponClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailCouponViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class q0 extends p0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f43598l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f43599m;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43600i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43601j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f43602k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f43599m = sparseIntArray;
        sparseIntArray.put(R.id.title, 2);
        sparseIntArray.put(R.id.cl_container, 3);
        sparseIntArray.put(R.id.titleDivider, 4);
        sparseIntArray.put(R.id.rvCoupon, 5);
    }

    public q0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f43598l, f43599m));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        GameDetailCouponClickProxy gameDetailCouponClickProxy = this.f43151h;
        if (gameDetailCouponClickProxy != null) {
            gameDetailCouponClickProxy.onBackClick();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f43602k;
            this.f43602k = 0L;
        }
        if ((j10 & 4) != 0) {
            this.f43145b.setOnClickListener(this.f43601j);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f43602k != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f43602k = 4L;
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
            u((GameDetailCouponViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailCouponClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p0
    public void t(@Nullable GameDetailCouponClickProxy Click) {
        this.f43151h = Click;
        synchronized (this) {
            this.f43602k |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.p0
    public void u(@Nullable GameDetailCouponViewModel Vm) {
        this.f43150g = Vm;
    }

    private q0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[1], (ConstraintLayout) bindings[3], (XQuickRecyclerView) bindings[5], (TextView) bindings[2], (TextView) bindings[4]);
        this.f43602k = -1L;
        this.f43145b.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f43600i = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(root);
        this.f43601j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
