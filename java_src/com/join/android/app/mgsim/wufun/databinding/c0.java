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
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.kotlin.zone.viewmodel.CommonZoneViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class c0 extends b0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36664l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36665m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36666h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private final c7 f36667i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f36668j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f36669k;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(5);
        f36664l = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"bindding_load_layout_include"}, new int[]{4}, new int[]{R.layout.bindding_load_layout_include});
        f36665m = null;
    }

    public c0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f36664l, f36665m));
    }

    private boolean C(MutableLiveData<LoadBindindData> VmLoadBindData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f36669k |= 2;
        }
        return true;
    }

    private boolean D(MutableLiveData<String> VmTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f36669k |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b0
    public void A(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f36129g = LoadBindProxy;
        synchronized (this) {
            this.f36669k |= 4;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b0
    public void B(@Nullable CommonZoneViewModel Vm) {
        this.f36127e = Vm;
        synchronized (this) {
            this.f36669k |= 8;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        ClickProxy clickProxy = this.f36128f;
        if (clickProxy != null) {
            clickProxy.onClickBack();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0035  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        synchronized (this) {
            j10 = this.f36669k;
            this.f36669k = 0L;
        }
        LoadBindClickProxy loadBindClickProxy = this.f36129g;
        CommonZoneViewModel commonZoneViewModel = this.f36127e;
        LoadBindindData value2 = null;
        int i10 = 0;
        if ((43 & j10) != 0) {
            if ((j10 & 41) == 0) {
                value = null;
            } else {
                MutableLiveData<String> title = commonZoneViewModel != null ? commonZoneViewModel.getTitle() : null;
                updateLiveDataRegistration(0, title);
                if (title != null) {
                    value = title.getValue();
                } else {
                    value = null;
                }
            }
            long j11 = j10 & 42;
            if (j11 != 0) {
                MutableLiveData<LoadBindindData> loadBindData = commonZoneViewModel != null ? commonZoneViewModel.getLoadBindData() : null;
                updateLiveDataRegistration(1, loadBindData);
                value2 = loadBindData != null ? loadBindData.getValue() : null;
                boolean z10 = (value2 != null ? value2.getShowStatus() : 0) == 1;
                if (j11 != 0) {
                    j10 |= z10 ? 128L : 64L;
                }
                if (!z10) {
                    i10 = 8;
                }
            }
        } else {
            value = null;
        }
        if ((32 & j10) != 0) {
            this.f36124b.setOnClickListener(this.f36668j);
        }
        if ((j10 & 42) != 0) {
            this.f36667i.t(value2);
            this.f36126d.setVisibility(i10);
        }
        if ((36 & j10) != 0) {
            this.f36667i.u(loadBindClickProxy);
        }
        if ((j10 & 41) != 0) {
            TextViewBindingAdapter.setText(this.f36125c, value);
        }
        ViewDataBinding.executeBindingsOn(this.f36667i);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f36669k != 0) {
                return true;
            }
            return this.f36667i.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36669k = 32L;
        }
        this.f36667i.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return D((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 1) {
            return false;
        }
        return C((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f36667i.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (30 == variableId) {
            A((LoadBindClickProxy) variable);
        } else if (54 == variableId) {
            B((CommonZoneViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            z((ClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b0
    public void z(@Nullable ClickProxy Click) {
        this.f36128f = Click;
        synchronized (this) {
            this.f36669k |= 16;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    private c0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (ImageView) bindings[1], (TextView) bindings[2], (XQuickRecyclerView) bindings[3]);
        this.f36669k = -1L;
        this.f36124b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f36666h = linearLayout;
        linearLayout.setTag(null);
        c7 c7Var = (c7) bindings[4];
        this.f36667i = c7Var;
        setContainedBinding(c7Var);
        this.f36125c.setTag(null);
        this.f36126d.setTag(null);
        setRootTag(root);
        this.f36668j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
