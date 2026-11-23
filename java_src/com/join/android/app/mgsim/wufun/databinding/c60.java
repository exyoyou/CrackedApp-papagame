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
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.kotlin.ui.search.model.SearchTitleBean;

/* JADX INFO: loaded from: classes4.dex */
public class c60 extends b60 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36787g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36788h = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final TextView f36789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final ImageView f36790e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f36791f;

    public c60(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f36787g, f36788h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        boolean more;
        synchronized (this) {
            j10 = this.f36791f;
            this.f36791f = 0L;
        }
        SearchTitleBean searchTitleBean = this.f36241c;
        long j11 = j10 & 3;
        int i10 = 0;
        String title = null;
        if (j11 != 0) {
            if (searchTitleBean != null) {
                more = searchTitleBean.getMore();
                title = searchTitleBean.getTitle();
            } else {
                more = false;
            }
            if (j11 != 0) {
                j10 |= more ? 8L : 4L;
            }
            if (!more) {
                i10 = 8;
            }
        }
        if ((j10 & 3) != 0) {
            TextViewBindingAdapter.setText(this.f36789d, title);
            this.f36790e.setVisibility(i10);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f36791f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36791f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.b60
    public void n(@Nullable SearchTitleBean ItemData) {
        this.f36241c = ItemData;
        synchronized (this) {
            this.f36791f |= 1;
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

    private c60(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ConstraintLayout) bindings[0]);
        this.f36791f = -1L;
        this.f36240b.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f36789d = textView;
        textView.setTag(null);
        ImageView imageView = (ImageView) bindings[2];
        this.f36790e = imageView;
        imageView.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
