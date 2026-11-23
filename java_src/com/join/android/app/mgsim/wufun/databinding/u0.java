package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.proxy.GameDetailInfoBottomDialogClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailInfoBottomDialogViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class u0 extends t0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45498k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45499l;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final TextView f45500h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f45501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f45502j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f45499l = sparseIntArray;
        sparseIntArray.put(R.id.cl_container, 3);
        sparseIntArray.put(R.id.recyclerview, 4);
    }

    public u0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f45498k, f45499l));
    }

    private boolean w(MutableLiveData<String> VmBtnText, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f45502j |= 2;
        }
        return true;
    }

    private boolean x(MutableLiveData<String> VmTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f45502j |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        GameDetailInfoBottomDialogClickProxy gameDetailInfoBottomDialogClickProxy = this.f45064g;
        if (gameDetailInfoBottomDialogClickProxy != null) {
            gameDetailInfoBottomDialogClickProxy.onConfirmClick();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0031  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        synchronized (this) {
            j10 = this.f45502j;
            this.f45502j = 0L;
        }
        GameDetailInfoBottomDialogViewModel gameDetailInfoBottomDialogViewModel = this.f45063f;
        String value2 = null;
        if ((23 & j10) != 0) {
            if ((j10 & 21) == 0) {
                value = null;
            } else {
                MutableLiveData<String> title = gameDetailInfoBottomDialogViewModel != null ? gameDetailInfoBottomDialogViewModel.getTitle() : null;
                updateLiveDataRegistration(0, title);
                if (title != null) {
                    value = title.getValue();
                } else {
                    value = null;
                }
            }
            if ((j10 & 22) != 0) {
                MutableLiveData<String> btnText = gameDetailInfoBottomDialogViewModel != null ? gameDetailInfoBottomDialogViewModel.getBtnText() : null;
                updateLiveDataRegistration(1, btnText);
                if (btnText != null) {
                    value2 = btnText.getValue();
                }
            }
        } else {
            value = null;
        }
        if ((16 & j10) != 0) {
            this.f45500h.setOnClickListener(this.f45501i);
        }
        if ((j10 & 22) != 0) {
            TextViewBindingAdapter.setText(this.f45500h, value2);
        }
        if ((j10 & 21) != 0) {
            TextViewBindingAdapter.setText(this.f45062e, value);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45502j != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45502j = 16L;
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
        if (54 == variableId) {
            u((GameDetailInfoBottomDialogViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailInfoBottomDialogClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t0
    public void t(@Nullable GameDetailInfoBottomDialogClickProxy Click) {
        this.f45064g = Click;
        synchronized (this) {
            this.f45502j |= 8;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t0
    public void u(@Nullable GameDetailInfoBottomDialogViewModel Vm) {
        this.f45063f = Vm;
        synchronized (this) {
            this.f45502j |= 4;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private u0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (ConstraintLayout) bindings[3], (ConstraintLayout) bindings[0], (RecyclerView) bindings[4], (TextView) bindings[1]);
        this.f45502j = -1L;
        this.f45060c.setTag(null);
        TextView textView = (TextView) bindings[2];
        this.f45500h = textView;
        textView.setTag(null);
        this.f45062e.setTag(null);
        setRootTag(root);
        this.f45501i = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
