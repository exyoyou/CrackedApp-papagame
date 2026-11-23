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
public class jm0 extends im0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    @Nullable
    private static final SparseIntArray A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f40298z = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40299q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f40300r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    private final View f40301s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f40302t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f40303u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f40304v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f40305w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f40306x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f40307y;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        A = sparseIntArray;
        sparseIntArray.put(R.id.messageLayout, 13);
        sparseIntArray.put(R.id.more, 14);
    }

    public jm0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 15, f40298z, A));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.im0
    public void A(@Nullable Boolean IsChoice) {
        this.f39879p = IsChoice;
        synchronized (this) {
            this.f40307y |= 4;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.im0
    public void B(@Nullable ArchiveData ItemData) {
        this.f39877n = ItemData;
        synchronized (this) {
            this.f40307y |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            ArchiveData archiveData = this.f39877n;
            OnClickArchiveListener onClickArchiveListener = this.f39878o;
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
            ArchiveData archiveData2 = this.f39877n;
            OnClickArchiveListener onClickArchiveListener2 = this.f39878o;
            if (onClickArchiveListener2 != null) {
                onClickArchiveListener2.onPraise(archiveData2);
                return;
            }
            return;
        }
        if (sourceId == 3) {
            ArchiveData archiveData3 = this.f39877n;
            OnClickArchiveListener onClickArchiveListener3 = this.f39878o;
            if (onClickArchiveListener3 != null) {
                onClickArchiveListener3.onClickDislike(archiveData3);
                return;
            }
            return;
        }
        if (sourceId == 4) {
            ArchiveData archiveData4 = this.f39877n;
            OnClickArchiveListener onClickArchiveListener4 = this.f39878o;
            if (onClickArchiveListener4 != null) {
                onClickArchiveListener4.onClickRun(archiveData4);
                return;
            }
            return;
        }
        if (sourceId != 5) {
            return;
        }
        ArchiveData archiveData5 = this.f39877n;
        OnClickArchiveListener onClickArchiveListener5 = this.f39878o;
        if (onClickArchiveListener5 != null) {
            onClickArchiveListener5.onClickMore(callbackArg_0, archiveData5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x01b2 A[PHI: r2
      0x01b2: PHI (r2v2 long) = (r2v1 long), (r2v5 long) binds: [B:97:0x019a, B:106:0x01ac] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        long j11;
        long j12;
        String str;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        String strValueOf;
        String strValueOf2;
        int i10;
        String str2;
        boolean z10;
        int i11;
        String str3;
        String str4;
        String str5;
        int i12;
        int i13;
        String coverLocation;
        String avatar;
        String nickname;
        String archiveDesc;
        String showText;
        int i14;
        int i15;
        int i16;
        int status;
        int likeCount;
        int i17;
        Context context;
        int i18;
        Context context2;
        int i19;
        Context context3;
        int i20;
        synchronized (this) {
            j10 = this.f40307y;
            this.f40307y = 0L;
        }
        ArchiveData archiveData = this.f39877n;
        Boolean bool = this.f39879p;
        if ((j10 & 13) != 0) {
            long j13 = j10 & 9;
            if (j13 != 0) {
                if (archiveData != null) {
                    status = archiveData.getStatus();
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
                    i17 = isFirstRun;
                    i15 = isLike;
                    i16 = negativeCount;
                    i14 = isUnLike;
                } else {
                    i14 = 0;
                    i15 = 0;
                    i16 = 0;
                    status = 0;
                    likeCount = 0;
                    i17 = 0;
                    coverLocation = null;
                    avatar = null;
                    nickname = null;
                    archiveDesc = null;
                    showText = null;
                }
                boolean z11 = status == 8;
                strValueOf2 = String.valueOf(likeCount);
                boolean z12 = i17 == 1;
                boolean z13 = coverLocation == null;
                boolean z14 = i15 == 1;
                strValueOf = String.valueOf(i16);
                boolean z15 = i14 == 1;
                if (j13 != 0) {
                    j10 |= z11 ? 2048L : 1024L;
                }
                if ((j10 & 9) != 0) {
                    j10 |= z12 ? 128L : 64L;
                }
                if ((j10 & 9) != 0) {
                    j10 |= z13 ? 512L : 256L;
                }
                if ((j10 & 9) != 0) {
                    j10 |= z14 ? 8192L : 4096L;
                }
                if ((j10 & 9) != 0) {
                    j10 |= z15 ? 131072L : 65536L;
                }
                if (z11) {
                    context = this.f39873j.getContext();
                    i18 = R.drawable.mod_start_normal_back;
                } else {
                    context = this.f39873j.getContext();
                    i18 = R.drawable.mod_download_normal_back;
                }
                drawable2 = AppCompatResources.getDrawable(context, i18);
                i10 = z12 ? 0 : 8;
                i13 = z13 ? 8 : 0;
                if (z14) {
                    context2 = this.f39871h.getContext();
                    i19 = R.drawable.cloud_parised_icon;
                } else {
                    context2 = this.f39871h.getContext();
                    i19 = R.drawable.cloud_parise_icon;
                }
                drawable3 = AppCompatResources.getDrawable(context2, i19);
                if (z15) {
                    context3 = this.f39866c.getContext();
                    i20 = R.drawable.dislike_pressed;
                } else {
                    context3 = this.f39866c.getContext();
                    i20 = R.drawable.dislike_normal;
                }
                drawable = AppCompatResources.getDrawable(context3, i20);
            } else {
                drawable = null;
                drawable2 = null;
                drawable3 = null;
                strValueOf = null;
                strValueOf2 = null;
                i10 = 0;
                i13 = 0;
                coverLocation = null;
                avatar = null;
                nickname = null;
                archiveDesc = null;
                showText = null;
            }
            boolean z16 = (archiveData != null ? archiveData.getIsChoice() : 0) == 1;
            j11 = 0;
            if ((j10 & 13) == 0) {
                j12 = 32;
            } else if (z16) {
                j12 = 32;
                j10 |= 32;
            } else {
                j12 = 32;
                j10 |= 16;
            }
            z10 = z16;
            i11 = i13;
            str = coverLocation;
            str3 = avatar;
            str4 = nickname;
            str2 = archiveDesc;
            str5 = showText;
        } else {
            j11 = 0;
            j12 = 32;
            str = null;
            drawable = null;
            drawable2 = null;
            drawable3 = null;
            strValueOf = null;
            strValueOf2 = null;
            i10 = 0;
            str2 = null;
            z10 = false;
            i11 = 0;
            str3 = null;
            str4 = null;
            str5 = null;
        }
        boolean z17 = (j10 & j12) != j11 ? !ViewDataBinding.safeUnbox(bool) : false;
        long j14 = j10 & 13;
        if (j14 == j11) {
            i12 = 0;
        } else {
            if (!z10) {
                z17 = false;
            }
            if (j14 != j11) {
                j10 |= z17 ? 32768L : 16384L;
            }
            if (z17) {
                i12 = 0;
            } else {
                i12 = 8;
            }
        }
        if ((9 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f39865b, str2);
            ImageViewBindingAdapter.setImageDrawable(this.f39866c, drawable);
            TextViewBindingAdapter.setText(this.f39867d, strValueOf);
            this.f40300r.setVisibility(i11);
            SimpleDrawableViewKt.loadUrl(this.f40300r, str, null, 0);
            this.f40301s.setVisibility(i10);
            ImageViewBindingAdapter.setImageDrawable(this.f39871h, drawable3);
            TextViewBindingAdapter.setText(this.f39872i, strValueOf2);
            ViewBindingAdapter.setBackground(this.f39873j, drawable2);
            TextViewBindingAdapter.setText(this.f39873j, str5);
            SimpleDrawableViewKt.loadUrl(this.f39875l, str3, null, 0);
            TextViewBindingAdapter.setText(this.f39876m, str4);
        }
        if ((8 & j10) != 0) {
            this.f39866c.setOnClickListener(this.f40306x);
            this.f40300r.setOnClickListener(this.f40303u);
            this.f39870g.setOnClickListener(this.f40304v);
            this.f39871h.setOnClickListener(this.f40305w);
            this.f39873j.setOnClickListener(this.f40302t);
        }
        if ((j10 & 13) != 0) {
            this.f39874k.setVisibility(i12);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f40307y != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f40307y = 8L;
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

    @Override // com.join.android.app.mgsim.wufun.databinding.im0
    public void z(@Nullable OnClickArchiveListener ClickListener) {
        this.f39878o = ClickListener;
        synchronized (this) {
            this.f40307y |= 2;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    private jm0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[3], (ImageView) bindings[8], (TextView) bindings[9], (RelativeLayout) bindings[13], (TextView) bindings[14], (ImageView) bindings[12], (ImageView) bindings[6], (TextView) bindings[7], (TextView) bindings[10], (TextView) bindings[2], (SimpleDraweeView) bindings[4], (TextView) bindings[5]);
        this.f40307y = -1L;
        this.f39865b.setTag(null);
        this.f39866c.setTag(null);
        this.f39867d.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f40299q = linearLayout;
        linearLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bindings[1];
        this.f40300r = simpleDraweeView;
        simpleDraweeView.setTag(null);
        View view = (View) bindings[11];
        this.f40301s = view;
        view.setTag(null);
        this.f39870g.setTag(null);
        this.f39871h.setTag(null);
        this.f39872i.setTag(null);
        this.f39873j.setTag(null);
        this.f39874k.setTag(null);
        this.f39875l.setTag(null);
        this.f39876m.setTag(null);
        setRootTag(root);
        this.f40302t = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.f40303u = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f40304v = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.f40305w = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f40306x = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        invalidateAll();
    }
}
