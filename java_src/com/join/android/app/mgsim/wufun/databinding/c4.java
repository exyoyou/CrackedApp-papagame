package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.QuarkInstallClickProxy;
import com.join.kotlin.quark.viewmodel.QuarkInstallViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class c4 extends b4 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36756n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36757o;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36758i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final ImageView f36759j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f36760k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f36761l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f36762m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f36757o = sparseIntArray;
        sparseIntArray.put(R.id.tv_status, 3);
        sparseIntArray.put(R.id.iv_quark_logo, 4);
        sparseIntArray.put(R.id.tv_new_tip, 5);
        sparseIntArray.put(R.id.pb_progress, 6);
    }

    public c4(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 7, f36756n, f36757o));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            QuarkInstallClickProxy quarkInstallClickProxy = this.f36222h;
            if (quarkInstallClickProxy != null) {
                quarkInstallClickProxy.onInstallClick();
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        QuarkInstallClickProxy quarkInstallClickProxy2 = this.f36222h;
        if (quarkInstallClickProxy2 != null) {
            quarkInstallClickProxy2.onCloseClick();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f36762m;
            this.f36762m = 0L;
        }
        if ((j10 & 4) != 0) {
            this.f36759j.setOnClickListener(this.f36761l);
            this.f36219e.setOnClickListener(this.f36760k);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f36762m != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36762m = 4L;
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
            u((QuarkInstallViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((QuarkInstallClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b4
    public void t(@Nullable QuarkInstallClickProxy Click) {
        this.f36222h = Click;
        synchronized (this) {
            this.f36762m |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b4
    public void u(@Nullable QuarkInstallViewModel Vm) {
        this.f36221g = Vm;
    }

    private c4(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[4], (ProgressBar) bindings[6], (TextView) bindings[5], (TextView) bindings[1], (TextView) bindings[3]);
        this.f36762m = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f36758i = linearLayout;
        linearLayout.setTag(null);
        ImageView imageView = (ImageView) bindings[2];
        this.f36759j = imageView;
        imageView.setTag(null);
        this.f36219e.setTag(null);
        setRootTag(root);
        this.f36760k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f36761l = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
