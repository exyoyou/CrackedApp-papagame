package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel;
import com.join.mgps.customview.SlidingTabLayout6;

/* JADX INFO: loaded from: classes4.dex */
public class p extends o {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f43141i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f43142j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43143g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f43144h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f43142j = sparseIntArray;
        sparseIntArray.put(R.id.back_image, 1);
        sparseIntArray.put(R.id.tv_title, 2);
        sparseIntArray.put(R.id.stb_view, 3);
        sparseIntArray.put(R.id.vp_view, 4);
    }

    public p(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f43141i, f43142j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f43144h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f43144h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f43144h = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o
    public void n(@Nullable CloudAssetRecordViewModel Vm) {
        this.f42570f = Vm;
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
        n((CloudAssetRecordViewModel) variable);
        return true;
    }

    private p(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[1], (SlidingTabLayout6) bindings[3], (TextView) bindings[2], (ViewPager) bindings[4]);
        this.f43144h = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f43143g = linearLayout;
        linearLayout.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
