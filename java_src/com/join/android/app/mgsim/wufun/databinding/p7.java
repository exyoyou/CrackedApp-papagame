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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.modleregin.viewModle.BtReginModle;
import com.join.kotlin.ui.notice.ClickProxy;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class p7 extends o7 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f43256n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f43257o;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43258j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final c7 f43259k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43260l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f43261m;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(5);
        f43256n = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"bindding_load_layout_include"}, new int[]{4}, new int[]{R.layout.bindding_load_layout_include});
        f43257o = null;
    }

    public p7(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f43256n, f43257o));
    }

    private boolean I(MutableLiveData<LoadBindindData> ViewModleLoadBindData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f43261m |= 2;
        }
        return true;
    }

    private boolean J(MutableLiveData<Integer> ViewModleRecycleViewStatus, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f43261m |= 1;
        }
        return true;
    }

    private boolean K(MutableLiveData<List<CommonListMainData>> ViewModleShowDatas, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f43261m |= 4;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o7
    public void D(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> Adapter) {
        this.f42704f = Adapter;
        synchronized (this) {
            this.f43261m |= 64;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o7
    public void E(@Nullable ClickProxy Click) {
        this.f42705g = Click;
        synchronized (this) {
            this.f43261m |= 128;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o7
    public void F(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f42706h = LoadBindProxy;
        synchronized (this) {
            this.f43261m |= 8;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o7
    public void G(@Nullable XRecyclerView.f RecycleviewListener) {
        this.f42707i = RecycleviewListener;
        synchronized (this) {
            this.f43261m |= 32;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o7
    public void H(@Nullable BtReginModle ViewModle) {
        this.f42703e = ViewModle;
        synchronized (this) {
            this.f43261m |= 16;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        ClickProxy clickProxy = this.f42705g;
        if (clickProxy != null) {
            clickProxy.onClickBack();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0053 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0055  */
    /* JADX WARN: Code duplicated, block: B:25:0x005c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0063  */
    /* JADX WARN: Code duplicated, block: B:29:0x006a  */
    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0072  */
    /* JADX WARN: Code duplicated, block: B:35:0x0076  */
    /* JADX WARN: Code duplicated, block: B:37:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x007b  */
    /* JADX WARN: Code duplicated, block: B:39:0x007e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0084  */
    /* JADX WARN: Code duplicated, block: B:43:0x0086  */
    /* JADX WARN: Code duplicated, block: B:44:0x0089  */
    /* JADX WARN: Code duplicated, block: B:49:0x009a  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String title;
        Integer value;
        List<CommonListMainData> value2;
        int i10;
        LoadBindindData value3;
        long j11;
        MutableLiveData<LoadBindindData> loadBindData;
        int showStatus;
        boolean z10;
        long j12;
        MutableLiveData<Integer> recycleViewStatus;
        MutableLiveData<List<CommonListMainData>> showDatas;
        synchronized (this) {
            j10 = this.f43261m;
            this.f43261m = 0L;
        }
        LoadBindClickProxy loadBindClickProxy = this.f42706h;
        BtReginModle btReginModle = this.f42703e;
        XRecyclerView.f fVar = this.f42707i;
        BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter = this.f42704f;
        if ((375 & j10) != 0) {
            if ((j10 & 373) != 0) {
                if (btReginModle != null) {
                    recycleViewStatus = btReginModle.getRecycleViewStatus();
                    showDatas = btReginModle.getShowDatas();
                } else {
                    recycleViewStatus = null;
                    showDatas = null;
                }
                updateLiveDataRegistration(0, recycleViewStatus);
                updateLiveDataRegistration(2, showDatas);
                value = recycleViewStatus != null ? recycleViewStatus.getValue() : null;
                value2 = showDatas != null ? showDatas.getValue() : null;
                j11 = j10 & 274;
                if (j11 != 0) {
                    if (btReginModle != null) {
                        loadBindData = btReginModle.getLoadBindData();
                    } else {
                        loadBindData = null;
                    }
                    updateLiveDataRegistration(1, loadBindData);
                    if (loadBindData != null) {
                        value3 = loadBindData.getValue();
                    } else {
                        value3 = null;
                    }
                    if (value3 != null) {
                        showStatus = value3.getShowStatus();
                    } else {
                        showStatus = 0;
                    }
                    z10 = showStatus == 1;
                    if (j11 != 0) {
                        if (z10) {
                            j12 = 1024;
                        } else {
                            j12 = 512;
                        }
                        j10 |= j12;
                    }
                    if (z10) {
                        i10 = 0;
                    } else {
                        i10 = 8;
                    }
                } else {
                    i10 = 0;
                    value3 = null;
                }
                if ((j10 & 272) != 0 || btReginModle == null) {
                    title = null;
                } else {
                    title = btReginModle.getTitle();
                }
            } else {
                value = null;
            }
            j11 = j10 & 274;
            if (j11 != 0) {
                if (btReginModle != null) {
                    loadBindData = btReginModle.getLoadBindData();
                } else {
                    loadBindData = null;
                }
                updateLiveDataRegistration(1, loadBindData);
                if (loadBindData != null) {
                    value3 = loadBindData.getValue();
                } else {
                    value3 = null;
                }
                if (value3 != null) {
                    showStatus = value3.getShowStatus();
                } else {
                    showStatus = 0;
                }
                if (showStatus == 1) {
                }
                if (j11 != 0) {
                    if (z10) {
                        j12 = 1024;
                    } else {
                        j12 = 512;
                    }
                    j10 |= j12;
                }
                if (z10) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
            } else {
                i10 = 0;
                value3 = null;
            }
            if ((j10 & 272) != 0) {
                title = null;
            } else {
                title = null;
            }
        } else {
            title = null;
            value = null;
            value2 = null;
            i10 = 0;
            value3 = null;
        }
        long j13 = j10 & 373;
        if ((256 & j10) != 0) {
            this.f42700b.setOnClickListener(this.f43260l);
        }
        if ((274 & j10) != 0) {
            this.f43259k.t(value3);
            this.f42701c.setVisibility(i10);
        }
        if ((264 & j10) != 0) {
            this.f43259k.u(loadBindClickProxy);
        }
        if (j13 != 0) {
            ViewbindingRecycleviewAdapterKt.xrecycleviewadapterBinding(this.f42701c, value2, baseDataBindingAdapter, value, fVar);
        }
        if ((j10 & 272) != 0) {
            TextViewBindingAdapter.setText(this.f42702d, title);
        }
        ViewDataBinding.executeBindingsOn(this.f43259k);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f43261m != 0) {
                return true;
            }
            return this.f43259k.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f43261m = 256L;
        }
        this.f43259k.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return J((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return I((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 2) {
            return false;
        }
        return K((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f43259k.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (30 == variableId) {
            F((LoadBindClickProxy) variable);
            return true;
        }
        if (50 == variableId) {
            H((BtReginModle) variable);
            return true;
        }
        if (40 == variableId) {
            G((XRecyclerView.f) variable);
            return true;
        }
        if (1 == variableId) {
            D((BaseDataBindingAdapter) variable);
            return true;
        }
        if (8 != variableId) {
            return false;
        }
        E((ClickProxy) variable);
        return true;
    }

    private p7(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 3, (ImageView) bindings[1], (XRecyclerView) bindings[3], (TextView) bindings[2]);
        this.f43261m = -1L;
        this.f42700b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f43258j = linearLayout;
        linearLayout.setTag(null);
        c7 c7Var = (c7) bindings[4];
        this.f43259k = c7Var;
        setContainedBinding(c7Var);
        this.f42701c.setTag(null);
        this.f42702d.setTag(null);
        setRootTag(root);
        this.f43260l = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
