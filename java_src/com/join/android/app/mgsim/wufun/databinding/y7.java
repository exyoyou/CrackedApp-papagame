package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewBindingSlidingTablayoutKt;
import com.join.mgps.customview.BtReginSlidinTablayout;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class y7 extends x7 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47611j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47612k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f47614i;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47612k = sparseIntArray;
        sparseIntArray.put(R.id.viewPager, 2);
    }

    public y7(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f47611j, f47612k));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x7
    public void B(@Nullable FragmentManager FragmentManager) {
        this.f47121d = FragmentManager;
        synchronized (this) {
            this.f47614i |= 2;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x7
    public void C(@Nullable List<Fragment> Fragments) {
        this.f47123f = Fragments;
        synchronized (this) {
            this.f47614i |= 1;
        }
        notifyPropertyChanged(17);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x7
    public void D(@Nullable List<String> Titles) {
        this.f47122e = Titles;
        synchronized (this) {
            this.f47614i |= 4;
        }
        notifyPropertyChanged(45);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x7
    public void E(@Nullable ViewPager ViewPager) {
        this.f47124g = ViewPager;
        synchronized (this) {
            this.f47614i |= 8;
        }
        notifyPropertyChanged(51);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f47614i;
            this.f47614i = 0L;
        }
        List<Fragment> list = this.f47123f;
        FragmentManager fragmentManager = this.f47121d;
        List<String> list2 = this.f47122e;
        ViewPager viewPager = this.f47124g;
        if ((j10 & 31) != 0) {
            ViewBindingSlidingTablayoutKt.viewpagertabLayout(this.f47119b, viewPager, list, list2, fragmentManager);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47614i != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47614i = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (17 == variableId) {
            C((List) variable);
        } else if (16 == variableId) {
            B((FragmentManager) variable);
        } else if (45 == variableId) {
            D((List) variable);
        } else {
            if (51 != variableId) {
                return false;
            }
            E((ViewPager) variable);
        }
        return true;
    }

    private y7(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (BtReginSlidinTablayout) bindings[1], (ViewPager) bindings[2]);
        this.f47614i = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f47613h = linearLayout;
        linearLayout.setTag(null);
        this.f47119b.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
