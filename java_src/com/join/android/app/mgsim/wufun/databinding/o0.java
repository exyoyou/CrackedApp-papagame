package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.proxy.GameDetailClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class o0 extends n0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f42571j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f42572k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42573h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f42574i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f42572k = sparseIntArray;
        sparseIntArray.put(R.id.viewpager, 2);
        sparseIntArray.put(R.id.tablayout, 3);
    }

    public o0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f42571j, f42572k));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        GameDetailClickProxy gameDetailClickProxy = this.f42125g;
        if (gameDetailClickProxy != null) {
            gameDetailClickProxy.onBackClick();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f42574i;
            this.f42574i = 0L;
        }
        if ((j10 & 4) != 0) {
            this.f42120b.setOnClickListener(this.f42573h);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42574i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42574i = 4L;
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
            u((GameDetailViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.n0
    public void t(@Nullable GameDetailClickProxy Click) {
        this.f42125g = Click;
        synchronized (this) {
            this.f42574i |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.n0
    public void u(@Nullable GameDetailViewModel Vm) {
        this.f42124f = Vm;
    }

    private o0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[1], (ConstraintLayout) bindings[0], (TabLayout) bindings[3], (ViewPager2) bindings[2]);
        this.f42574i = -1L;
        this.f42120b.setTag(null);
        this.f42121c.setTag(null);
        setRootTag(root);
        this.f42573h = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
