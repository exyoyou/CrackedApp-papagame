package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class he extends ge {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f39306i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f39307j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final FrameLayout f39308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f39309h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39307j = sparseIntArray;
        sparseIntArray.put(R.id.iv_1, 1);
        sparseIntArray.put(R.id.tv_label_1, 2);
        sparseIntArray.put(R.id.tv_text_1, 3);
        sparseIntArray.put(R.id.tv_btn_1, 4);
        sparseIntArray.put(R.id.iv_btn_1, 5);
    }

    public he(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f39306i, f39307j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39309h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f39309h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39309h = 1L;
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

    private he(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[1], (ImageView) bindings[5], (TextView) bindings[4], (TextView) bindings[2], (TextView) bindings[3]);
        this.f39309h = -1L;
        FrameLayout frameLayout = (FrameLayout) bindings[0];
        this.f39308g = frameLayout;
        frameLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
