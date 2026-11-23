package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
public class ct0 extends bt0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f37103i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f37104j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37105f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final c7 f37106g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f37107h;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(3);
        f37103i = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"bindding_load_layout_include"}, new int[]{2}, new int[]{R.layout.bindding_load_layout_include});
        f37104j = null;
    }

    public ct0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f37103i, f37104j));
    }

    private boolean C(MutableLiveData<List<CommonListMainData>> ViewModleListArchive, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f37107h |= 2;
        }
        return true;
    }

    private boolean D(MutableLiveData<LoadBindindData> ViewModleLoadBindData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f37107h |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.bt0
    public void A(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f36576e = LoadBindProxy;
        synchronized (this) {
            this.f37107h |= 8;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.bt0
    public void B(@Nullable ModGameCloudViewModle ViewModle) {
        this.f36574c = ViewModle;
        synchronized (this) {
            this.f37107h |= 4;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        List<CommonListMainData> list;
        LoadBindindData value;
        synchronized (this) {
            j10 = this.f37107h;
            this.f37107h = 0L;
        }
        ModGameCloudViewModle modGameCloudViewModle = this.f36574c;
        LoadBindClickProxy loadBindClickProxy = this.f36576e;
        LoadBindindData loadBindindData = null;
        value = null;
        List<CommonListMainData> value2 = null;
        int i10 = 0;
        if ((39 & j10) != 0) {
            long j11 = j10 & 37;
            if (j11 != 0) {
                MutableLiveData<LoadBindindData> loadBindData = modGameCloudViewModle != null ? modGameCloudViewModle.getLoadBindData() : null;
                updateLiveDataRegistration(0, loadBindData);
                value = loadBindData != null ? loadBindData.getValue() : null;
                boolean z10 = (value != null ? value.getShowStatus() : 0) == 1;
                if (j11 != 0) {
                    j10 |= z10 ? 128L : 64L;
                }
                if (!z10) {
                    i10 = 8;
                }
            } else {
                value = null;
            }
            if ((j10 & 38) != 0) {
                MutableLiveData<List<CommonListMainData>> listArchive = modGameCloudViewModle != null ? modGameCloudViewModle.getListArchive() : null;
                updateLiveDataRegistration(1, listArchive);
                if (listArchive != null) {
                    value2 = listArchive.getValue();
                }
            }
            list = value2;
            loadBindindData = value;
        } else {
            list = null;
        }
        long j12 = 40 & j10;
        if ((j10 & 37) != 0) {
            this.f37106g.t(loadBindindData);
            this.f36573b.setVisibility(i10);
        }
        if (j12 != 0) {
            this.f37106g.u(loadBindClickProxy);
        }
        if ((j10 & 38) != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f36573b, list);
        }
        ViewDataBinding.executeBindingsOn(this.f37106g);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f37107h != 0) {
                return true;
            }
            return this.f37106g.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f37107h = 32L;
        }
        this.f37106g.invalidateAll();
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
        this.f37106g.setLifecycleOwner(lifecycleOwner);
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

    @Override // com.join.android.app.mgsim.wufun.databinding.bt0
    public void z(@Nullable RecyclerView.Adapter Adapter) {
        this.f36575d = Adapter;
    }

    private ct0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (XRecyclerView) bindings[1]);
        this.f37107h = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) bindings[0];
        this.f37105f = relativeLayout;
        relativeLayout.setTag(null);
        c7 c7Var = (c7) bindings[2];
        this.f37106g = c7Var;
        setContainedBinding(c7Var);
        this.f36573b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
