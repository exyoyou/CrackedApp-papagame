package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.quark.proxy.QuarkSearchClickProxy;
import com.join.kotlin.quark.viewmodel.QuarkSearchViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class g4 extends f4 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38697j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38698k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38699g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f38700h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f38701i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38698k = sparseIntArray;
        sparseIntArray.put(R.id.xrv_list, 3);
    }

    public g4(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f38697j, f38698k));
    }

    private boolean w(MutableLiveData<String> VmTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38701i |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        QuarkSearchClickProxy quarkSearchClickProxy = this.f38253f;
        if (quarkSearchClickProxy != null) {
            quarkSearchClickProxy.onBackClick();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f38701i;
            this.f38701i = 0L;
        }
        QuarkSearchViewModel quarkSearchViewModel = this.f38252e;
        long j11 = 11 & j10;
        String value = null;
        if (j11 != 0) {
            MutableLiveData<String> title = quarkSearchViewModel != null ? quarkSearchViewModel.getTitle() : null;
            updateLiveDataRegistration(0, title);
            if (title != null) {
                value = title.getValue();
            }
        }
        if ((j10 & 8) != 0) {
            this.f38249b.setOnClickListener(this.f38700h);
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f38250c, value);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f38701i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38701i = 8L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId != 0) {
            return false;
        }
        return w((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 == variableId) {
            u((QuarkSearchViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((QuarkSearchClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f4
    public void t(@Nullable QuarkSearchClickProxy Click) {
        this.f38253f = Click;
        synchronized (this) {
            this.f38701i |= 4;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f4
    public void u(@Nullable QuarkSearchViewModel Vm) {
        this.f38252e = Vm;
        synchronized (this) {
            this.f38701i |= 2;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private g4(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 1, (ImageView) bindings[1], (TextView) bindings[2], (XQuickRecyclerView) bindings[3]);
        this.f38701i = -1L;
        this.f38249b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f38699g = linearLayout;
        linearLayout.setTag(null);
        this.f38250c.setTag(null);
        setRootTag(root);
        this.f38700h = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
