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
import com.join.kotlin.discount.proxy.GameDetailServerBookDialogClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailServerBookDialogViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class w0 extends v0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46524l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46525m;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final ImageView f46526i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46527j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f46528k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f46525m = sparseIntArray;
        sparseIntArray.put(R.id.cl_container, 2);
        sparseIntArray.put(R.id.recyclerview, 3);
        sparseIntArray.put(R.id.tvTitle, 4);
        sparseIntArray.put(R.id.subTitle, 5);
    }

    public w0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f46524l, f46525m));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        GameDetailServerBookDialogClickProxy gameDetailServerBookDialogClickProxy = this.f45992h;
        if (gameDetailServerBookDialogClickProxy != null) {
            gameDetailServerBookDialogClickProxy.onBackClick();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f46528k;
            this.f46528k = 0L;
        }
        if ((j10 & 4) != 0) {
            this.f46526i.setOnClickListener(this.f46527j);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46528k != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46528k = 4L;
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
            u((GameDetailServerBookDialogViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailServerBookDialogClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.v0
    public void t(@Nullable GameDetailServerBookDialogClickProxy Click) {
        this.f45992h = Click;
        synchronized (this) {
            this.f46528k |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.v0
    public void u(@Nullable GameDetailServerBookDialogViewModel Vm) {
        this.f45991g = Vm;
    }

    private w0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ConstraintLayout) bindings[2], (ConstraintLayout) bindings[0], (XQuickRecyclerView) bindings[3], (TextView) bindings[5], (TextView) bindings[4]);
        this.f46528k = -1L;
        this.f45987c.setTag(null);
        ImageView imageView = (ImageView) bindings[1];
        this.f46526i = imageView;
        imageView.setTag(null);
        setRootTag(root);
        this.f46527j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
