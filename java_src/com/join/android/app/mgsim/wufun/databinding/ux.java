package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.CommentDataProgressBean;
import com.join.mgps.customview.MStarBar;

/* JADX INFO: loaded from: classes4.dex */
public class ux extends tx {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45955k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45956l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final TextView f45958f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final FrameLayout f45959g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final ProgressBar f45960h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final TextView f45961i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f45962j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f45956l = sparseIntArray;
        sparseIntArray.put(R.id.container, 6);
    }

    public ux(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 7, f45955k, f45956l));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String userPercent;
        int i10;
        int i11;
        int progress;
        int i12;
        int i13;
        int max;
        int starCount;
        int type;
        synchronized (this) {
            j10 = this.f45962j;
            this.f45962j = 0L;
        }
        CommentDataProgressBean commentDataProgressBean = this.f45475d;
        long j11 = j10 & 3;
        String title = null;
        if (j11 != 0) {
            if (commentDataProgressBean != null) {
                starCount = commentDataProgressBean.getStarCount();
                progress = commentDataProgressBean.getProgress();
                title = commentDataProgressBean.getTitle();
                userPercent = commentDataProgressBean.getUserPercent();
                type = commentDataProgressBean.getType();
                max = commentDataProgressBean.getMax();
            } else {
                userPercent = null;
                max = 0;
                starCount = 0;
                progress = 0;
                type = 0;
            }
            boolean z10 = type == 1;
            boolean z11 = type == 2;
            if (j11 != 0) {
                j10 |= z10 ? 8L : 4L;
            }
            if ((j10 & 3) != 0) {
                j10 |= z11 ? 32L : 16L;
            }
            i13 = z10 ? 0 : 8;
            int i14 = starCount;
            i11 = max;
            i10 = z11 ? 0 : 8;
            i12 = i14;
        } else {
            userPercent = null;
            i10 = 0;
            i11 = 0;
            progress = 0;
            i12 = 0;
            i13 = 0;
        }
        if ((j10 & 3) != 0) {
            this.f45474c.setStarCount(i12);
            TextViewBindingAdapter.setText(this.f45958f, title);
            this.f45958f.setVisibility(i13);
            this.f45959g.setVisibility(i10);
            this.f45960h.setMax(i11);
            this.f45960h.setProgress(progress);
            TextViewBindingAdapter.setText(this.f45961i, userPercent);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45962j != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45962j = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.tx
    public void n(@Nullable CommentDataProgressBean ItemData) {
        this.f45475d = ItemData;
        synchronized (this) {
            this.f45962j |= 1;
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
        n((CommentDataProgressBean) variable);
        return true;
    }

    private ux(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (LinearLayout) bindings[6], (MStarBar) bindings[3]);
        this.f45962j = -1L;
        this.f45474c.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f45957e = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f45958f = textView;
        textView.setTag(null);
        FrameLayout frameLayout = (FrameLayout) bindings[2];
        this.f45959g = frameLayout;
        frameLayout.setTag(null);
        ProgressBar progressBar = (ProgressBar) bindings[4];
        this.f45960h = progressBar;
        progressBar.setTag(null);
        TextView textView2 = (TextView) bindings[5];
        this.f45961i = textView2;
        textView2.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
