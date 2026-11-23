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
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.coupon.ClickProxy;
import com.join.kotlin.ui.coupon.CouponViewModle;
import com.join.mgps.dto.BTGameCouponBean;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class e0 extends d0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f37696m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f37697n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37698i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final c7 f37699j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f37700k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f37701l;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(5);
        f37696m = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"bindding_load_layout_include"}, new int[]{4}, new int[]{R.layout.bindding_load_layout_include});
        f37697n = null;
    }

    public e0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f37696m, f37697n));
    }

    private boolean F(MutableLiveData<ArrayList<BTGameCouponBean>> VmDatas, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f37701l |= 1;
        }
        return true;
    }

    private boolean G(MutableLiveData<LoadBindindData> VmLoadDataBinding, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f37701l |= 2;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d0
    public void B(@Nullable BaseDataBindingAdapter Adapter) {
        this.f37180f = Adapter;
        synchronized (this) {
            this.f37701l |= 16;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d0
    public void C(@Nullable ClickProxy Click) {
        this.f37181g = Click;
        synchronized (this) {
            this.f37701l |= 32;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d0
    public void D(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f37182h = LoadBindProxy;
        synchronized (this) {
            this.f37701l |= 4;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.d0
    public void E(@Nullable CouponViewModle Vm) {
        this.f37179e = Vm;
        synchronized (this) {
            this.f37701l |= 8;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        ClickProxy clickProxy = this.f37181g;
        if (clickProxy != null) {
            clickProxy.onClickBack();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0045  */
    /* JADX WARN: Code duplicated, block: B:48:0x0093  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d0  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String title;
        ArrayList<BTGameCouponBean> value;
        int i10;
        long j11;
        synchronized (this) {
            j10 = this.f37701l;
            this.f37701l = 0L;
        }
        LoadBindClickProxy loadBindClickProxy = this.f37182h;
        CouponViewModle couponViewModle = this.f37179e;
        BaseDataBindingAdapter baseDataBindingAdapter = this.f37180f;
        LoadBindindData value2 = null;
        if ((75 & j10) != 0) {
            title = ((j10 & 72) == 0 || couponViewModle == null) ? null : couponViewModle.getTitle();
            if ((j10 & 73) == 0) {
                value = null;
            } else {
                MutableLiveData<ArrayList<BTGameCouponBean>> datas = couponViewModle != null ? couponViewModle.getDatas() : null;
                updateLiveDataRegistration(0, datas);
                if (datas != null) {
                    value = datas.getValue();
                } else {
                    value = null;
                }
            }
            long j12 = j10 & 74;
            if (j12 != 0) {
                MutableLiveData<LoadBindindData> loadDataBinding = couponViewModle != null ? couponViewModle.getLoadDataBinding() : null;
                updateLiveDataRegistration(1, loadDataBinding);
                value2 = loadDataBinding != null ? loadDataBinding.getValue() : null;
                boolean z10 = (value2 != null ? value2.getShowStatus() : 0) == 1;
                if (j12 != 0) {
                    j10 |= z10 ? 256L : 128L;
                }
                if (!z10) {
                    i10 = 8;
                }
            }
            j11 = j10 & 80;
            if ((j10 & 64) != 0) {
                this.f37176b.setOnClickListener(this.f37700k);
            }
            if ((68 & j10) != 0) {
                this.f37699j.u(loadBindClickProxy);
            }
            if ((74 & j10) != 0) {
                this.f37699j.t(value2);
                this.f37177c.setVisibility(i10);
            }
            if (j11 != 0) {
                this.f37177c.setAdapter(baseDataBindingAdapter);
            }
            if ((j10 & 73) != 0) {
                ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f37177c, value);
            }
            if ((j10 & 72) != 0) {
                TextViewBindingAdapter.setText(this.f37178d, title);
            }
            ViewDataBinding.executeBindingsOn(this.f37699j);
        }
        title = null;
        value = null;
        i10 = 0;
        j11 = j10 & 80;
        if ((j10 & 64) != 0) {
            this.f37176b.setOnClickListener(this.f37700k);
        }
        if ((68 & j10) != 0) {
            this.f37699j.u(loadBindClickProxy);
        }
        if ((74 & j10) != 0) {
            this.f37699j.t(value2);
            this.f37177c.setVisibility(i10);
        }
        if (j11 != 0) {
            this.f37177c.setAdapter(baseDataBindingAdapter);
        }
        if ((j10 & 73) != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f37177c, value);
        }
        if ((j10 & 72) != 0) {
            TextViewBindingAdapter.setText(this.f37178d, title);
        }
        ViewDataBinding.executeBindingsOn(this.f37699j);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f37701l != 0) {
                return true;
            }
            return this.f37699j.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f37701l = 64L;
        }
        this.f37699j.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return F((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 1) {
            return false;
        }
        return G((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f37699j.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (30 == variableId) {
            D((LoadBindClickProxy) variable);
            return true;
        }
        if (54 == variableId) {
            E((CouponViewModle) variable);
            return true;
        }
        if (1 == variableId) {
            B((BaseDataBindingAdapter) variable);
            return true;
        }
        if (8 != variableId) {
            return false;
        }
        C((ClickProxy) variable);
        return true;
    }

    private e0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (ImageView) bindings[1], (RecyclerView) bindings[3], (TextView) bindings[2]);
        this.f37701l = -1L;
        this.f37176b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f37698i = linearLayout;
        linearLayout.setTag(null);
        c7 c7Var = (c7) bindings[4];
        this.f37699j = c7Var;
        setContainedBinding(c7Var);
        this.f37177c.setTag(null);
        this.f37178d.setTag(null);
        setRootTag(root);
        this.f37700k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
