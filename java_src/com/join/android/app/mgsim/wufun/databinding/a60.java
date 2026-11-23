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
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.search.model.SearchTitleBean;

/* JADX INFO: loaded from: classes4.dex */
public class a60 extends z50 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f35670h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f35671i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f35673g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f35671i = sparseIntArray;
        sparseIntArray.put(R.id.iv_1, 2);
        sparseIntArray.put(R.id.iv_2, 3);
    }

    public a60(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f35670h, f35671i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.f35673g;
            this.f35673g = 0L;
        }
        SearchTitleBean searchTitleBean = this.f48095e;
        long j11 = j10 & 3;
        String title = (j11 == 0 || searchTitleBean == null) ? null : searchTitleBean.getTitle();
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f48094d, title);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f35673g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f35673g = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.z50
    public void n(@Nullable SearchTitleBean ItemData) {
        this.f48095e = ItemData;
        synchronized (this) {
            this.f35673g |= 1;
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
        n((SearchTitleBean) variable);
        return true;
    }

    private a60(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[2], (ImageView) bindings[3], (TextView) bindings[1]);
        this.f35673g = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f35672f = linearLayout;
        linearLayout.setTag(null);
        this.f48094d.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
