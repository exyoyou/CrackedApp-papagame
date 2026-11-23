package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.ui.cloudarchive.dialog.ImageDialogViewmodle;

/* JADX INFO: loaded from: classes4.dex */
public class qv extends pv implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f44047n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f44048o = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f44050k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f44051l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f44052m;

    public qv(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 7, f44047n, f44048o));
    }

    private boolean w(MutableLiveData<String> ViewModleImagePath, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f44052m |= 1;
        }
        return true;
    }

    private boolean x(MutableLiveData<Integer> ViewModleOrientation, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f44052m |= 2;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            View.OnClickListener onClickListener = this.f43544i;
            if (onClickListener != null) {
                onClickListener.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        View.OnClickListener onClickListener2 = this.f43544i;
        if (onClickListener2 != null) {
            onClickListener2.onClick(callbackArg_0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    /* JADX WARN: Code duplicated, block: B:54:0x008d  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:67:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        int i10;
        int i11;
        synchronized (this) {
            j10 = this.f44052m;
            this.f44052m = 0L;
        }
        ImageDialogViewmodle imageDialogViewmodle = this.f43543h;
        if ((23 & j10) != 0) {
            if ((j10 & 21) == 0) {
                value = null;
            } else {
                MutableLiveData<String> imagePath = imageDialogViewmodle != null ? imageDialogViewmodle.getImagePath() : null;
                updateLiveDataRegistration(0, imagePath);
                if (imagePath != null) {
                    value = imagePath.getValue();
                } else {
                    value = null;
                }
            }
            long j11 = j10 & 22;
            if (j11 != 0) {
                MutableLiveData<Integer> orientation = imageDialogViewmodle != null ? imageDialogViewmodle.getOrientation() : null;
                updateLiveDataRegistration(1, orientation);
                int iSafeUnbox = ViewDataBinding.safeUnbox(orientation != null ? orientation.getValue() : null);
                boolean z10 = iSafeUnbox == 1;
                boolean z11 = iSafeUnbox == 0;
                if (j11 != 0) {
                    j10 |= z10 ? 256L : 128L;
                }
                if ((j10 & 22) != 0) {
                    j10 |= z11 ? 64L : 32L;
                }
                i10 = 8;
                i11 = z10 ? 0 : 8;
                if (z11) {
                    i10 = 0;
                }
            }
            if ((16 & j10) != 0) {
                this.f43537b.setOnClickListener(this.f44051l);
                this.f43538c.setOnClickListener(this.f44050k);
            }
            if ((22 & j10) != 0) {
                this.f43537b.setVisibility(i10);
                this.f43538c.setVisibility(i11);
                this.f43541f.setVisibility(i10);
                this.f43542g.setVisibility(i11);
            }
            if ((j10 & 21) != 0) {
                SimpleDrawableViewKt.loadUrl(this.f43539d, value, null, 0);
                SimpleDrawableViewKt.loadUrl(this.f43540e, value, null, 0);
            }
        }
        value = null;
        i10 = 0;
        i11 = 0;
        if ((16 & j10) != 0) {
            this.f43537b.setOnClickListener(this.f44051l);
            this.f43538c.setOnClickListener(this.f44050k);
        }
        if ((22 & j10) != 0) {
            this.f43537b.setVisibility(i10);
            this.f43538c.setVisibility(i11);
            this.f43541f.setVisibility(i10);
            this.f43542g.setVisibility(i11);
        }
        if ((j10 & 21) != 0) {
            SimpleDrawableViewKt.loadUrl(this.f43539d, value, null, 0);
            SimpleDrawableViewKt.loadUrl(this.f43540e, value, null, 0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f44052m != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f44052m = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return w((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 1) {
            return false;
        }
        return x((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (50 == variableId) {
            u((ImageDialogViewmodle) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((View.OnClickListener) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.pv
    public void t(@Nullable View.OnClickListener Click) {
        this.f43544i = Click;
        synchronized (this) {
            this.f44052m |= 8;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.pv
    public void u(@Nullable ImageDialogViewmodle ViewModle) {
        this.f43543h = ViewModle;
        synchronized (this) {
            this.f44052m |= 4;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    private qv(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (ImageView) bindings[5], (ImageView) bindings[6], (SimpleDraweeView) bindings[2], (SimpleDraweeView) bindings[4], (LinearLayout) bindings[1], (FrameLayout) bindings[3]);
        this.f44052m = -1L;
        this.f43537b.setTag(null);
        this.f43538c.setTag(null);
        this.f43539d.setTag(null);
        this.f43540e.setTag(null);
        this.f43541f.setTag(null);
        this.f43542g.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f44049j = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(root);
        this.f44050k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f44051l = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
