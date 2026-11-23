package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;

/* JADX INFO: loaded from: classes4.dex */
public class xl0 extends wl0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47293t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47294u;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47295n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f47296o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f47297p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f47298q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f47299r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f47300s;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47294u = sparseIntArray;
        sparseIntArray.put(R.id.main, 6);
        sparseIntArray.put(R.id.imageView631, 7);
        sparseIntArray.put(R.id.imageView632, 8);
        sparseIntArray.put(R.id.imageView633, 9);
        sparseIntArray.put(R.id.textView109, 10);
    }

    public xl0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 11, f47293t, f47294u));
    }

    private boolean w(MutableLiveData<DialogData> ViewModleDialogData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f47300s |= 1;
        }
        return true;
    }

    private boolean x(MutableLiveData<Boolean> ViewModleIsCommitLoding, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f47300s |= 2;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            View.OnClickListener onClickListener = this.f46862m;
            if (onClickListener != null) {
                onClickListener.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId == 2) {
            View.OnClickListener onClickListener2 = this.f46862m;
            if (onClickListener2 != null) {
                onClickListener2.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId == 3) {
            View.OnClickListener onClickListener3 = this.f46862m;
            if (onClickListener3 != null) {
                onClickListener3.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId != 4) {
            return;
        }
        View.OnClickListener onClickListener4 = this.f46862m;
        if (onClickListener4 != null) {
            onClickListener4.onClick(callbackArg_0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String title;
        synchronized (this) {
            j10 = this.f47300s;
            this.f47300s = 0L;
        }
        DelArchiveDialogViewModle delArchiveDialogViewModle = this.f46861l;
        boolean zSafeUnbox = false;
        String str = null;
        if ((23 & j10) != 0) {
            if ((j10 & 21) == 0) {
                title = null;
            } else {
                MutableLiveData<DialogData> dialogData = delArchiveDialogViewModle != null ? delArchiveDialogViewModle.getDialogData() : null;
                updateLiveDataRegistration(0, dialogData);
                DialogData value = dialogData != null ? dialogData.getValue() : null;
                if (value != null) {
                    title = value.getTitle();
                } else {
                    title = null;
                }
            }
            if ((j10 & 22) != 0) {
                MutableLiveData<Boolean> mutableLiveDataIsCommitLoding = delArchiveDialogViewModle != null ? delArchiveDialogViewModle.isCommitLoding() : null;
                updateLiveDataRegistration(1, mutableLiveDataIsCommitLoding);
                zSafeUnbox = ViewDataBinding.safeUnbox(Boolean.valueOf(!ViewDataBinding.safeUnbox(mutableLiveDataIsCommitLoding != null ? mutableLiveDataIsCommitLoding.getValue() : null)));
            }
            str = title;
        }
        if ((16 & j10) != 0) {
            this.f46851b.setOnClickListener(this.f47299r);
        }
        if ((j10 & 22) != 0) {
            ViewBindingAdapter.setOnClick(this.f46856g, this.f47297p, zSafeUnbox);
            ViewBindingAdapter.setOnClick(this.f46857h, this.f47296o, zSafeUnbox);
            ViewBindingAdapter.setOnClick(this.f46860k, this.f47298q, zSafeUnbox);
        }
        if ((j10 & 21) != 0) {
            TextViewBindingAdapter.setText(this.f46858i, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47300s != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47300s = 16L;
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
            u((DelArchiveDialogViewModle) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((View.OnClickListener) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.wl0
    public void t(@Nullable View.OnClickListener Click) {
        this.f46862m = Click;
        synchronized (this) {
            this.f47300s |= 8;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.wl0
    public void u(@Nullable DelArchiveDialogViewModle ViewModle) {
        this.f46861l = ViewModle;
        synchronized (this) {
            this.f47300s |= 4;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    private xl0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (ImageView) bindings[2], (ImageView) bindings[7], (ImageView) bindings[8], (ImageView) bindings[9], (ConstraintLayout) bindings[6], (ConstraintLayout) bindings[5], (ConstraintLayout) bindings[3], (TextView) bindings[1], (TextView) bindings[10], (ConstraintLayout) bindings[4]);
        this.f47300s = -1L;
        this.f46851b.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f47295n = constraintLayout;
        constraintLayout.setTag(null);
        this.f46856g.setTag(null);
        this.f46857h.setTag(null);
        this.f46858i.setTag(null);
        this.f46860k.setTag(null);
        setRootTag(root);
        this.f47296o = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f47297p = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.f47298q = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f47299r = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
