package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
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
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.proxy.GameDetailCommentListClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailCommentListViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class em extends dm implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38006m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38007n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38008h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final TextView f38009i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final TextView f38010j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f38011k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f38012l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38007n = sparseIntArray;
        sparseIntArray.put(R.id.cl_container, 5);
        sparseIntArray.put(R.id.rvList, 6);
    }

    public em(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 7, f38006m, f38007n));
    }

    private boolean w(MutableLiveData<String> VmGoodRate, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38012l |= 1;
        }
        return true;
    }

    private boolean x(MutableLiveData<Boolean> VmShowGoodRate, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38012l |= 4;
        }
        return true;
    }

    private boolean y(MutableLiveData<String> VmSortText, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38012l |= 2;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        GameDetailCommentListClickProxy gameDetailCommentListClickProxy = this.f37532g;
        if (gameDetailCommentListClickProxy != null) {
            gameDetailCommentListClickProxy.clickSpinner();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    /* JADX WARN: Code duplicated, block: B:25:0x0050  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        int i10;
        String str;
        String value2;
        synchronized (this) {
            j10 = this.f38012l;
            this.f38012l = 0L;
        }
        GameDetailCommentListViewModel gameDetailCommentListViewModel = this.f37531f;
        if ((47 & j10) != 0) {
            if ((j10 & 41) == 0) {
                value = null;
            } else {
                MutableLiveData<String> goodRate = gameDetailCommentListViewModel != null ? gameDetailCommentListViewModel.getGoodRate() : null;
                updateLiveDataRegistration(0, goodRate);
                if (goodRate != null) {
                    value = goodRate.getValue();
                } else {
                    value = null;
                }
            }
            if ((j10 & 42) == 0) {
                value2 = null;
            } else {
                MutableLiveData<String> sortText = gameDetailCommentListViewModel != null ? gameDetailCommentListViewModel.getSortText() : null;
                updateLiveDataRegistration(1, sortText);
                if (sortText != null) {
                    value2 = sortText.getValue();
                } else {
                    value2 = null;
                }
            }
            long j11 = j10 & 44;
            if (j11 != 0) {
                MutableLiveData<Boolean> showGoodRate = gameDetailCommentListViewModel != null ? gameDetailCommentListViewModel.getShowGoodRate() : null;
                updateLiveDataRegistration(2, showGoodRate);
                boolean zSafeUnbox = ViewDataBinding.safeUnbox(showGoodRate != null ? showGoodRate.getValue() : null);
                if (j11 != 0) {
                    j10 |= zSafeUnbox ? 128L : 64L;
                }
                i10 = zSafeUnbox ? 0 : 4;
                str = value2;
            } else {
                str = value2;
                i10 = 0;
            }
        } else {
            value = null;
            i10 = 0;
            str = null;
        }
        if ((j10 & 32) != 0) {
            this.f37528c.setOnClickListener(this.f38011k);
        }
        if ((44 & j10) != 0) {
            this.f38009i.setVisibility(i10);
            this.f37529d.setVisibility(i10);
        }
        if ((j10 & 42) != 0) {
            TextViewBindingAdapter.setText(this.f38010j, str);
        }
        if ((j10 & 41) != 0) {
            TextViewBindingAdapter.setText(this.f37529d, value);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f38012l != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38012l = 32L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return w((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return y((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 2) {
            return false;
        }
        return x((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 == variableId) {
            u((GameDetailCommentListViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailCommentListClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.dm
    public void t(@Nullable GameDetailCommentListClickProxy Click) {
        this.f37532g = Click;
        synchronized (this) {
            this.f38012l |= 16;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.dm
    public void u(@Nullable GameDetailCommentListViewModel Vm) {
        this.f37531f = Vm;
        synchronized (this) {
            this.f38012l |= 8;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private em(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 3, (ConstraintLayout) bindings[5], (LinearLayout) bindings[3], (TextView) bindings[1], (XQuickRecyclerView) bindings[6]);
        this.f38012l = -1L;
        this.f37528c.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f38008h = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[2];
        this.f38009i = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[4];
        this.f38010j = textView2;
        textView2.setTag(null);
        this.f37529d.setTag(null);
        setRootTag(root);
        this.f38011k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
