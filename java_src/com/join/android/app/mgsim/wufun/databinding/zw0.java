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
import com.join.kotlin.bindingadapter.ViewBindingFresscoImageKt;
import com.join.kotlin.bindingadapter.ViewBindingTextviewKt;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.ui.userrecom.UserRecomTagView;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.TipBean;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class zw0 extends yw0 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f48467r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f48468s;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48469n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final TextView f48470o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    private final UserRecomTagView f48471p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f48472q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f48468s = sparseIntArray;
        sparseIntArray.put(R.id.gameName, 11);
        sparseIntArray.put(R.id.dv_view, 12);
    }

    public zw0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 13, f48467r, f48468s));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String info;
        String game_name;
        List<TipBean> tag_info;
        String ico_remote;
        String lodingInfo;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        String appSizeText;
        int zipProgress;
        boolean giftShow;
        boolean progressZipShow;
        boolean describeShow;
        boolean downMessageShow;
        boolean tagshow;
        int downloadProgress;
        boolean progresShow;
        synchronized (this) {
            j10 = this.f48472q;
            this.f48472q = 0L;
        }
        CollectionBeanSub collectionBeanSub = this.f47990l;
        AppListItemShowBean appListItemShowBean = this.f47991m;
        String str = null;
        if ((j10 & 5) == 0 || collectionBeanSub == null) {
            info = null;
            game_name = null;
            tag_info = null;
            ico_remote = null;
        } else {
            game_name = collectionBeanSub.getGame_name();
            tag_info = collectionBeanSub.getTag_info();
            ico_remote = collectionBeanSub.getIco_remote();
            info = collectionBeanSub.getInfo();
        }
        long j11 = j10 & 6;
        if (j11 != 0) {
            if (appListItemShowBean != null) {
                giftShow = appListItemShowBean.getGiftShow();
                lodingInfo = appListItemShowBean.getLodingInfo();
                progressZipShow = appListItemShowBean.getProgressZipShow();
                describeShow = appListItemShowBean.getDescribeShow();
                downMessageShow = appListItemShowBean.getDownMessageShow();
                tagshow = appListItemShowBean.getTagshow();
                appSizeText = appListItemShowBean.getAppSizeText();
                downloadProgress = appListItemShowBean.getDownloadProgress();
                progresShow = appListItemShowBean.getProgresShow();
                zipProgress = appListItemShowBean.getZipProgress();
            } else {
                lodingInfo = null;
                appSizeText = null;
                zipProgress = 0;
                giftShow = false;
                progressZipShow = false;
                describeShow = false;
                downMessageShow = false;
                tagshow = false;
                downloadProgress = 0;
                progresShow = false;
            }
            if (j11 != 0) {
                j10 |= giftShow ? 64L : 32L;
            }
            if ((j10 & 6) != 0) {
                j10 |= progressZipShow ? 16L : 8L;
            }
            if ((j10 & 6) != 0) {
                j10 |= describeShow ? 1024L : 512L;
            }
            if ((j10 & 6) != 0) {
                j10 |= downMessageShow ? 16384L : 8192L;
            }
            if ((j10 & 6) != 0) {
                j10 |= tagshow ? 256L : 128L;
            }
            if ((j10 & 6) != 0) {
                j10 |= progresShow ? 4096L : 2048L;
            }
            int i18 = giftShow ? 0 : 8;
            int i19 = progressZipShow ? 0 : 8;
            int i20 = describeShow ? 0 : 8;
            i12 = i18;
            i17 = i19;
            i13 = downMessageShow ? 0 : 8;
            i15 = tagshow ? 0 : 8;
            str = appSizeText;
            i10 = progresShow ? 0 : 8;
            i16 = zipProgress;
            i11 = i20;
            i14 = downloadProgress;
        } else {
            lodingInfo = null;
            i10 = 0;
            i11 = 0;
            i12 = 0;
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
            i17 = 0;
        }
        if ((6 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f47980b, str);
            this.f47983e.setVisibility(i11);
            this.f47985g.setVisibility(i12);
            this.f47986h.setVisibility(i13);
            TextViewBindingAdapter.setText(this.f47987i, lodingInfo);
            this.f48471p.setVisibility(i15);
            this.f47988j.setProgress(i14);
            this.f47988j.setVisibility(i10);
            this.f47989k.setProgress(i16);
            this.f47989k.setVisibility(i17);
        }
        if ((j10 & 5) != 0) {
            ViewBindingFresscoImageKt.simpleDraweeViewBinding(this.f47982d, ico_remote);
            ViewBindingTextviewKt.textViewBinding(this.f47983e, info);
            TextViewBindingAdapter.setText(this.f48470o, game_name);
            this.f48471p.setDatas(tag_info);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f48472q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f48472q = 4L;
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
            t((CollectionBeanSub) variable);
        } else {
            if (28 != variableId) {
                return false;
            }
            u((AppListItemShowBean) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.yw0
    public void t(@Nullable CollectionBeanSub Album) {
        this.f47990l = Album;
        synchronized (this) {
            this.f48472q |= 1;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.yw0
    public void u(@Nullable AppListItemShowBean ListBean) {
        this.f47991m = ListBean;
        synchronized (this) {
            this.f48472q |= 2;
        }
        notifyPropertyChanged(28);
        super.requestRebind();
    }

    private zw0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[7], (DownloadNormalView) bindings[12], (SimpleDraweeView) bindings[1], (TextView) bindings[5], (LinearLayout) bindings[11], (ImageView) bindings[2], (LinearLayout) bindings[6], (TextView) bindings[8], (ProgressBar) bindings[10], (ProgressBar) bindings[9]);
        this.f48472q = -1L;
        this.f47980b.setTag(null);
        this.f47982d.setTag(null);
        this.f47983e.setTag(null);
        this.f47985g.setTag(null);
        this.f47986h.setTag(null);
        this.f47987i.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f48469n = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[3];
        this.f48470o = textView;
        textView.setTag(null);
        UserRecomTagView userRecomTagView = (UserRecomTagView) bindings[4];
        this.f48471p = userRecomTagView;
        userRecomTagView.setTag(null);
        this.f47988j.setTag(null);
        this.f47989k.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
