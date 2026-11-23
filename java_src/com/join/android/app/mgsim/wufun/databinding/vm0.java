package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
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
public class vm0 extends um0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts D = null;

    @Nullable
    private static final SparseIntArray E;

    @Nullable
    private final View.OnClickListener A;

    @Nullable
    private final View.OnClickListener B;
    private long C;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46343q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46344r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46345s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    private final View f46346t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f46347u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46348v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46349w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46350x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46351y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46352z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        E = sparseIntArray;
        sparseIntArray.put(R.id.messageLayout, 16);
        sparseIntArray.put(R.id.more, 17);
        sparseIntArray.put(R.id.downImg, 18);
    }

    public vm0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 19, D, E));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        switch (sourceId) {
            case 1:
                ArchiveData archiveData = this.f45777o;
                OnClickArchiveListener onClickArchiveListener = this.f45778p;
                if (onClickArchiveListener != null) {
                    if (archiveData != null) {
                        onClickArchiveListener.onClickImage(archiveData.getCoverLocation());
                    }
                }
                break;
            case 2:
                ArchiveData archiveData2 = this.f45777o;
                OnClickArchiveListener onClickArchiveListener2 = this.f45778p;
                if (onClickArchiveListener2 != null) {
                    onClickArchiveListener2.onPraise(archiveData2);
                }
                break;
            case 3:
                ArchiveData archiveData3 = this.f45777o;
                OnClickArchiveListener onClickArchiveListener3 = this.f45778p;
                if (onClickArchiveListener3 != null) {
                    onClickArchiveListener3.onClickDislike(archiveData3);
                }
                break;
            case 4:
                OnClickArchiveListener onClickArchiveListener4 = this.f45778p;
                if (onClickArchiveListener4 != null) {
                    onClickArchiveListener4.uploadCloud();
                }
                break;
            case 5:
                ArchiveData archiveData4 = this.f45777o;
                OnClickArchiveListener onClickArchiveListener5 = this.f45778p;
                if (onClickArchiveListener5 != null) {
                    onClickArchiveListener5.onClickRun(archiveData4);
                }
                break;
            case 6:
                ArchiveData archiveData5 = this.f45777o;
                OnClickArchiveListener onClickArchiveListener6 = this.f45778p;
                if (onClickArchiveListener6 != null) {
                    onClickArchiveListener6.onClickMore(callbackArg_0, archiveData5);
                }
                break;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        boolean z10;
        boolean z11;
        String str;
        int i10;
        String str2;
        String str3;
        int i11;
        int i12;
        String str4;
        int i13;
        int i14;
        String str5;
        Drawable drawable4;
        String str6;
        long j11;
        long j12;
        int i15;
        String str7;
        int userId;
        int i16;
        int status;
        String id2;
        int i17;
        String str8;
        int i18;
        int i19;
        int likeCount;
        String coverLocation;
        int negativeCount;
        String archiveDesc;
        int downloadCount;
        Context context;
        int i20;
        Context context2;
        int i21;
        long j13;
        long j14;
        synchronized (this) {
            j10 = this.C;
            this.C = 0L;
        }
        ArchiveData archiveData = this.f45777o;
        long j15 = j10 & 5;
        if (j15 != 0) {
            if (archiveData != null) {
                status = archiveData.getStatus();
                id2 = archiveData.getId();
                likeCount = archiveData.getLikeCount();
                int isFirstRun = archiveData.getIsFirstRun();
                coverLocation = archiveData.getCoverLocation();
                int isLike = archiveData.getIsLike();
                negativeCount = archiveData.getNegativeCount();
                archiveDesc = archiveData.getArchiveDesc();
                int isUnLike = archiveData.getIsUnLike();
                String showText = archiveData.getShowText();
                downloadCount = archiveData.getDownloadCount();
                int showType = archiveData.getShowType();
                long addTime = archiveData.getAddTime();
                userId = archiveData.getUserId();
                i18 = isFirstRun;
                i19 = isLike;
                i17 = isUnLike;
                str8 = showText;
                i16 = showType;
                j12 = addTime;
            } else {
                j12 = 0;
                userId = 0;
                i16 = 0;
                status = 0;
                id2 = null;
                i17 = 0;
                str8 = null;
                i18 = 0;
                i19 = 0;
                likeCount = 0;
                coverLocation = null;
                negativeCount = 0;
                archiveDesc = null;
                downloadCount = 0;
            }
            boolean z12 = status == 8;
            String strValueOf = String.valueOf(likeCount);
            boolean z13 = i18 == 1;
            boolean z14 = coverLocation == null;
            boolean z15 = i19 == 1;
            String strValueOf2 = String.valueOf(negativeCount);
            boolean z16 = i17 == 1;
            String strValueOf3 = String.valueOf(downloadCount);
            z10 = i16 == 1;
            z11 = j12 != 0;
            String strValueOf4 = String.valueOf(userId);
            if (j15 != 0) {
                j10 |= z12 ? 4096L : 2048L;
            }
            if ((j10 & 5) != 0) {
                j10 |= z13 ? 256L : 128L;
            }
            if ((j10 & 5) != 0) {
                j10 |= z14 ? 1024L : 512L;
            }
            if ((j10 & 5) != 0) {
                j10 |= z15 ? 65536L : 32768L;
            }
            if ((j10 & 5) != 0) {
                j10 |= z16 ? 4194304L : PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
            }
            if ((j10 & 5) != 0) {
                j10 |= z10 ? 1048576L : PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
            }
            if ((j10 & 5) != 0) {
                j10 = z11 ? j10 | 262144 : j10 | 131072;
            }
            boolean zEquals = id2 != null ? id2.equals(String.valueOf(0)) : false;
            if ((j10 & 5) != 0) {
                j10 |= zEquals ? 16777216L : 8388608L;
            }
            if (z12) {
                context = this.f45774l.getContext();
                i20 = R.drawable.mod_start_normal_back;
            } else {
                context = this.f45774l.getContext();
                i20 = R.drawable.mod_download_normal_back;
            }
            Drawable drawable5 = AppCompatResources.getDrawable(context, i20);
            i11 = z13 ? 0 : 8;
            i12 = z14 ? 8 : 0;
            drawable2 = z15 ? AppCompatResources.getDrawable(this.f45772j.getContext(), R.drawable.cloud_parised_icon) : AppCompatResources.getDrawable(this.f45772j.getContext(), R.drawable.cloud_parise_icon);
            drawable3 = AppCompatResources.getDrawable(this.f45765c.getContext(), z16 ? R.drawable.dislike_pressed : R.drawable.dislike_normal);
            int i22 = zEquals ? 8 : 0;
            boolean zEquals2 = id2 != null ? id2.equals(strValueOf4) : false;
            if ((524293 & j10) != 0) {
                j10 |= zEquals2 ? 16L : 8L;
            }
            if ((j10 & 5) != 0) {
                if (zEquals2) {
                    j13 = j10 | 64;
                    j14 = 16384;
                } else {
                    j13 = j10 | 32;
                    j14 = 8192;
                }
                j10 = j13 | j14;
            }
            int i23 = zEquals2 ? 8 : 0;
            int i24 = zEquals2 ? 0 : 8;
            if (zEquals2) {
                context2 = this.f46344r.getContext();
                i21 = R.drawable.mod_archive_local_back;
            } else {
                context2 = this.f46344r.getContext();
                i21 = R.drawable.mod_archive_item_back;
            }
            drawable = AppCompatResources.getDrawable(context2, i21);
            str4 = strValueOf3;
            j11 = 262144;
            drawable4 = drawable5;
            str = archiveDesc;
            str6 = strValueOf;
            i14 = i24;
            str2 = coverLocation;
            str5 = str8;
            str3 = strValueOf2;
            int i25 = i22;
            i13 = i23;
            i10 = i25;
        } else {
            drawable = null;
            drawable2 = null;
            drawable3 = null;
            z10 = false;
            z11 = false;
            str = null;
            i10 = 0;
            str2 = null;
            str3 = null;
            i11 = 0;
            i12 = 0;
            str4 = null;
            i13 = 0;
            i14 = 0;
            str5 = null;
            drawable4 = null;
            str6 = null;
            j11 = 262144;
            j12 = 0;
        }
        String strU = (j10 & j11) != 0 ? com.join.mgps.Util.e0.u(j12 * 1000) : null;
        long j16 = j10 & 5;
        if (j16 != 0) {
            i15 = z10 ? 8 : i13;
        } else {
            i15 = 0;
        }
        if (j16 != 0) {
            if (!z11) {
                strU = "";
            }
            str7 = strU;
        } else {
            str7 = null;
        }
        long j17 = j10;
        if (j16 != 0) {
            TextViewBindingAdapter.setText(this.f45764b, str);
            ImageViewBindingAdapter.setImageDrawable(this.f45765c, drawable3);
            TextViewBindingAdapter.setText(this.f45766d, str3);
            TextViewBindingAdapter.setText(this.f45768f, str4);
            ViewBindingAdapter.setBackground(this.f46344r, drawable);
            this.f46345s.setVisibility(i13);
            this.f46346t.setVisibility(i11);
            this.f46347u.setVisibility(i12);
            SimpleDrawableViewKt.loadUrl(this.f46347u, str2, null, 0);
            this.f46348v.setVisibility(i10);
            this.f45771i.setVisibility(i15);
            ImageViewBindingAdapter.setImageDrawable(this.f45772j, drawable2);
            TextViewBindingAdapter.setText(this.f45773k, str6);
            ViewBindingAdapter.setBackground(this.f45774l, drawable4);
            TextViewBindingAdapter.setText(this.f45774l, str5);
            this.f45775m.setVisibility(i14);
            TextViewBindingAdapter.setText(this.f45776n, str7);
        }
        if ((j17 & 4) != 0) {
            this.f45765c.setOnClickListener(this.A);
            this.f46347u.setOnClickListener(this.f46352z);
            this.f45771i.setOnClickListener(this.f46350x);
            this.f45772j.setOnClickListener(this.f46351y);
            this.f45774l.setOnClickListener(this.f46349w);
            this.f45775m.setOnClickListener(this.B);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.C != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.C = 4L;
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
            u((ArchiveData) variable);
        } else {
            if (9 != variableId) {
                return false;
            }
            t((OnClickArchiveListener) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.um0
    public void t(@Nullable OnClickArchiveListener ClickListener) {
        this.f45778p = ClickListener;
        synchronized (this) {
            this.C |= 2;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.um0
    public void u(@Nullable ArchiveData ItemData) {
        this.f45777o = ItemData;
        synchronized (this) {
            this.C |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private vm0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[3], (ImageView) bindings[9], (TextView) bindings[10], (ImageView) bindings[18], (TextView) bindings[6], (RelativeLayout) bindings[16], (TextView) bindings[17], (ImageView) bindings[15], (ImageView) bindings[7], (TextView) bindings[8], (TextView) bindings[13], (TextView) bindings[11], (TextView) bindings[4]);
        this.C = -1L;
        this.f45764b.setTag(null);
        this.f45765c.setTag(null);
        this.f45766d.setTag(null);
        this.f45768f.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f46343q = linearLayout;
        linearLayout.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) bindings[1];
        this.f46344r = linearLayout2;
        linearLayout2.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) bindings[12];
        this.f46345s = relativeLayout;
        relativeLayout.setTag(null);
        View view = (View) bindings[14];
        this.f46346t = view;
        view.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bindings[2];
        this.f46347u = simpleDraweeView;
        simpleDraweeView.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) bindings[5];
        this.f46348v = linearLayout3;
        linearLayout3.setTag(null);
        this.f45771i.setTag(null);
        this.f45772j.setTag(null);
        this.f45773k.setTag(null);
        this.f45774l.setTag(null);
        this.f45775m.setTag(null);
        this.f45776n.setTag(null);
        setRootTag(root);
        this.f46349w = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.f46350x = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 6);
        this.f46351y = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f46352z = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.A = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.B = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        invalidateAll();
    }
}
