package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel;
import com.join.mgps.customview.ViewPagerCompat;
import com.join.mgps.lib.statusbar.StatusBarView;

/* JADX INFO: loaded from: classes4.dex */
public class h3 extends g3 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f39143n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f39144o;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39145l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f39146m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39144o = sparseIntArray;
        sparseIntArray.put(R.id.v_status, 1);
        sparseIntArray.put(R.id.iv_1, 2);
        sparseIntArray.put(R.id.iv_back, 3);
        sparseIntArray.put(R.id.tab_layout, 4);
        sparseIntArray.put(R.id.iv_tab_1, 5);
        sparseIntArray.put(R.id.iv_tab_2, 6);
        sparseIntArray.put(R.id.iv_tab_3, 7);
        sparseIntArray.put(R.id.iv_tab_4, 8);
        sparseIntArray.put(R.id.view_pager, 9);
    }

    public h3(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 10, f39143n, f39144o));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f39146m = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f39146m != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39146m = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.g3
    public void n(@Nullable NostalgiaGameViewModel Vm) {
        this.f38694k = Vm;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 != variableId) {
            return false;
        }
        n((NostalgiaGameViewModel) variable);
        return true;
    }

    private h3(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[2], (ImageView) bindings[3], (ImageView) bindings[5], (ImageView) bindings[6], (ImageView) bindings[7], (ImageView) bindings[8], (TabLayout) bindings[4], (StatusBarView) bindings[1], (ViewPagerCompat) bindings[9]);
        this.f39146m = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f39145l = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
