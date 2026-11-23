package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;

/* JADX INFO: loaded from: classes4.dex */
public class pm0 extends om0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f43431y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f43432z;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43433p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f43434q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final View f43435r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43436s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43437t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43438u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43439v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f43440w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f43441x;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f43432z = sparseIntArray;
        sparseIntArray.put(R.id.messageLayout, 12);
        sparseIntArray.put(R.id.more, 13);
    }

    public pm0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 14, f43431y, f43432z));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.om0
    public void A(@Nullable Boolean IsChoice) {
        this.f42973o = IsChoice;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.om0
    public void B(@Nullable ArchiveData ItemData) {
        this.f42971m = ItemData;
        synchronized (this) {
            this.f43441x |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            ArchiveData archiveData = this.f42971m;
            OnClickArchiveListener onClickArchiveListener = this.f42972n;
            if (onClickArchiveListener != null) {
                if (archiveData != null) {
                    onClickArchiveListener.onClickImage(archiveData.getCoverLocation());
                    return;
                }
                return;
            }
            return;
        }
        if (sourceId == 2) {
            ArchiveData archiveData2 = this.f42971m;
            OnClickArchiveListener onClickArchiveListener2 = this.f42972n;
            if (onClickArchiveListener2 != null) {
                onClickArchiveListener2.onPraise(archiveData2);
                return;
            }
            return;
        }
        if (sourceId == 3) {
            ArchiveData archiveData3 = this.f42971m;
            OnClickArchiveListener onClickArchiveListener3 = this.f42972n;
            if (onClickArchiveListener3 != null) {
                onClickArchiveListener3.onClickDislike(archiveData3);
                return;
            }
            return;
        }
        if (sourceId == 4) {
            ArchiveData archiveData4 = this.f42971m;
            OnClickArchiveListener onClickArchiveListener4 = this.f42972n;
            if (onClickArchiveListener4 != null) {
                onClickArchiveListener4.onClickRun(archiveData4);
                return;
            }
            return;
        }
        if (sourceId != 5) {
            return;
        }
        ArchiveData archiveData5 = this.f42971m;
        OnClickArchiveListener onClickArchiveListener5 = this.f42972n;
        if (onClickArchiveListener5 != null) {
            onClickArchiveListener5.onClickMore(callbackArg_0, archiveData5);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        long j11;
        String str;
        Drawable drawable;
        int i10;
        String str2;
        int i11;
        String strValueOf;
        String str3;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        String str4;
        int i12;
        String coverLocation;
        String str5;
        int userId;
        int i13;
        int status;
        String id2;
        int i14;
        int i15;
        int likeCount;
        int isFirstRun;
        String avatar;
        int negativeCount;
        String nickname;
        String archiveDesc;
        String showText;
        Context context;
        int i16;
        Context context2;
        int i17;
        Context context3;
        int i18;
        synchronized (this) {
            j10 = this.f43441x;
            this.f43441x = 0L;
        }
        ArchiveData archiveData = this.f42971m;
        long j12 = j10 & 9;
        if (j12 != 0) {
            if (archiveData != null) {
                status = archiveData.getStatus();
                id2 = archiveData.getId();
                likeCount = archiveData.getLikeCount();
                isFirstRun = archiveData.getIsFirstRun();
                coverLocation = archiveData.getCoverLocation();
                avatar = archiveData.getAvatar();
                int isLike = archiveData.getIsLike();
                negativeCount = archiveData.getNegativeCount();
                nickname = archiveData.getNickname();
                archiveDesc = archiveData.getArchiveDesc();
                int isUnLike = archiveData.getIsUnLike();
                showText = archiveData.getShowText();
                int showType = archiveData.getShowType();
                userId = archiveData.getUserId();
                i14 = isLike;
                i15 = isUnLike;
                i13 = showType;
            } else {
                userId = 0;
                i13 = 0;
                status = 0;
                id2 = null;
                i14 = 0;
                i15 = 0;
                likeCount = 0;
                isFirstRun = 0;
                coverLocation = null;
                avatar = null;
                negativeCount = 0;
                nickname = null;
                archiveDesc = null;
                showText = null;
            }
            boolean z10 = status == 8;
            strValueOf = String.valueOf(likeCount);
            boolean z11 = isFirstRun == 1;
            boolean z12 = coverLocation == null;
            boolean z13 = i14 == 1;
            String strValueOf2 = String.valueOf(negativeCount);
            boolean z14 = i15 == 1;
            boolean z15 = i13 == 1;
            String strValueOf3 = String.valueOf(userId);
            if (j12 != 0) {
                j10 |= z10 ? 2048L : 1024L;
            }
            if ((j10 & 9) != 0) {
                j10 |= z11 ? 32L : 16L;
            }
            if ((j10 & 9) != 0) {
                j10 |= z12 ? 512L : 256L;
            }
            if ((j10 & 9) != 0) {
                j10 |= z13 ? 32768L : 16384L;
            }
            if ((j10 & 9) != 0) {
                j10 |= z14 ? 131072L : 65536L;
            }
            if ((j10 & 9) != 0) {
                j10 |= z15 ? 8192L : 4096L;
            }
            drawable = AppCompatResources.getDrawable(this.f42968j.getContext(), z10 ? R.drawable.mod_start_normal_back : R.drawable.mod_download_normal_back);
            i11 = z11 ? 0 : 8;
            int i19 = z12 ? 8 : 0;
            if (z13) {
                context = this.f42966h.getContext();
                i16 = R.drawable.cloud_parised_icon;
            } else {
                context = this.f42966h.getContext();
                i16 = R.drawable.cloud_parise_icon;
            }
            drawable2 = AppCompatResources.getDrawable(context, i16);
            if (z14) {
                context2 = this.f42961c.getContext();
                i17 = R.drawable.dislike_pressed;
            } else {
                context2 = this.f42961c.getContext();
                i17 = R.drawable.dislike_normal;
            }
            drawable3 = AppCompatResources.getDrawable(context2, i17);
            i10 = z15 ? 8 : 0;
            boolean zEquals = id2 != null ? id2.equals(strValueOf3) : false;
            if ((j10 & 9) != 0) {
                j10 |= zEquals ? 128L : 64L;
            }
            if (zEquals) {
                context3 = this.f43433p.getContext();
                i18 = R.drawable.mod_archive_local_back;
            } else {
                context3 = this.f43433p.getContext();
                i18 = R.drawable.mod_archive_item_back;
            }
            Drawable drawable5 = AppCompatResources.getDrawable(context3, i18);
            i12 = i19;
            str3 = strValueOf2;
            str2 = archiveDesc;
            str4 = showText;
            drawable4 = drawable5;
            str = avatar;
            str5 = nickname;
            j11 = 9;
        } else {
            j11 = 9;
            str = null;
            drawable = null;
            i10 = 0;
            str2 = null;
            i11 = 0;
            strValueOf = null;
            str3 = null;
            drawable2 = null;
            drawable3 = null;
            drawable4 = null;
            str4 = null;
            i12 = 0;
            coverLocation = null;
            str5 = null;
        }
        long j13 = j10 & j11;
        long j14 = j10;
        if (j13 != 0) {
            TextViewBindingAdapter.setText(this.f42960b, str2);
            ImageViewBindingAdapter.setImageDrawable(this.f42961c, drawable3);
            TextViewBindingAdapter.setText(this.f42962d, str3);
            ViewBindingAdapter.setBackground(this.f43433p, drawable4);
            this.f43434q.setVisibility(i12);
            SimpleDrawableViewKt.loadUrl(this.f43434q, coverLocation, null, 0);
            this.f43435r.setVisibility(i11);
            this.f42965g.setVisibility(i10);
            ImageViewBindingAdapter.setImageDrawable(this.f42966h, drawable2);
            TextViewBindingAdapter.setText(this.f42967i, strValueOf);
            ViewBindingAdapter.setBackground(this.f42968j, drawable);
            TextViewBindingAdapter.setText(this.f42968j, str4);
            SimpleDrawableViewKt.loadUrl(this.f42969k, str, null, 0);
            TextViewBindingAdapter.setText(this.f42970l, str5);
        }
        if ((j14 & 8) != 0) {
            this.f42961c.setOnClickListener(this.f43439v);
            this.f43434q.setOnClickListener(this.f43436s);
            this.f42965g.setOnClickListener(this.f43437t);
            this.f42966h.setOnClickListener(this.f43438u);
            this.f42968j.setOnClickListener(this.f43440w);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f43441x != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f43441x = 8L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 == variableId) {
            B((ArchiveData) variable);
        } else if (9 == variableId) {
            z((OnClickArchiveListener) variable);
        } else {
            if (22 != variableId) {
                return false;
            }
            A((Boolean) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.om0
    public void z(@Nullable OnClickArchiveListener ClickListener) {
        this.f42972n = ClickListener;
        synchronized (this) {
            this.f43441x |= 2;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    private pm0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[2], (ImageView) bindings[7], (TextView) bindings[8], (RelativeLayout) bindings[12], (TextView) bindings[13], (ImageView) bindings[11], (ImageView) bindings[5], (TextView) bindings[6], (TextView) bindings[9], (SimpleDraweeView) bindings[3], (TextView) bindings[4]);
        this.f43441x = -1L;
        this.f42960b.setTag(null);
        this.f42961c.setTag(null);
        this.f42962d.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f43433p = linearLayout;
        linearLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bindings[1];
        this.f43434q = simpleDraweeView;
        simpleDraweeView.setTag(null);
        View view = (View) bindings[10];
        this.f43435r = view;
        view.setTag(null);
        this.f42965g.setTag(null);
        this.f42966h.setTag(null);
        this.f42967i.setTag(null);
        this.f42968j.setTag(null);
        this.f42969k.setTag(null);
        this.f42970l.setTag(null);
        setRootTag(root);
        this.f43436s = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f43437t = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.f43438u = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f43439v = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f43440w = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        invalidateAll();
    }
}
