package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.ui.cloudarchive.DownloadArchivDialogeViewModle;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;

/* JADX INFO: loaded from: classes4.dex */
public class ri extends qi implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f44359k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f44360l = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final TextView f44362e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final TextView f44363f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final ProgressBar f44364g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final TextView f44365h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f44366i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f44367j;

    public ri(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f44359k, f44360l));
    }

    private boolean w(MutableLiveData<String> ViewModleDialogTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f44367j |= 2;
        }
        return true;
    }

    private boolean x(MutableLiveData<Integer> ViewModleProgress, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f44367j |= 1;
        }
        return true;
    }

    private boolean y(MutableLiveData<String> ViewModleRequestProgressTextShow, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f44367j |= 4;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        View.OnClickListener onClickListener = this.f43843c;
        if (onClickListener != null) {
            onClickListener.onClick(callbackArg_0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005e  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        synchronized (this) {
            j10 = this.f44367j;
            this.f44367j = 0L;
        }
        DownloadArchivDialogeViewModle downloadArchivDialogeViewModle = this.f43842b;
        int iSafeUnbox = 0;
        String value2 = null;
        if ((47 & j10) != 0) {
            if ((j10 & 41) != 0) {
                MutableLiveData<Integer> progress = downloadArchivDialogeViewModle != null ? downloadArchivDialogeViewModle.getProgress() : null;
                updateLiveDataRegistration(0, progress);
                iSafeUnbox = ViewDataBinding.safeUnbox(progress != null ? progress.getValue() : null);
            }
            if ((j10 & 44) == 0) {
                value = null;
            } else {
                ModDataRequest request = downloadArchivDialogeViewModle != null ? downloadArchivDialogeViewModle.getRequest() : null;
                MutableLiveData<String> progressTextShow = request != null ? request.getProgressTextShow() : null;
                updateLiveDataRegistration(2, progressTextShow);
                if (progressTextShow != null) {
                    value = progressTextShow.getValue();
                } else {
                    value = null;
                }
            }
            if ((j10 & 42) != 0) {
                MutableLiveData<String> dialogTitle = downloadArchivDialogeViewModle != null ? downloadArchivDialogeViewModle.getDialogTitle() : null;
                updateLiveDataRegistration(1, dialogTitle);
                if (dialogTitle != null) {
                    value2 = dialogTitle.getValue();
                }
            }
        } else {
            value = null;
        }
        if ((42 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f44362e, value2);
        }
        if ((j10 & 44) != 0) {
            TextViewBindingAdapter.setText(this.f44363f, value);
        }
        if ((j10 & 41) != 0) {
            this.f44364g.setProgress(iSafeUnbox);
        }
        if ((j10 & 32) != 0) {
            this.f44365h.setOnClickListener(this.f44366i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f44367j != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f44367j = 32L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return x((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return w((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 2) {
            return false;
        }
        return y((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (50 == variableId) {
            u((DownloadArchivDialogeViewModle) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((View.OnClickListener) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.qi
    public void t(@Nullable View.OnClickListener Click) {
        this.f43843c = Click;
        synchronized (this) {
            this.f44367j |= 16;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.qi
    public void u(@Nullable DownloadArchivDialogeViewModle ViewModle) {
        this.f43842b = ViewModle;
        synchronized (this) {
            this.f44367j |= 8;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    private ri(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 3);
        this.f44367j = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f44361d = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f44362e = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[2];
        this.f44363f = textView2;
        textView2.setTag(null);
        ProgressBar progressBar = (ProgressBar) bindings[3];
        this.f44364g = progressBar;
        progressBar.setTag(null);
        TextView textView3 = (TextView) bindings[4];
        this.f44365h = textView3;
        textView3.setTag(null);
        setRootTag(root);
        this.f44366i = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
