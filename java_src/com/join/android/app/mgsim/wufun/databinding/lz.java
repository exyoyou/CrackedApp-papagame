package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public class lz extends kz implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f41615n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f41616o = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41617f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f41618g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f41619h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f41620i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41621j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41622k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41623l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f41624m;

    public lz(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f41615n, f41616o));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.kz
    public void B(@Nullable GameDetailFragmentClickProxy Click) {
        this.f41085e = Click;
        synchronized (this) {
            this.f41624m |= 8;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.kz
    public void C(@Nullable String PicUrl1) {
        this.f41082b = PicUrl1;
        synchronized (this) {
            this.f41624m |= 4;
        }
        notifyPropertyChanged(35);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.kz
    public void D(@Nullable String PicUrl2) {
        this.f41083c = PicUrl2;
        synchronized (this) {
            this.f41624m |= 1;
        }
        notifyPropertyChanged(36);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.kz
    public void E(@Nullable String PicUrl3) {
        this.f41084d = PicUrl3;
        synchronized (this) {
            this.f41624m |= 2;
        }
        notifyPropertyChanged(37);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            String str = this.f41082b;
            GameDetailFragmentClickProxy gameDetailFragmentClickProxy = this.f41085e;
            if (gameDetailFragmentClickProxy != null) {
                gameDetailFragmentClickProxy.verticalPicClick(str);
                return;
            }
            return;
        }
        if (sourceId == 2) {
            String str2 = this.f41083c;
            GameDetailFragmentClickProxy gameDetailFragmentClickProxy2 = this.f41085e;
            if (gameDetailFragmentClickProxy2 != null) {
                gameDetailFragmentClickProxy2.verticalPicClick(str2);
                return;
            }
            return;
        }
        if (sourceId != 3) {
            return;
        }
        String str3 = this.f41084d;
        GameDetailFragmentClickProxy gameDetailFragmentClickProxy3 = this.f41085e;
        if (gameDetailFragmentClickProxy3 != null) {
            gameDetailFragmentClickProxy3.verticalPicClick(str3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00ad A[PHI: r2
      0x00ad: PHI (r2v4 long) = (r2v3 long), (r2v15 long) binds: [B:55:0x0096, B:63:0x00a8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:77:0x00c7 A[PHI: r2
      0x00c7: PHI (r2v6 long) = (r2v5 long), (r2v13 long) binds: [B:67:0x00b2, B:75:0x00c2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:90:0x00e2 A[PHI: r2
      0x00e2: PHI (r2v8 long) = (r2v7 long), (r2v11 long) binds: [B:79:0x00cc, B:88:0x00df] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        boolean z10;
        boolean z11;
        boolean z12;
        int i10;
        int i11;
        int i12;
        synchronized (this) {
            j10 = this.f41624m;
            this.f41624m = 0L;
        }
        String str = this.f41083c;
        String str2 = this.f41084d;
        String str3 = this.f41082b;
        long j11 = j10 & 17;
        if (j11 != 0) {
            z10 = str == null;
            if (j11 != 0) {
                j10 = z10 ? j10 | 4096 : j10 | 2048;
            }
        } else {
            z10 = false;
        }
        long j12 = j10 & 18;
        if (j12 != 0) {
            z11 = str2 == null;
            if (j12 != 0) {
                j10 = z11 ? j10 | 16384 : j10 | 8192;
            }
        } else {
            z11 = false;
        }
        long j13 = j10 & 20;
        if (j13 != 0) {
            z12 = str3 == null;
            if (j13 != 0) {
                j10 = z12 ? j10 | 1024 : j10 | 512;
            }
        } else {
            z12 = false;
        }
        boolean z13 = (j10 & 8192) != 0 && str2 == "";
        boolean z14 = (j10 & 512) != 0 && str3 == "";
        boolean z15 = (2048 & j10) != 0 && str == "";
        long j14 = j10 & 20;
        if (j14 == 0) {
            i10 = 0;
        } else {
            if (z12) {
                z14 = true;
            }
            if (j14 != 0) {
                j10 |= z14 ? 65536L : 32768L;
            }
            if (z14) {
                i10 = 8;
            } else {
                i10 = 0;
            }
        }
        long j15 = j10 & 17;
        if (j15 == 0) {
            i11 = 0;
        } else {
            if (z10) {
                z15 = true;
            }
            if (j15 != 0) {
                j10 |= z15 ? 64L : 32L;
            }
            if (z15) {
                i11 = 8;
            } else {
                i11 = 0;
            }
        }
        long j16 = j10 & 18;
        if (j16 != 0) {
            boolean z16 = z11 ? true : z13;
            if (j16 != 0) {
                j10 |= z16 ? 256L : 128L;
            }
            i12 = z16 ? 8 : 0;
        }
        if ((16 & j10) != 0) {
            this.f41618g.setOnClickListener(this.f41622k);
            this.f41619h.setOnClickListener(this.f41623l);
            this.f41620i.setOnClickListener(this.f41621j);
        }
        if ((j10 & 20) != 0) {
            this.f41618g.setVisibility(i10);
            SimpleDrawableViewKt.loadUrl(this.f41618g, str3, null, 0);
        }
        if ((17 & j10) != 0) {
            this.f41619h.setVisibility(i11);
            SimpleDrawableViewKt.loadUrl(this.f41619h, str, null, 0);
        }
        if ((j10 & 18) != 0) {
            this.f41620i.setVisibility(i12);
            SimpleDrawableViewKt.loadUrl(this.f41620i, str2, null, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41624m != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41624m = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (36 == variableId) {
            D((String) variable);
        } else if (37 == variableId) {
            E((String) variable);
        } else if (35 == variableId) {
            C((String) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            B((GameDetailFragmentClickProxy) variable);
        }
        return true;
    }

    private lz(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0);
        this.f41624m = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f41617f = constraintLayout;
        constraintLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bindings[1];
        this.f41618g = simpleDraweeView;
        simpleDraweeView.setTag(null);
        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) bindings[2];
        this.f41619h = simpleDraweeView2;
        simpleDraweeView2.setTag(null);
        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) bindings[3];
        this.f41620i = simpleDraweeView3;
        simpleDraweeView3.setTag(null);
        setRootTag(root);
        this.f41621j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f41622k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f41623l = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
