package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class h50 extends g50 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f39177g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f39178h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f39179f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39178h = sparseIntArray;
        sparseIntArray.put(R.id.appIcon, 1);
        sparseIntArray.put(R.id.appName, 2);
        sparseIntArray.put(R.id.selectbutn, 3);
    }

    public h50(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f39177g, f39178h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39179f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f39179f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39179f = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        return true;
    }

    private h50(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1], (TextView) bindings[2], (ConstraintLayout) bindings[0], (ImageView) bindings[3]);
        this.f39179f = -1L;
        this.f38721d.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
