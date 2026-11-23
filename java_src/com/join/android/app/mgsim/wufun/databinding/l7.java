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
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class l7 extends k7 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f41213g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f41214h = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f41216f;

    public l7(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 2, f41213g, f41214h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f41216f;
            this.f41216f = 0L;
        }
        List<CollectionBeanSub> list = this.f40645c;
        BaseDataBindingAdapter<Object, ViewDataBinding> baseDataBindingAdapter = this.f40646d;
        long j11 = 5 & j10;
        if ((j10 & 6) != 0) {
            this.f40644b.setAdapter(baseDataBindingAdapter);
        }
        if (j11 != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f40644b, list);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41216f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41216f = 4L;
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

    @Override // com.join.android.app.mgsim.wufun.databinding.k7
    public void t(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> Adapter) {
        this.f40646d = Adapter;
        synchronized (this) {
            this.f41216f |= 2;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.k7
    public void u(@Nullable List<CollectionBeanSub> RecyclerviewDatas) {
        this.f40645c = RecyclerviewDatas;
        synchronized (this) {
            this.f41216f |= 1;
        }
        notifyPropertyChanged(39);
        super.requestRebind();
    }

    private l7(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (RecyclerView) bindings[1]);
        this.f41216f = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f41215e = constraintLayout;
        constraintLayout.setTag(null);
        this.f40644b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
