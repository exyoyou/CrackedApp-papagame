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
import com.join.kotlin.discount.proxy.GameDetailGiftClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailGiftViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class s0 extends r0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f44576j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f44577k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f44578h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f44579i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f44577k = sparseIntArray;
        sparseIntArray.put(R.id.title, 2);
        sparseIntArray.put(R.id.rvGift, 3);
    }

    public s0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f44576j, f44577k));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        GameDetailGiftClickProxy gameDetailGiftClickProxy = this.f44153g;
        if (gameDetailGiftClickProxy != null) {
            gameDetailGiftClickProxy.onBackClick();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f44579i;
            this.f44579i = 0L;
        }
        if ((j10 & 4) != 0) {
            this.f44148b.setOnClickListener(this.f44578h);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f44579i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f44579i = 4L;
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
            u((GameDetailGiftViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailGiftClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.r0
    public void t(@Nullable GameDetailGiftClickProxy Click) {
        this.f44153g = Click;
        synchronized (this) {
            this.f44579i |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.r0
    public void u(@Nullable GameDetailGiftViewModel Vm) {
        this.f44152f = Vm;
    }

    private s0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[1], (ConstraintLayout) bindings[0], (XQuickRecyclerView) bindings[3], (TextView) bindings[2]);
        this.f44579i = -1L;
        this.f44148b.setTag(null);
        this.f44149c.setTag(null);
        setRootTag(root);
        this.f44578h = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
