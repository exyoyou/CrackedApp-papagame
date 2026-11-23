package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class h10 extends g10 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f39119g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f39120h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39121e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f39122f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39120h = sparseIntArray;
        sparseIntArray.put(R.id.divider, 2);
    }

    public h10(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f39119g, f39120h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f39122f;
            this.f39122f = 0L;
        }
        String str = this.f38661d;
        if ((j10 & 3) != 0) {
            TextViewBindingAdapter.setText(this.f38660c, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f39122f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39122f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.g10
    public void n(@Nullable String ItemData) {
        this.f38661d = ItemData;
        synchronized (this) {
            this.f39122f |= 1;
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

    private h10(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (View) bindings[2], (TextView) bindings[1]);
        this.f39122f = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f39121e = linearLayout;
        linearLayout.setTag(null);
        this.f38660c.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
