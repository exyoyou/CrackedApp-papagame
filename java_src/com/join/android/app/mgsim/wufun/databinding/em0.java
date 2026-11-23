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
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;

/* JADX INFO: loaded from: classes4.dex */
public class em0 extends dm0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38013r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38014s;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38015j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    private final TextView f38016k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    private final TextView f38017l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final TextView f38018m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f38019n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f38020o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f38021p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f38022q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38014s = sparseIntArray;
        sparseIntArray.put(R.id.main, 8);
        sparseIntArray.put(R.id.radio, 9);
    }

    public em0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 10, f38013r, f38014s));
    }

    private boolean w(MutableLiveData<ArchiveData> ViewModleArchive, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38022q |= 2;
        }
        return true;
    }

    private boolean x(MutableLiveData<DialogData> ViewModleDialogData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38022q |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            View.OnClickListener onClickListener = this.f37540i;
            if (onClickListener != null) {
                onClickListener.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId == 2) {
            View.OnClickListener onClickListener2 = this.f37540i;
            if (onClickListener2 != null) {
                onClickListener2.onClick(callbackArg_0);
                return;
            }
            return;
        }
        if (sourceId != 3) {
            return;
        }
        View.OnClickListener onClickListener3 = this.f37540i;
        if (onClickListener3 != null) {
            onClickListener3.onClick(callbackArg_0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0047  */
    /* JADX WARN: Code duplicated, block: B:31:0x0077  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String playTime;
        String str;
        String content;
        String okButn;
        String title;
        String cancleButn;
        synchronized (this) {
            j10 = this.f38022q;
            this.f38022q = 0L;
        }
        DelArchiveDialogViewModle delArchiveDialogViewModle = this.f37539h;
        String str2 = null;
        if ((23 & j10) != 0) {
            if ((j10 & 21) == 0) {
                cancleButn = null;
                content = null;
                okButn = null;
                title = null;
            } else {
                MutableLiveData<DialogData> dialogData = delArchiveDialogViewModle != null ? delArchiveDialogViewModle.getDialogData() : null;
                updateLiveDataRegistration(0, dialogData);
                DialogData value = dialogData != null ? dialogData.getValue() : null;
                if (value != null) {
                    content = value.getContent();
                    okButn = value.getOkButn();
                    title = value.getTitle();
                    cancleButn = value.getCancleButn();
                } else {
                    cancleButn = null;
                    content = null;
                    okButn = null;
                    title = null;
                }
            }
            if ((j10 & 22) == 0) {
                playTime = null;
                str2 = cancleButn;
                str = null;
            } else {
                MutableLiveData<ArchiveData> archive = delArchiveDialogViewModle != null ? delArchiveDialogViewModle.getArchive() : null;
                updateLiveDataRegistration(1, archive);
                ArchiveData value2 = archive != null ? archive.getValue() : null;
                if (value2 != null) {
                    String archiveDesc = value2.getArchiveDesc();
                    playTime = value2.getPlayTime();
                    str2 = cancleButn;
                    str = archiveDesc;
                } else {
                    playTime = null;
                    str2 = cancleButn;
                    str = null;
                }
            }
        } else {
            playTime = null;
            str = null;
            content = null;
            okButn = null;
            title = null;
        }
        if ((16 & j10) != 0) {
            this.f37533b.setOnClickListener(this.f38020o);
            this.f37534c.setOnClickListener(this.f38019n);
            this.f37537f.setOnClickListener(this.f38021p);
        }
        if ((j10 & 21) != 0) {
            TextViewBindingAdapter.setText(this.f37533b, str2);
            TextViewBindingAdapter.setText(this.f38016k, title);
            TextViewBindingAdapter.setText(this.f38017l, content);
            TextViewBindingAdapter.setText(this.f37537f, okButn);
        }
        if ((j10 & 22) != 0) {
            TextViewBindingAdapter.setText(this.f38018m, playTime);
            TextViewBindingAdapter.setText(this.f37536e, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f38022q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38022q = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return x((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 1) {
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

    @Override // com.join.android.app.mgsim.wufun.databinding.dm0
    public void t(@Nullable View.OnClickListener Click) {
        this.f37540i = Click;
        synchronized (this) {
            this.f38022q |= 8;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.dm0
    public void u(@Nullable DelArchiveDialogViewModle ViewModle) {
        this.f37539h = ViewModle;
        synchronized (this) {
            this.f38022q |= 4;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    private em0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (TextView) bindings[5], (ImageView) bindings[7], (LinearLayout) bindings[8], (TextView) bindings[3], (TextView) bindings[6], (ImageView) bindings[9]);
        this.f38022q = -1L;
        this.f37533b.setTag(null);
        this.f37534c.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f38015j = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f38016k = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[2];
        this.f38017l = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) bindings[4];
        this.f38018m = textView3;
        textView3.setTag(null);
        this.f37536e.setTag(null);
        this.f37537f.setTag(null);
        setRootTag(root);
        this.f38019n = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f38020o = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f38021p = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
