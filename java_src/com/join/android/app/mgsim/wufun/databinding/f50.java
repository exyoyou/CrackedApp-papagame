package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
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
public class f50 extends e50 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38270q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38271r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38272o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f38273p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38271r = sparseIntArray;
        sparseIntArray.put(R.id.gameName, 3);
        sparseIntArray.put(R.id.giftPackageSwich, 4);
        sparseIntArray.put(R.id.tipsLayout, 5);
        sparseIntArray.put(R.id.tv_info, 6);
        sparseIntArray.put(R.id.linearLayout2, 7);
        sparseIntArray.put(R.id.tv_app_size, 8);
        sparseIntArray.put(R.id.loding_info, 9);
        sparseIntArray.put(R.id.progressBarZip, 10);
        sparseIntArray.put(R.id.progressBar, 11);
        sparseIntArray.put(R.id.dv_view, 12);
    }

    public f50(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 13, f38270q, f38271r));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String game_name;
        String ico_remote;
        synchronized (this) {
            j10 = this.f38273p;
            this.f38273p = 0L;
        }
        AppBean appBean = this.f37799n;
        long j11 = j10 & 3;
        if (j11 == 0 || appBean == null) {
            game_name = null;
            ico_remote = null;
        } else {
            game_name = appBean.getGame_name();
            ico_remote = appBean.getIco_remote();
        }
        if (j11 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f37788c, ico_remote, null, 0);
            TextViewBindingAdapter.setText(this.f37797l, game_name);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f38273p != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38273p = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.e50
    public void n(@Nullable AppBean ItemData) {
        this.f37799n = ItemData;
        synchronized (this) {
            this.f38273p |= 1;
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

    private f50(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (DownloadNormalView) bindings[12], (SimpleDraweeView) bindings[1], (LinearLayout) bindings[3], (ImageView) bindings[4], (LinearLayout) bindings[7], (TextView) bindings[9], (ProgressBar) bindings[11], (ProgressBar) bindings[10], (LinearLayout) bindings[5], (TextView) bindings[8], (TextView) bindings[2], (TextView) bindings[6]);
        this.f38273p = -1L;
        this.f37788c.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f38272o = constraintLayout;
        constraintLayout.setTag(null);
        this.f37797l.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
