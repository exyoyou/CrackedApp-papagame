package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;

/* JADX INFO: loaded from: classes4.dex */
public class jy extends iy {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f40479e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f40480f = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f40481d;

    public jy(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 1, f40479e, f40480f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f40481d;
            this.f40481d = 0L;
        }
        String str = this.f39985c;
        if ((j10 & 3) != 0) {
            TextViewBindingAdapter.setText(this.f39984b, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f40481d != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f40481d = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.iy
    public void n(@Nullable String ItemData) {
        this.f39985c = ItemData;
        synchronized (this) {
            this.f40481d |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 != variableId) {
            return false;
        }
        n((String) variable);
        return true;
    }

    private jy(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[0]);
        this.f40481d = -1L;
        this.f39984b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
