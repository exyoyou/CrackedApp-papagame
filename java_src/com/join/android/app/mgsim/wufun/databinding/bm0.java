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
public class bm0 extends am0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36458m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36459n;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final TextView f36461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final TextView f36462i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f36463j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f36464k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f36465l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f36459n = sparseIntArray;
        sparseIntArray.put(R.id.main, 5);
    }

    public bm0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f36458m, f36459n));
    }

    private boolean w(MutableLiveData<DialogData> ViewModleDialogData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f36465l |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            View.OnClickListener onClickListener = this.f35919f;
            if (onClickListener != null) {
                onClickListener.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        View.OnClickListener onClickListener2 = this.f35919f;
        if (onClickListener2 != null) {
            onClickListener2.onClick(callbackArg_0);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String okButn;
        String title;
        boolean showClose;
        synchronized (this) {
            j10 = this.f36465l;
            this.f36465l = 0L;
        }
        DelArchiveDialogViewModle delArchiveDialogViewModle = this.f35918e;
        long j11 = j10 & 11;
        int i10 = 0;
        String content = null;
        if (j11 != 0) {
            MutableLiveData<DialogData> dialogData = delArchiveDialogViewModle != null ? delArchiveDialogViewModle.getDialogData() : null;
            updateLiveDataRegistration(0, dialogData);
            DialogData value = dialogData != null ? dialogData.getValue() : null;
            if (value != null) {
                content = value.getContent();
                showClose = value.getShowClose();
                okButn = value.getOkButn();
                title = value.getTitle();
            } else {
                title = null;
                okButn = null;
                showClose = false;
            }
            if (j11 != 0) {
                j10 |= showClose ? 32L : 16L;
            }
            i10 = showClose ? 0 : 8;
            String str2 = content;
            content = title;
            str = str2;
        } else {
            str = null;
            okButn = null;
        }
        if ((8 & j10) != 0) {
            this.f35915b.setOnClickListener(this.f36463j);
            this.f35917d.setOnClickListener(this.f36464k);
        }
        if ((j10 & 11) != 0) {
            this.f35915b.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f36461h, content);
            TextViewBindingAdapter.setText(this.f36462i, str);
            TextViewBindingAdapter.setText(this.f35917d, okButn);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f36465l != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36465l = 8L;
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

    @Override // com.join.android.app.mgsim.wufun.databinding.am0
    public void t(@Nullable View.OnClickListener Click) {
        this.f35919f = Click;
        synchronized (this) {
            this.f36465l |= 4;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.am0
    public void u(@Nullable DelArchiveDialogViewModle ViewModle) {
        this.f35918e = ViewModle;
        synchronized (this) {
            this.f36465l |= 2;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    private bm0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 1, (ImageView) bindings[4], (LinearLayout) bindings[5], (TextView) bindings[3]);
        this.f36465l = -1L;
        this.f35915b.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f36460g = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f36461h = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[2];
        this.f36462i = textView2;
        textView2.setTag(null);
        this.f35917d.setTag(null);
        setRootTag(root);
        this.f36463j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f36464k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
