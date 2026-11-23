package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.modleregin.viewModle.GameListViewModle;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class lc extends kc {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f41262h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f41263i = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f41265g;

    public lc(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f41262h, f41263i));
    }

    private boolean C(MutableLiveData<List<CommonListMainData>> ViewModleShowDatas, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41265g |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.kc
    public void A(@Nullable XRecyclerView.f RecycleviewListener) {
        this.f40716c = RecycleviewListener;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.kc
    public void B(@Nullable GameListViewModle ViewModle) {
        this.f40718e = ViewModle;
        synchronized (this) {
            this.f41265g |= 8;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0029  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        List<CommonListMainData> value;
        synchronized (this) {
            j10 = this.f41265g;
            this.f41265g = 0L;
        }
        BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter = this.f40717d;
        GameListViewModle gameListViewModle = this.f40718e;
        long j11 = j10 & 29;
        if (j11 == 0) {
            value = null;
        } else {
            MutableLiveData<List<CommonListMainData>> showDatas = gameListViewModle != null ? gameListViewModle.getShowDatas() : null;
            updateLiveDataRegistration(0, showDatas);
            if (showDatas != null) {
                value = showDatas.getValue();
            } else {
                value = null;
            }
        }
        if (j11 != 0) {
            ViewbindingRecycleviewAdapterKt.xrecycleviewadapterBinding(this.f40715b, value, baseDataBindingAdapter, null, null);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41265g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41265g = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId != 0) {
            return false;
        }
        return C((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (40 == variableId) {
            A((XRecyclerView.f) variable);
            return true;
        }
        if (1 == variableId) {
            z((BaseDataBindingAdapter) variable);
            return true;
        }
        if (50 != variableId) {
            return false;
        }
        B((GameListViewModle) variable);
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.kc
    public void z(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> Adapter) {
        this.f40717d = Adapter;
        synchronized (this) {
            this.f41265g |= 4;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    private lc(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 1, (XRecyclerView) bindings[1]);
        this.f41265g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f41264f = constraintLayout;
        constraintLayout.setTag(null);
        this.f40715b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
