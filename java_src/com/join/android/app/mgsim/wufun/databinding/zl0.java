package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;

/* JADX INFO: loaded from: classes4.dex */
public class zl0 extends yl0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f48308o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f48309p;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final TextView f48311i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final TextView f48312j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f48313k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f48314l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f48315m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f48316n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f48309p = sparseIntArray;
        sparseIntArray.put(R.id.main, 6);
    }

    public zl0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 7, f48308o, f48309p));
    }

    private boolean w(MutableLiveData<DialogData> ViewModleDialogData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f48316n |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            View.OnClickListener onClickListener = this.f47805g;
            if (onClickListener != null) {
                onClickListener.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId == 2) {
            View.OnClickListener onClickListener2 = this.f47805g;
            if (onClickListener2 != null) {
                onClickListener2.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId != 3) {
            return;
        }
        View.OnClickListener onClickListener3 = this.f47805g;
        if (onClickListener3 != null) {
            onClickListener3.onClick(callbackArg_0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String okButn;
        String title;
        synchronized (this) {
            j10 = this.f48316n;
            this.f48316n = 0L;
        }
        DelArchiveDialogViewModle delArchiveDialogViewModle = this.f47804f;
        long j11 = 11 & j10;
        String cancleButn = null;
        if (j11 == 0) {
            str = null;
            okButn = null;
            title = null;
        } else {
            MutableLiveData<DialogData> dialogData = delArchiveDialogViewModle != null ? delArchiveDialogViewModle.getDialogData() : null;
            updateLiveDataRegistration(0, dialogData);
            DialogData value = dialogData != null ? dialogData.getValue() : null;
            if (value != null) {
                String content = value.getContent();
                okButn = value.getOkButn();
                title = value.getTitle();
                cancleButn = value.getCancleButn();
                str = content;
            } else {
                str = null;
                okButn = null;
                title = null;
            }
        }
        if ((j10 & 8) != 0) {
            this.f47800b.setOnClickListener(this.f48313k);
            this.f47801c.setOnClickListener(this.f48315m);
            this.f47803e.setOnClickListener(this.f48314l);
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f47800b, cancleButn);
            TextViewBindingAdapter.setText(this.f48311i, title);
            TextViewBindingAdapter.setText(this.f48312j, str);
            TextViewBindingAdapter.setText(this.f47803e, okButn);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f48316n != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f48316n = 8L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId != 0) {
            return false;
        }
        return w((MutableLiveData) object, fieldId);
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

    @Override // com.join.android.app.mgsim.wufun.databinding.yl0
    public void t(@Nullable View.OnClickListener Click) {
        this.f47805g = Click;
        synchronized (this) {
            this.f48316n |= 4;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.yl0
    public void u(@Nullable DelArchiveDialogViewModle ViewModle) {
        this.f47804f = ViewModle;
        synchronized (this) {
            this.f48316n |= 2;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    private zl0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 1, (TextView) bindings[3], (ImageView) bindings[5], (LinearLayout) bindings[6], (TextView) bindings[4]);
        this.f48316n = -1L;
        this.f47800b.setTag(null);
        this.f47801c.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f48310h = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f48311i = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[2];
        this.f48312j = textView2;
        textView2.setTag(null);
        this.f47803e.setTag(null);
        setRootTag(root);
        this.f48313k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f48314l = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f48315m = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        invalidateAll();
    }
}
