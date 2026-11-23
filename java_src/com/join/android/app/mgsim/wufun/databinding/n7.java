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
import com.join.kotlin.bindingadapter.ViewBindingTextviewKt;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public class n7 extends m7 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f42209r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f42210s;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42211n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final TextView f42212o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    private final TextView f42213p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f42214q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f42210s = sparseIntArray;
        sparseIntArray.put(R.id.gameName, 11);
        sparseIntArray.put(R.id.dv_view, 12);
    }

    public n7(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 13, f42209r, f42210s));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String iconGif;
        String icon;
        String tags;
        String info;
        String gameName;
        int i10;
        int zipProgress;
        String str;
        int i11;
        int i12;
        int i13;
        String str2;
        int i14;
        int i15;
        int i16;
        boolean giftShow;
        String lodingInfo;
        String str3;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int downloadProgress;
        boolean progresShow;
        synchronized (this) {
            j10 = this.f42214q;
            this.f42214q = 0L;
        }
        BtGameListItem btGameListItem = this.f41775l;
        AppListItemShowBean appListItemShowBean = this.f41776m;
        if ((j10 & 5) == 0 || btGameListItem == null) {
            iconGif = null;
            icon = null;
            tags = null;
            info = null;
            gameName = null;
        } else {
            icon = btGameListItem.getIcon();
            tags = btGameListItem.getTags();
            info = btGameListItem.getInfo();
            gameName = btGameListItem.getGameName();
            iconGif = btGameListItem.getIconGif();
        }
        long j11 = j10 & 6;
        if (j11 != 0) {
            if (appListItemShowBean != null) {
                giftShow = appListItemShowBean.getGiftShow();
                lodingInfo = appListItemShowBean.getLodingInfo();
                boolean progressZipShow = appListItemShowBean.getProgressZipShow();
                boolean describeShow = appListItemShowBean.getDescribeShow();
                boolean downMessageShow = appListItemShowBean.getDownMessageShow();
                boolean tagshow = appListItemShowBean.getTagshow();
                String appSizeText = appListItemShowBean.getAppSizeText();
                downloadProgress = appListItemShowBean.getDownloadProgress();
                progresShow = appListItemShowBean.getProgresShow();
                zipProgress = appListItemShowBean.getZipProgress();
                z10 = progressZipShow;
                str3 = appSizeText;
                z13 = tagshow;
                z12 = downMessageShow;
                z11 = describeShow;
            } else {
                zipProgress = 0;
                giftShow = false;
                lodingInfo = null;
                str3 = null;
                z10 = false;
                z11 = false;
                z12 = false;
                z13 = false;
                downloadProgress = 0;
                progresShow = false;
            }
            if (j11 != 0) {
                j10 |= giftShow ? 64L : 32L;
            }
            if ((j10 & 6) != 0) {
                j10 |= z10 ? 16L : 8L;
            }
            if ((j10 & 6) != 0) {
                j10 |= z11 ? 1024L : 512L;
            }
            if ((j10 & 6) != 0) {
                j10 |= z12 ? 16384L : 8192L;
            }
            if ((j10 & 6) != 0) {
                j10 |= z13 ? 256L : 128L;
            }
            if ((j10 & 6) != 0) {
                j10 |= progresShow ? 4096L : 2048L;
            }
            int i17 = giftShow ? 0 : 8;
            int i18 = z10 ? 0 : 8;
            int i19 = z11 ? 0 : 8;
            int i20 = z12 ? 0 : 8;
            i11 = i17;
            str = lodingInfo;
            str2 = str3;
            i10 = i20;
            i12 = z13 ? 0 : 8;
            i13 = progresShow ? 0 : 8;
            i14 = i19;
            i15 = downloadProgress;
            i16 = i18;
        } else {
            i10 = 0;
            zipProgress = 0;
            str = null;
            i11 = 0;
            i12 = 0;
            i13 = 0;
            str2 = null;
            i14 = 0;
            i15 = 0;
            i16 = 0;
        }
        if ((6 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f41765b, str2);
            this.f41768e.setVisibility(i14);
            this.f41770g.setVisibility(i11);
            this.f41771h.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f41772i, str);
            this.f42213p.setVisibility(i12);
            this.f41773j.setProgress(i15);
            this.f41773j.setVisibility(i13);
            this.f41774k.setProgress(zipProgress);
            this.f41774k.setVisibility(i16);
        }
        if ((j10 & 5) != 0) {
            SimpleDrawableViewKt.loadUrl(this.f41767d, icon, iconGif, 0);
            ViewBindingTextviewKt.textViewBinding(this.f41768e, info);
            TextViewBindingAdapter.setText(this.f42212o, gameName);
            TextViewBindingAdapter.setText(this.f42213p, tags);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42214q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42214q = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (3 == variableId) {
            t((BtGameListItem) variable);
        } else {
            if (28 != variableId) {
                return false;
            }
            u((AppListItemShowBean) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m7
    public void t(@Nullable BtGameListItem Album) {
        this.f41775l = Album;
        synchronized (this) {
            this.f42214q |= 1;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m7
    public void u(@Nullable AppListItemShowBean ListBean) {
        this.f41776m = ListBean;
        synchronized (this) {
            this.f42214q |= 2;
        }
        notifyPropertyChanged(28);
        super.requestRebind();
    }

    private n7(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[7], (DownloadNormalView) bindings[12], (SimpleDraweeView) bindings[1], (TextView) bindings[5], (LinearLayout) bindings[11], (ImageView) bindings[2], (LinearLayout) bindings[6], (TextView) bindings[8], (ProgressBar) bindings[10], (ProgressBar) bindings[9]);
        this.f42214q = -1L;
        this.f41765b.setTag(null);
        this.f41767d.setTag(null);
        this.f41768e.setTag(null);
        this.f41770g.setTag(null);
        this.f41771h.setTag(null);
        this.f41772i.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f42211n = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[3];
        this.f42212o = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[4];
        this.f42213p = textView2;
        textView2.setTag(null);
        this.f41773j.setTag(null);
        this.f41774k.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
