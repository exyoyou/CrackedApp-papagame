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
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialogViewModle;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class tl0 extends sl0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45319l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45320m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45321h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final TextView f45322i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f45323j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f45324k;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f45320m = sparseIntArray;
        sparseIntArray.put(R.id.main, 4);
    }

    public tl0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f45319l, f45320m));
    }

    private boolean C(MutableLiveData<List<ArchiveData>> ViewModleArchiveList, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f45324k |= 2;
        }
        return true;
    }

    private boolean D(MutableLiveData<DialogData> ViewModleDialogData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f45324k |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.sl0
    public void A(@Nullable View.OnClickListener Click) {
        this.f44857f = Click;
        synchronized (this) {
            this.f45324k |= 16;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.sl0
    public void B(@Nullable ChoiceArchiveDialogViewModle ViewModle) {
        this.f44856e = ViewModle;
        synchronized (this) {
            this.f45324k |= 4;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        View.OnClickListener onClickListener = this.f44857f;
        if (onClickListener != null) {
            onClickListener.onClick(callbackArg_0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        List<ArchiveData> list;
        String title;
        synchronized (this) {
            j10 = this.f45324k;
            this.f45324k = 0L;
        }
        ChoiceArchiveDialogViewModle choiceArchiveDialogViewModle = this.f44856e;
        RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.f44858g;
        String str = null;
        value = null;
        List<ArchiveData> value = null;
        if ((39 & j10) != 0) {
            if ((j10 & 37) == 0) {
                title = null;
            } else {
                MutableLiveData<DialogData> dialogData = choiceArchiveDialogViewModle != null ? choiceArchiveDialogViewModle.getDialogData() : null;
                updateLiveDataRegistration(0, dialogData);
                DialogData value2 = dialogData != null ? dialogData.getValue() : null;
                if (value2 != null) {
                    title = value2.getTitle();
                } else {
                    title = null;
                }
            }
            if ((j10 & 38) != 0) {
                MutableLiveData<List<ArchiveData>> archiveList = choiceArchiveDialogViewModle != null ? choiceArchiveDialogViewModle.getArchiveList() : null;
                updateLiveDataRegistration(1, archiveList);
                if (archiveList != null) {
                    value = archiveList.getValue();
                }
            }
            list = value;
            str = title;
        } else {
            list = null;
        }
        long j11 = 40 & j10;
        if ((32 & j10) != 0) {
            this.f44853b.setOnClickListener(this.f45323j);
        }
        if ((j10 & 37) != 0) {
            TextViewBindingAdapter.setText(this.f45322i, str);
        }
        if (j11 != 0) {
            this.f44855d.setAdapter(adapter);
        }
        if ((j10 & 38) != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f44855d, list);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45324k != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45324k = 32L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return D((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 1) {
            return false;
        }
        return C((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (50 == variableId) {
            B((ChoiceArchiveDialogViewModle) variable);
            return true;
        }
        if (1 == variableId) {
            z((RecyclerView.Adapter) variable);
            return true;
        }
        if (8 != variableId) {
            return false;
        }
        A((View.OnClickListener) variable);
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.sl0
    public void z(@Nullable RecyclerView.Adapter<RecyclerView.ViewHolder> Adapter) {
        this.f44858g = Adapter;
        synchronized (this) {
            this.f45324k |= 8;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    private tl0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (ImageView) bindings[3], (LinearLayout) bindings[4], (RecyclerView) bindings[2]);
        this.f45324k = -1L;
        this.f44853b.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f45321h = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f45322i = textView;
        textView.setTag(null);
        this.f44855d.setTag(null);
        setRootTag(root);
        this.f45323j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
