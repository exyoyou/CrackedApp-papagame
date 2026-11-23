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
public class rm0 extends qm0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts A = null;

    @Nullable
    private static final SparseIntArray B;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44402r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f44403s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    private final View f44404t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f44405u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f44406v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f44407w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f44408x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f44409y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f44410z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        B = sparseIntArray;
        sparseIntArray.put(R.id.messageLayout, 13);
        sparseIntArray.put(R.id.more, 14);
    }

    public rm0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 15, A, B));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.qm0
    public void B(@Nullable OnClickArchiveListener ClickListener) {
        this.f43929o = ClickListener;
        synchronized (this) {
            this.f44410z |= 4;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.qm0
    public void C(@Nullable Boolean IsChoice) {
        this.f43930p = IsChoice;
        synchronized (this) {
            this.f44410z |= 8;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.qm0
    public void D(@Nullable Boolean IsShowName) {
        this.f43931q = IsShowName;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.qm0
    public void E(@Nullable ArchiveData ItemData) {
        this.f43928n = ItemData;
        synchronized (this) {
            this.f44410z |= 2;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            ArchiveData archiveData = this.f43928n;
            OnClickArchiveListener onClickArchiveListener = this.f43929o;
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
            ArchiveData archiveData2 = this.f43928n;
            OnClickArchiveListener onClickArchiveListener2 = this.f43929o;
            if (onClickArchiveListener2 != null) {
                onClickArchiveListener2.onPraise(archiveData2);
                return;
            }
            return;
        }
        if (sourceId == 3) {
            ArchiveData archiveData3 = this.f43928n;
            OnClickArchiveListener onClickArchiveListener3 = this.f43929o;
            if (onClickArchiveListener3 != null) {
                onClickArchiveListener3.onClickDislike(archiveData3);
                return;
            }
            return;
        }
        if (sourceId == 4) {
            ArchiveData archiveData4 = this.f43928n;
            OnClickArchiveListener onClickArchiveListener4 = this.f43929o;
            if (onClickArchiveListener4 != null) {
                onClickArchiveListener4.onClickRun(archiveData4);
                return;
            }
            return;
        }
        if (sourceId != 5) {
            return;
        }
        ArchiveData archiveData5 = this.f43928n;
        OnClickArchiveListener onClickArchiveListener5 = this.f43929o;
        if (onClickArchiveListener5 != null) {
            onClickArchiveListener5.onClickMore(callbackArg_0, archiveData5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:136:0x0229 A[PHI: r2
      0x0229: PHI (r2v2 long) = (r2v1 long), (r2v5 long) binds: [B:124:0x0211, B:133:0x0223] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        long j11;
        long j12;
        String str;
        Drawable drawable;
        int i10;
        Drawable drawable2;
        String strValueOf;
        int i11;
        String str2;
        int i12;
        Drawable drawable3;
        Drawable drawable4;
        boolean z10;
        String str3;
        String str4;
        String str5;
        String str6;
        int i13;
        Drawable drawable5;
        Drawable drawable6;
        int i14;
        String strValueOf2;
        String coverLocation;
        String avatar;
        String nickname;
        String archiveDesc;
        String showText;
        int i15;
        int showType;
        int i16;
        int i17;
        int status;
        String id2;
        int i18;
        int likeCount;
        int userId;
        Context context;
        int i19;
        Context context2;
        int i20;
        Context context3;
        int i21;
        Context context4;
        int i22;
        synchronized (this) {
            j10 = this.f44410z;
            this.f44410z = 0L;
        }
        ArchiveData archiveData = this.f43928n;
        Boolean bool = this.f43930p;
        if ((j10 & 26) != 0) {
            long j13 = j10 & 18;
            if (j13 != 0) {
                if (archiveData != null) {
                    status = archiveData.getStatus();
                    id2 = archiveData.getId();
                    likeCount = archiveData.getLikeCount();
                    int isFirstRun = archiveData.getIsFirstRun();
                    coverLocation = archiveData.getCoverLocation();
                    avatar = archiveData.getAvatar();
                    int isLike = archiveData.getIsLike();
                    int negativeCount = archiveData.getNegativeCount();
                    nickname = archiveData.getNickname();
                    archiveDesc = archiveData.getArchiveDesc();
                    int isUnLike = archiveData.getIsUnLike();
                    showText = archiveData.getShowText();
                    i18 = isFirstRun;
                    i16 = isLike;
                    i17 = negativeCount;
                    i15 = isUnLike;
                    showType = archiveData.getShowType();
                    userId = archiveData.getUserId();
                } else {
                    i15 = 0;
                    showType = 0;
                    i16 = 0;
                    i17 = 0;
                    status = 0;
                    id2 = null;
                    i18 = 0;
                    likeCount = 0;
                    coverLocation = null;
                    avatar = null;
                    nickname = null;
                    archiveDesc = null;
                    userId = 0;
                    showText = null;
                }
                boolean z11 = status == 8;
                strValueOf2 = String.valueOf(likeCount);
                boolean z12 = i18 == 1;
                boolean z13 = coverLocation == null;
                boolean z14 = i16 == 1;
                strValueOf = String.valueOf(i17);
                boolean z15 = i15 == 1;
                boolean z16 = showType == 1;
                String strValueOf3 = String.valueOf(userId);
                if (j13 != 0) {
                    j10 |= z11 ? 16384L : 8192L;
                }
                if ((j10 & 18) != 0) {
                    j10 |= z12 ? 256L : 128L;
                }
                if ((j10 & 18) != 0) {
                    j10 |= z13 ? 4096L : 2048L;
                }
                if ((j10 & 18) != 0) {
                    j10 |= z14 ? 262144L : 131072L;
                }
                if ((j10 & 18) != 0) {
                    j10 |= z15 ? 4194304L : PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
                }
                if ((j10 & 18) != 0) {
                    j10 |= z16 ? 65536L : 32768L;
                }
                if (z11) {
                    context = this.f43924j.getContext();
                    i19 = R.drawable.mod_start_normal_back;
                } else {
                    context = this.f43924j.getContext();
                    i19 = R.drawable.mod_download_normal_back;
                }
                drawable5 = AppCompatResources.getDrawable(context, i19);
                i12 = z12 ? 0 : 8;
                i14 = z13 ? 8 : 0;
                if (z14) {
                    context2 = this.f43922h.getContext();
                    i20 = R.drawable.cloud_parised_icon;
                } else {
                    context2 = this.f43922h.getContext();
                    i20 = R.drawable.cloud_parise_icon;
                }
                drawable2 = AppCompatResources.getDrawable(context2, i20);
                if (z15) {
                    context3 = this.f43917c.getContext();
                    i21 = R.drawable.dislike_pressed;
                } else {
                    context3 = this.f43917c.getContext();
                    i21 = R.drawable.dislike_normal;
                }
                drawable = AppCompatResources.getDrawable(context3, i21);
                i10 = z16 ? 8 : 0;
                boolean zEquals = id2 != null ? id2.equals(strValueOf3) : false;
                if ((j10 & 18) != 0) {
                    j10 |= zEquals ? 1024L : 512L;
                }
                if (zEquals) {
                    context4 = this.f44402r.getContext();
                    i22 = R.drawable.mod_archive_local_back;
                } else {
                    context4 = this.f44402r.getContext();
                    i22 = R.drawable.mod_archive_item_back;
                }
                drawable6 = AppCompatResources.getDrawable(context4, i22);
            } else {
                drawable = null;
                i10 = 0;
                drawable2 = null;
                strValueOf = null;
                drawable5 = null;
                drawable6 = null;
                i12 = 0;
                i14 = 0;
                strValueOf2 = null;
                coverLocation = null;
                avatar = null;
                nickname = null;
                archiveDesc = null;
                showText = null;
            }
            boolean z17 = (archiveData != null ? archiveData.getIsChoice() : 0) == 1;
            j11 = 0;
            if ((j10 & 26) == 0) {
                j12 = 64;
            } else if (z17) {
                j12 = 64;
                j10 |= 64;
            } else {
                j12 = 64;
                j10 |= 32;
            }
            drawable4 = drawable5;
            i11 = i14;
            str4 = avatar;
            str5 = nickname;
            str6 = showText;
            drawable3 = drawable6;
            str2 = coverLocation;
            str3 = strValueOf2;
            z10 = z17;
            str = archiveDesc;
        } else {
            j11 = 0;
            j12 = 64;
            str = null;
            drawable = null;
            i10 = 0;
            drawable2 = null;
            strValueOf = null;
            i11 = 0;
            str2 = null;
            i12 = 0;
            drawable3 = null;
            drawable4 = null;
            z10 = false;
            str3 = null;
            str4 = null;
            str5 = null;
            str6 = null;
        }
        boolean z18 = (j12 & j10) != j11 ? !ViewDataBinding.safeUnbox(bool) : false;
        long j14 = j10 & 26;
        if (j14 == j11) {
            i13 = 0;
        } else {
            if (!z10) {
                z18 = false;
            }
            if (j14 != j11) {
                j10 |= z18 ? 1048576L : PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
            }
            if (z18) {
                i13 = 0;
            } else {
                i13 = 8;
            }
        }
        if ((18 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f43916b, str);
            ImageViewBindingAdapter.setImageDrawable(this.f43917c, drawable);
            TextViewBindingAdapter.setText(this.f43918d, strValueOf);
            ViewBindingAdapter.setBackground(this.f44402r, drawable3);
            this.f44403s.setVisibility(i11);
            SimpleDrawableViewKt.loadUrl(this.f44403s, str2, null, 0);
            this.f44404t.setVisibility(i12);
            this.f43921g.setVisibility(i10);
            ImageViewBindingAdapter.setImageDrawable(this.f43922h, drawable2);
            TextViewBindingAdapter.setText(this.f43923i, str3);
            ViewBindingAdapter.setBackground(this.f43924j, drawable4);
            TextViewBindingAdapter.setText(this.f43924j, str6);
            SimpleDrawableViewKt.loadUrl(this.f43926l, str4, null, 0);
            TextViewBindingAdapter.setText(this.f43927m, str5);
        }
        if ((16 & j10) != 0) {
            this.f43917c.setOnClickListener(this.f44409y);
            this.f44403s.setOnClickListener(this.f44405u);
            this.f43921g.setOnClickListener(this.f44408x);
            this.f43922h.setOnClickListener(this.f44407w);
            this.f43924j.setOnClickListener(this.f44406v);
        }
        if ((j10 & 26) != 0) {
            this.f43925k.setVisibility(i13);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f44410z != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f44410z = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (24 == variableId) {
            D((Boolean) variable);
        } else if (27 == variableId) {
            E((ArchiveData) variable);
        } else if (9 == variableId) {
            B((OnClickArchiveListener) variable);
        } else {
            if (22 != variableId) {
                return false;
            }
            C((Boolean) variable);
        }
        return true;
    }

    private rm0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[3], (ImageView) bindings[8], (TextView) bindings[9], (RelativeLayout) bindings[13], (TextView) bindings[14], (ImageView) bindings[12], (ImageView) bindings[6], (TextView) bindings[7], (TextView) bindings[10], (TextView) bindings[2], (SimpleDraweeView) bindings[4], (TextView) bindings[5]);
        this.f44410z = -1L;
        this.f43916b.setTag(null);
        this.f43917c.setTag(null);
        this.f43918d.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f44402r = linearLayout;
        linearLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bindings[1];
        this.f44403s = simpleDraweeView;
        simpleDraweeView.setTag(null);
        View view = (View) bindings[11];
        this.f44404t = view;
        view.setTag(null);
        this.f43921g.setTag(null);
        this.f43922h.setTag(null);
        this.f43923i.setTag(null);
        this.f43924j.setTag(null);
        this.f43925k.setTag(null);
        this.f43926l.setTag(null);
        this.f43927m.setTag(null);
        setRootTag(root);
        this.f44405u = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f44406v = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.f44407w = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f44408x = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.f44409y = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        invalidateAll();
    }
}
