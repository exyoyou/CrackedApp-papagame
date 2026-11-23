package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.AppBean;

/* JADX INFO: loaded from: classes4.dex */
public class d50 extends c50 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f37283h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f37284i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37285f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f37286g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f37284i = sparseIntArray;
        sparseIntArray.put(R.id.dv_view, 3);
    }

    public d50(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f37283h, f37284i));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String game_name;
        String ico_remote;
        synchronized (this) {
            j10 = this.f37286g;
            this.f37286g = 0L;
        }
        AppBean appBean = this.f36783e;
        long j11 = j10 & 3;
        if (j11 == 0 || appBean == null) {
            game_name = null;
            ico_remote = null;
        } else {
            game_name = appBean.getGame_name();
            ico_remote = appBean.getIco_remote();
        }
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f36781c, ico_remote, null, 0);
            TextViewBindingAdapter.setText(this.f36782d, game_name);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f37286g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f37286g = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.c50
    public void n(@Nullable AppBean ItemData) {
        this.f36783e = ItemData;
        synchronized (this) {
            this.f37286g |= 1;
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
        n((AppBean) variable);
        return true;
    }

    private d50(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (DownloadNormalView) bindings[3], (SimpleDraweeView) bindings[1], (TextView) bindings[2]);
        this.f37286g = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f37285f = constraintLayout;
        constraintLayout.setTag(null);
        this.f36781c.setTag(null);
        this.f36782d.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
