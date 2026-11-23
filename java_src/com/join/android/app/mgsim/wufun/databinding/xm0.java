package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle;
import com.join.kotlin.ui.cloudarchive.adapter.MyPagerAdapter;

/* JADX INFO: loaded from: classes4.dex */
public class xm0 extends wm0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47306i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47307j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f47309h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47307j = sparseIntArray;
        sparseIntArray.put(R.id.title, 1);
        sparseIntArray.put(R.id.tabLayout, 2);
        sparseIntArray.put(R.id.viewPager, 3);
    }

    public xm0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f47306i, f47307j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f47309h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47309h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47309h = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (1 == variableId) {
            t((MyPagerAdapter) variable);
            return true;
        }
        if (50 != variableId) {
            return false;
        }
        u((ModGameCloudViewModle) variable);
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.wm0
    public void t(@Nullable MyPagerAdapter Adapter) {
        this.f46870f = Adapter;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.wm0
    public void u(@Nullable ModGameCloudViewModle ViewModle) {
        this.f46869e = ViewModle;
    }

    private xm0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SlidingTabLayout) bindings[2], (RelativeLayout) bindings[1], (ViewPager) bindings[3]);
        this.f47309h = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) bindings[0];
        this.f47308g = relativeLayout;
        relativeLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
