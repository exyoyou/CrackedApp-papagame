package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class jc extends ic {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f40177g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f40178h = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40179d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final RecyclerView f40180e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f40181f;

    public jc(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f40177g, f40178h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f40181f;
            this.f40181f = 0L;
        }
        List<BtTagSelecterBean> list = this.f39779b;
        BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter = this.f39780c;
        long j11 = 5 & j10;
        if ((j10 & 6) != 0) {
            this.f40180e.setAdapter(baseDataBindingAdapter);
        }
        if (j11 != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f40180e, list);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f40181f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f40181f = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (39 == variableId) {
            u((List) variable);
            return true;
        }
        if (1 != variableId) {
            return false;
        }
        t((BaseDataBindingAdapter) variable);
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ic
    public void t(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> Adapter) {
        this.f39780c = Adapter;
        synchronized (this) {
            this.f40181f |= 2;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ic
    public void u(@Nullable List<BtTagSelecterBean> RecyclerviewDatas) {
        this.f39779b = RecyclerviewDatas;
        synchronized (this) {
            this.f40181f |= 1;
        }
        notifyPropertyChanged(39);
        super.requestRebind();
    }

    private jc(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0);
        this.f40181f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f40179d = constraintLayout;
        constraintLayout.setTag(null);
        RecyclerView recyclerView = (RecyclerView) bindings[1];
        this.f40180e = recyclerView;
        recyclerView.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
