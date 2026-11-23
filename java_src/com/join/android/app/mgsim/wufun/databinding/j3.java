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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.kotlin.ui.notice.NoticeViewModle;
import com.join.mgps.dto.BTActivityBean;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class j3 extends i3 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f40056m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f40057n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40058i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final c7 f40059j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f40060k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f40061l;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(5);
        f40056m = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"bindding_load_layout_include"}, new int[]{4}, new int[]{R.layout.bindding_load_layout_include});
        f40057n = null;
    }

    public j3(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f40056m, f40057n));
    }

    private boolean F(MutableLiveData<LoadBindindData> VmLoadDataBinding, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f40061l |= 1;
        }
        return true;
    }

    private boolean G(MutableLiveData<ArrayList<BTActivityBean>> VmNoticeDats, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f40061l |= 2;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i3
    public void B(@Nullable RecyclerView.Adapter Adapter) {
        this.f39629f = Adapter;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i3
    public void C(@Nullable ClickProxy Click) {
        this.f39630g = Click;
        synchronized (this) {
            this.f40061l |= 32;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i3
    public void D(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f39631h = LoadBindProxy;
        synchronized (this) {
            this.f40061l |= 4;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.i3
    public void E(@Nullable NoticeViewModle Vm) {
        this.f39628e = Vm;
        synchronized (this) {
            this.f40061l |= 8;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        ClickProxy clickProxy = this.f39630g;
        if (clickProxy != null) {
            clickProxy.onClickBack();
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0083  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        ArrayList<BTActivityBean> value;
        String title;
        int i10;
        LoadBindindData value2;
        synchronized (this) {
            j10 = this.f40061l;
            this.f40061l = 0L;
        }
        LoadBindClickProxy loadBindClickProxy = this.f39631h;
        NoticeViewModle noticeViewModle = this.f39628e;
        if ((75 & j10) != 0) {
            title = ((j10 & 72) == 0 || noticeViewModle == null) ? null : noticeViewModle.getTitle();
            long j11 = j10 & 73;
            if (j11 != 0) {
                MutableLiveData<LoadBindindData> loadDataBinding = noticeViewModle != null ? noticeViewModle.getLoadDataBinding() : null;
                updateLiveDataRegistration(0, loadDataBinding);
                value2 = loadDataBinding != null ? loadDataBinding.getValue() : null;
                boolean z10 = (value2 != null ? value2.getShowStatus() : 0) == 1;
                if (j11 != 0) {
                    j10 |= z10 ? 256L : 128L;
                }
                i10 = z10 ? 0 : 8;
            } else {
                i10 = 0;
                value2 = null;
            }
            if ((j10 & 74) == 0) {
                value = null;
            } else {
                MutableLiveData<ArrayList<BTActivityBean>> noticeDats = noticeViewModle != null ? noticeViewModle.getNoticeDats() : null;
                updateLiveDataRegistration(1, noticeDats);
                if (noticeDats != null) {
                    value = noticeDats.getValue();
                } else {
                    value = null;
                }
            }
        } else {
            value = null;
            title = null;
            i10 = 0;
            value2 = null;
        }
        if ((j10 & 64) != 0) {
            this.f39625b.setOnClickListener(this.f40060k);
            this.f39626c.setLoadingMoreEnabled(true);
        }
        if ((68 & j10) != 0) {
            this.f40059j.u(loadBindClickProxy);
        }
        if ((73 & j10) != 0) {
            this.f40059j.t(value2);
            this.f39626c.setVisibility(i10);
        }
        if ((74 & j10) != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f39626c, value);
        }
        if ((j10 & 72) != 0) {
            TextViewBindingAdapter.setText(this.f39627d, title);
        }
        ViewDataBinding.executeBindingsOn(this.f40059j);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f40061l != 0) {
                return true;
            }
            return this.f40059j.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f40061l = 64L;
        }
        this.f40059j.invalidateAll();
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
        this.f40059j.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (30 == variableId) {
            D((LoadBindClickProxy) variable);
            return true;
        }
        if (54 == variableId) {
            E((NoticeViewModle) variable);
            return true;
        }
        if (1 == variableId) {
            B((RecyclerView.Adapter) variable);
            return true;
        }
        if (8 != variableId) {
            return false;
        }
        C((ClickProxy) variable);
        return true;
    }

    private j3(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (ImageView) bindings[1], (XRecyclerView) bindings[3], (TextView) bindings[2]);
        this.f40061l = -1L;
        this.f39625b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f40058i = linearLayout;
        linearLayout.setTag(null);
        c7 c7Var = (c7) bindings[4];
        this.f40059j = c7Var;
        setContainedBinding(c7Var);
        this.f39626c.setTag(null);
        this.f39627d.setTag(null);
        setRootTag(root);
        this.f40060k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
