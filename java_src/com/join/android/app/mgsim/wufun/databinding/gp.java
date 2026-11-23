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
import com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudViewModle;
import com.join.mgps.dto.CloudListDataBean;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class gp extends fp {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38937j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38938k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38939g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final NestedScrollView f38940h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f38941i;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(4);
        f38937j = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"bindding_load_layout_include"}, new int[]{3}, new int[]{R.layout.bindding_load_layout_include});
        f38938k = null;
    }

    public gp(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f38937j, f38938k));
    }

    private boolean C(c7 LayoutStatus, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38941i |= 1;
        }
        return true;
    }

    private boolean D(MutableLiveData<List<CloudListDataBean>> ViewModleListArchive, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38941i |= 4;
        }
        return true;
    }

    private boolean E(MutableLiveData<LoadBindindData> ViewModleLoadBindData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38941i |= 2;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.fp
    public void A(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f38489f = LoadBindProxy;
        synchronized (this) {
            this.f38941i |= 16;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.fp
    public void B(@Nullable GameDetailEmusCloudViewModle ViewModle) {
        this.f38487d = ViewModle;
        synchronized (this) {
            this.f38941i |= 8;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0074  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        List<CloudListDataBean> value;
        LoadBindindData loadBindindData;
        LoadBindindData value2;
        synchronized (this) {
            j10 = this.f38941i;
            this.f38941i = 0L;
        }
        GameDetailEmusCloudViewModle gameDetailEmusCloudViewModle = this.f38487d;
        LoadBindClickProxy loadBindClickProxy = this.f38489f;
        int i10 = 0;
        if ((78 & j10) != 0) {
            long j11 = j10 & 74;
            if (j11 != 0) {
                MutableLiveData<LoadBindindData> loadBindData = gameDetailEmusCloudViewModle != null ? gameDetailEmusCloudViewModle.getLoadBindData() : null;
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
                MutableLiveData<List<CloudListDataBean>> listArchive = gameDetailEmusCloudViewModle != null ? gameDetailEmusCloudViewModle.getListArchive() : null;
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
            this.f38485b.t(loadBindindData);
            this.f38486c.setVisibility(i10);
        }
        if (j12 != 0) {
            this.f38485b.u(loadBindClickProxy);
        }
        if ((j10 & 76) != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f38486c, value);
        }
        ViewDataBinding.executeBindingsOn(this.f38485b);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f38941i != 0) {
                return true;
            }
            return this.f38485b.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38941i = 64L;
        }
        this.f38485b.invalidateAll();
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
        this.f38485b.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (50 == variableId) {
            B((GameDetailEmusCloudViewModle) variable);
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

    @Override // com.join.android.app.mgsim.wufun.databinding.fp
    public void z(@Nullable RecyclerView.Adapter Adapter) {
        this.f38488e = Adapter;
    }

    private gp(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 3, (c7) bindings[3], (XRecyclerView) bindings[2]);
        this.f38941i = -1L;
        setContainedBinding(this.f38485b);
        RelativeLayout relativeLayout = (RelativeLayout) bindings[0];
        this.f38939g = relativeLayout;
        relativeLayout.setTag(null);
        NestedScrollView nestedScrollView = (NestedScrollView) bindings[1];
        this.f38940h = nestedScrollView;
        nestedScrollView.setTag(null);
        this.f38486c.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
