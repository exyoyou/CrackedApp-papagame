package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public class nz extends mz implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f42560h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f42561i = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f42563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42564f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f42565g;

    public nz(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f42560h, f42561i));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        String str = this.f42098b;
        GameDetailFragmentClickProxy gameDetailFragmentClickProxy = this.f42099c;
        if (gameDetailFragmentClickProxy != null) {
            gameDetailFragmentClickProxy.horizontalPicClick(str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f42565g;
            this.f42565g = 0L;
        }
        String str = this.f42098b;
        long j11 = 5 & j10;
        if ((j10 & 4) != 0) {
            this.f42563e.setOnClickListener(this.f42564f);
        }
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f42563e, str, null, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42565g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42565g = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (34 == variableId) {
            u((String) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailFragmentClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.mz
    public void t(@Nullable GameDetailFragmentClickProxy Click) {
        this.f42099c = Click;
        synchronized (this) {
            this.f42565g |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.mz
    public void u(@Nullable String PicUrl) {
        this.f42098b = PicUrl;
        synchronized (this) {
            this.f42565g |= 1;
        }
        notifyPropertyChanged(34);
        super.requestRebind();
    }

    private nz(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0);
        this.f42565g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f42562d = constraintLayout;
        constraintLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bindings[1];
        this.f42563e = simpleDraweeView;
        simpleDraweeView.setTag(null);
        setRootTag(root);
        this.f42564f = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
