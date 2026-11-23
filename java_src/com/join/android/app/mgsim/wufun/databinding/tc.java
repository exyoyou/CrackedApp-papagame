package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.modleregin.modle.TitleModle;
import com.join.mgps.Util.IntentDateBean;

/* JADX INFO: loaded from: classes4.dex */
public class tc extends sc implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45181k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45182l = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45183h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f45184i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f45185j;

    public tc(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f45181k, f45182l));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.sc
    public void A(@Nullable TitleModle Data) {
        this.f44723g = Data;
        synchronized (this) {
            this.f45185j |= 2;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.sc
    public void B(@Nullable Boolean IsshowWhite) {
        this.f44721e = IsshowWhite;
        synchronized (this) {
            this.f45185j |= 1;
        }
        notifyPropertyChanged(26);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        View.OnClickListener onClickListener = this.f44722f;
        if (onClickListener != null) {
            onClickListener.onClick(callbackArg_0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00b7 A[PHI: r2
      0x00b7: PHI (r2v3 long) = (r2v2 long), (r2v6 long) binds: [B:51:0x00a3, B:60:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        Drawable drawable;
        String str;
        int i10;
        boolean z10;
        int i11;
        IntentDateBean intentDateBean;
        Context context;
        int i12;
        synchronized (this) {
            j10 = this.f45185j;
            this.f45185j = 0L;
        }
        Boolean bool = this.f44721e;
        TitleModle titleModle = this.f44723g;
        long j11 = j10 & 9;
        String str2 = null;
        if (j11 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j11 != 0) {
                j10 |= zSafeUnbox ? 128L : 64L;
            }
            if (zSafeUnbox) {
                context = this.f45183h.getContext();
                i12 = R.drawable.white;
            } else {
                context = this.f45183h.getContext();
                i12 = R.drawable.alph;
            }
            drawable = AppCompatResources.getDrawable(context, i12);
        } else {
            drawable = null;
        }
        long j12 = j10 & 10;
        if (j12 != 0) {
            if (titleModle != null) {
                String title = titleModle.getTitle();
                String subTitle = titleModle.getSubTitle();
                intentDateBean = titleModle.getIntentDateBean();
                str = title;
                str2 = subTitle;
            } else {
                intentDateBean = null;
                str = null;
            }
            z10 = str2 == null;
            boolean z11 = intentDateBean == null;
            if (j12 != 0) {
                j10 = z10 ? j10 | 512 : j10 | 256;
            }
            if ((j10 & 10) != 0) {
                j10 |= z11 ? 32L : 16L;
            }
            i10 = z11 ? 8 : 0;
        } else {
            str = null;
            i10 = 0;
            z10 = false;
        }
        boolean z12 = (256 & j10) != 0 && str2 == "";
        long j13 = j10 & 10;
        if (j13 != 0) {
            boolean z13 = z10 ? true : z12;
            if (j13 != 0) {
                j10 |= z13 ? 2048L : 1024L;
            }
            i11 = z13 ? 8 : 0;
        }
        if ((9 & j10) != 0) {
            ViewBindingAdapter.setBackground(this.f45183h, drawable);
        }
        if ((8 & j10) != 0) {
            this.f44718b.setOnClickListener(this.f45184i);
        }
        if ((j10 & 10) != 0) {
            this.f44718b.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f44719c, str2);
            this.f44719c.setVisibility(i11);
            TextViewBindingAdapter.setText(this.f44720d, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45185j != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45185j = 8L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (26 == variableId) {
            B((Boolean) variable);
        } else if (11 == variableId) {
            A((TitleModle) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            z((View.OnClickListener) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.sc
    public void z(@Nullable View.OnClickListener Click) {
        this.f44722f = Click;
        synchronized (this) {
            this.f45185j |= 4;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    private tc(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[3], (TextView) bindings[2], (TextView) bindings[1]);
        this.f45185j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f45183h = constraintLayout;
        constraintLayout.setTag(null);
        this.f44718b.setTag(null);
        this.f44719c.setTag(null);
        this.f44720d.setTag(null);
        setRootTag(root);
        this.f45184i = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
