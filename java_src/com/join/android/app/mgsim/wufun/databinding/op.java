package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class op extends np {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f42991j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f42992k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42993g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final NestedScrollView f42994h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f42995i;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(4);
        f42991j = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"bindding_load_layout_include"}, new int[]{3}, new int[]{R.layout.bindding_load_layout_include});
        f42992k = null;
    }

    public op(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f42991j, f42992k));
    }

    private boolean C(c7 LayoutStatus, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f42995i |= 1;
        }
        return true;
    }

    private boolean D(MutableLiveData<List<CommonListMainData>> ViewModleListArchive, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f42995i |= 4;
        }
        return true;
    }

    private boolean E(MutableLiveData<LoadBindindData> ViewModleLoadBindData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f42995i |= 2;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.np
    public void A(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f42476f = LoadBindProxy;
        synchronized (this) {
            this.f42995i |= 16;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.np
    public void B(@Nullable ModGameCloudViewModle ViewModle) {
        this.f42474d = ViewModle;
        synchronized (this) {
            this.f42995i |= 8;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0074  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        List<CommonListMainData> value;
        LoadBindindData loadBindindData;
        LoadBindindData value2;
        synchronized (this) {
            j10 = this.f42995i;
            this.f42995i = 0L;
        }
        ModGameCloudViewModle modGameCloudViewModle = this.f42474d;
        LoadBindClickProxy loadBindClickProxy = this.f42476f;
        int i10 = 0;
        if ((78 & j10) != 0) {
            long j11 = j10 & 74;
            if (j11 != 0) {
                MutableLiveData<LoadBindindData> loadBindData = modGameCloudViewModle != null ? modGameCloudViewModle.getLoadBindData() : null;
                updateLiveDataRegistration(1, loadBindData);
                value2 = loadBindData != null ? loadBindData.getValue() : null;
                boolean z10 = (value2 != null ? value2.getShowStatus() : 0) == 1;
                if (j11 != 0) {
                    j10 |= z10 ? 256L : 128L;
                }
                if (!z10) {
                    i10 = 8;
                }
            } else {
                value2 = null;
            }
            if ((j10 & 76) == 0) {
                loadBindindData = value2;
                value = null;
            } else {
                MutableLiveData<List<CommonListMainData>> listArchive = modGameCloudViewModle != null ? modGameCloudViewModle.getListArchive() : null;
                updateLiveDataRegistration(2, listArchive);
                if (listArchive != null) {
                    value = listArchive.getValue();
                    loadBindindData = value2;
                } else {
                    loadBindindData = value2;
                    value = null;
                }
            }
        } else {
            value = null;
            loadBindindData = null;
        }
        long j12 = 80 & j10;
        if ((j10 & 74) != 0) {
            this.f42472b.t(loadBindindData);
            this.f42473c.setVisibility(i10);
        }
        if (j12 != 0) {
            this.f42472b.u(loadBindClickProxy);
        }
        if ((j10 & 76) != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f42473c, value);
        }
        ViewDataBinding.executeBindingsOn(this.f42472b);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f42995i != 0) {
                return true;
            }
            return this.f42472b.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42995i = 64L;
        }
        this.f42472b.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return C((c7) object, fieldId);
        }
        if (localFieldId == 1) {
            return E((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 2) {
            return false;
        }
        return D((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f42472b.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (50 == variableId) {
            B((ModGameCloudViewModle) variable);
            return true;
        }
        if (30 == variableId) {
            A((LoadBindClickProxy) variable);
            return true;
        }
        if (1 != variableId) {
            return false;
        }
        z((RecyclerView.Adapter) variable);
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.np
    public void z(@Nullable RecyclerView.Adapter Adapter) {
        this.f42475e = Adapter;
    }

    private op(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 3, (c7) bindings[3], (XRecyclerView) bindings[2]);
        this.f42995i = -1L;
        setContainedBinding(this.f42472b);
        RelativeLayout relativeLayout = (RelativeLayout) bindings[0];
        this.f42993g = relativeLayout;
        relativeLayout.setTag(null);
        NestedScrollView nestedScrollView = (NestedScrollView) bindings[1];
        this.f42994h = nestedScrollView;
        nestedScrollView.setTag(null);
        this.f42473c.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
