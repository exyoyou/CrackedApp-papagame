package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.proxy.GameDetailCommentDataClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailCommentDataViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class u1 extends t1 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45514m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45515n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final View f45516i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f45517j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f45518k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f45519l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f45515n = sparseIntArray;
        sparseIntArray.put(R.id.cl_container, 3);
        sparseIntArray.put(R.id.tablayout, 4);
        sparseIntArray.put(R.id.viewpager, 5);
    }

    public u1(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f45514m, f45515n));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            GameDetailCommentDataClickProxy gameDetailCommentDataClickProxy = this.f45074h;
            if (gameDetailCommentDataClickProxy != null) {
                gameDetailCommentDataClickProxy.onBackClick();
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        GameDetailCommentDataClickProxy gameDetailCommentDataClickProxy2 = this.f45074h;
        if (gameDetailCommentDataClickProxy2 != null) {
            gameDetailCommentDataClickProxy2.onBackClick();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f45519l;
            this.f45519l = 0L;
        }
        if ((j10 & 4) != 0) {
            this.f45068b.setOnClickListener(this.f45518k);
            this.f45516i.setOnClickListener(this.f45517j);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45519l != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45519l = 4L;
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
            u((GameDetailCommentDataViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailCommentDataClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t1
    public void t(@Nullable GameDetailCommentDataClickProxy Click) {
        this.f45074h = Click;
        synchronized (this) {
            this.f45519l |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t1
    public void u(@Nullable GameDetailCommentDataViewModel Vm) {
        this.f45073g = Vm;
    }

    private u1(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[2], (ConstraintLayout) bindings[3], (ConstraintLayout) bindings[0], (TabLayout) bindings[4], (ViewPager2) bindings[5]);
        this.f45519l = -1L;
        this.f45068b.setTag(null);
        this.f45070d.setTag(null);
        View view = (View) bindings[1];
        this.f45516i = view;
        view.setTag(null);
        setRootTag(root);
        this.f45517j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f45518k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
