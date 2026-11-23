package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.userrecom.RecomViewModle;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class n5 extends m5 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f42188l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f42189m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42190h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final ImageView f42191i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private a f42192j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f42193k;

    public static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private View.OnClickListener f42194b;

        public a a(View.OnClickListener value) {
            this.f42194b = value;
            if (value == null) {
                return null;
            }
            return this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View arg0) {
            this.f42194b.onClick(arg0);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f42189m = sparseIntArray;
        sparseIntArray.put(R.id.toplayout, 4);
    }

    public n5(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f42188l, f42189m));
    }

    private boolean C(MutableLiveData<ArrayList<CommonListMainData>> VmShowDataList, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f42193k |= 1;
        }
        return true;
    }

    private boolean D(MutableLiveData<String> VmTitleMessage, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f42193k |= 2;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m5
    public void A(@Nullable View.OnClickListener Click) {
        this.f41732g = Click;
        synchronized (this) {
            this.f42193k |= 16;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m5
    public void B(@Nullable RecomViewModle Vm) {
        this.f41730e = Vm;
        synchronized (this) {
            this.f42193k |= 4;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:25:0x0053  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        ArrayList<CommonListMainData> value2;
        synchronized (this) {
            j10 = this.f42193k;
            this.f42193k = 0L;
        }
        RecomViewModle recomViewModle = this.f41730e;
        BaseDataBindingAdapter baseDataBindingAdapter = this.f41731f;
        View.OnClickListener onClickListener = this.f41732g;
        a aVarA = null;
        if ((39 & j10) != 0) {
            if ((j10 & 37) == 0) {
                value2 = null;
            } else {
                MutableLiveData<ArrayList<CommonListMainData>> showDataList = recomViewModle != null ? recomViewModle.getShowDataList() : null;
                updateLiveDataRegistration(0, showDataList);
                if (showDataList != null) {
                    value2 = showDataList.getValue();
                } else {
                    value2 = null;
                }
            }
            if ((j10 & 38) == 0) {
                value = null;
            } else {
                MutableLiveData<String> titleMessage = recomViewModle != null ? recomViewModle.getTitleMessage() : null;
                updateLiveDataRegistration(1, titleMessage);
                if (titleMessage != null) {
                    value = titleMessage.getValue();
                } else {
                    value = null;
                }
            }
        } else {
            value = null;
            value2 = null;
        }
        long j11 = 40 & j10;
        long j12 = 48 & j10;
        if (j12 != 0 && onClickListener != null) {
            a aVar = this.f42192j;
            if (aVar == null) {
                aVar = new a();
                this.f42192j = aVar;
            }
            aVarA = aVar.a(onClickListener);
        }
        if (j12 != 0) {
            this.f42191i.setOnClickListener(aVarA);
        }
        if (j11 != 0) {
            this.f41727b.setAdapter(baseDataBindingAdapter);
        }
        if ((j10 & 37) != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f41727b, value2);
        }
        if ((j10 & 38) != 0) {
            TextViewBindingAdapter.setText(this.f41728c, value);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42193k != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42193k = 32L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return C((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 1) {
            return false;
        }
        return D((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 == variableId) {
            B((RecomViewModle) variable);
            return true;
        }
        if (1 == variableId) {
            z((BaseDataBindingAdapter) variable);
            return true;
        }
        if (8 != variableId) {
            return false;
        }
        A((View.OnClickListener) variable);
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m5
    public void z(@Nullable BaseDataBindingAdapter Adapter) {
        this.f41731f = Adapter;
        synchronized (this) {
            this.f42193k |= 8;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    private n5(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (RecyclerView) bindings[3], (TextView) bindings[1], (RelativeLayout) bindings[4]);
        this.f42193k = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f42190h = linearLayout;
        linearLayout.setTag(null);
        ImageView imageView = (ImageView) bindings[2];
        this.f42191i = imageView;
        imageView.setTag(null);
        this.f41727b.setTag(null);
        this.f41728c.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
