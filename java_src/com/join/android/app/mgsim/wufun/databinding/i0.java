package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.quark.proxy.CreateSourceHopeClickProxy;
import com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class i0 extends h0 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f39571s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f39572t;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39573m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final TextView f39574n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39575o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39576p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private InverseBindingListener f39577q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f39578r;

    class a implements InverseBindingListener {
        a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(i0.this.f39080e);
            CreateSourceHopeViewModel createSourceHopeViewModel = i0.this.f39086k;
            if (createSourceHopeViewModel != null) {
                MutableLiveData<String> descData = createSourceHopeViewModel.getDescData();
                if (descData != null) {
                    descData.setValue(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39572t = sparseIntArray;
        sparseIntArray.put(R.id.main_content, 6);
        sparseIntArray.put(R.id.appBarLayout, 7);
        sparseIntArray.put(R.id.collapsingToolbarLayout, 8);
        sparseIntArray.put(R.id.rv_tags, 9);
        sparseIntArray.put(R.id.xrv_list, 10);
    }

    public i0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 11, f39571s, f39572t));
    }

    private boolean w(MutableLiveData<String> VmDescData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f39578r |= 2;
        }
        return true;
    }

    private boolean x(MutableLiveData<String> VmListSizeStr, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f39578r |= 4;
        }
        return true;
    }

    private boolean y(MutableLiveData<String> VmTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f39578r |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            CreateSourceHopeClickProxy createSourceHopeClickProxy = this.f39087l;
            if (createSourceHopeClickProxy != null) {
                createSourceHopeClickProxy.onBackClick();
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        CreateSourceHopeClickProxy createSourceHopeClickProxy2 = this.f39087l;
        if (createSourceHopeClickProxy2 != null) {
            createSourceHopeClickProxy2.onCreateHopeClick();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0035  */
    /* JADX WARN: Code duplicated, block: B:25:0x0051  */
    /* JADX WARN: Code duplicated, block: B:34:0x006d  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        String value2;
        String value3;
        synchronized (this) {
            j10 = this.f39578r;
            this.f39578r = 0L;
        }
        CreateSourceHopeViewModel createSourceHopeViewModel = this.f39086k;
        if ((47 & j10) != 0) {
            if ((j10 & 41) == 0) {
                value2 = null;
            } else {
                MutableLiveData<String> title = createSourceHopeViewModel != null ? createSourceHopeViewModel.getTitle() : null;
                updateLiveDataRegistration(0, title);
                if (title != null) {
                    value2 = title.getValue();
                } else {
                    value2 = null;
                }
            }
            if ((j10 & 42) == 0) {
                value3 = null;
            } else {
                MutableLiveData<String> descData = createSourceHopeViewModel != null ? createSourceHopeViewModel.getDescData() : null;
                updateLiveDataRegistration(1, descData);
                if (descData != null) {
                    value3 = descData.getValue();
                } else {
                    value3 = null;
                }
            }
            if ((j10 & 44) == 0) {
                value = null;
            } else {
                MutableLiveData<String> listSizeStr = createSourceHopeViewModel != null ? createSourceHopeViewModel.getListSizeStr() : null;
                updateLiveDataRegistration(2, listSizeStr);
                if (listSizeStr != null) {
                    value = listSizeStr.getValue();
                } else {
                    value = null;
                }
            }
        } else {
            value = null;
            value2 = null;
            value3 = null;
        }
        if ((32 & j10) != 0) {
            this.f39078c.setOnClickListener(this.f39576p);
            TextViewBindingAdapter.setTextWatcher(this.f39080e, null, null, null, this.f39577q);
            this.f39084i.setOnClickListener(this.f39575o);
        }
        if ((42 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f39080e, value3);
        }
        if ((j10 & 44) != 0) {
            TextViewBindingAdapter.setText(this.f39574n, value);
        }
        if ((j10 & 41) != 0) {
            TextViewBindingAdapter.setText(this.f39083h, value2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f39578r != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39578r = 32L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return y((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return w((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 2) {
            return false;
        }
        return x((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 == variableId) {
            u((CreateSourceHopeViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((CreateSourceHopeClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.h0
    public void t(@Nullable CreateSourceHopeClickProxy Click) {
        this.f39087l = Click;
        synchronized (this) {
            this.f39578r |= 16;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.h0
    public void u(@Nullable CreateSourceHopeViewModel Vm) {
        this.f39086k = Vm;
        synchronized (this) {
            this.f39578r |= 8;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private i0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 3, (AppBarLayout) bindings[7], (ImageView) bindings[1], (CollapsingToolbarLayout) bindings[8], (EditText) bindings[3], (CoordinatorLayout) bindings[6], (RecyclerView) bindings[9], (TextView) bindings[2], (TextView) bindings[4], (XQuickRecyclerView) bindings[10]);
        this.f39577q = new a();
        this.f39578r = -1L;
        this.f39078c.setTag(null);
        this.f39080e.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f39573m = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[5];
        this.f39574n = textView;
        textView.setTag(null);
        this.f39083h.setTag(null);
        this.f39084i.setTag(null);
        setRootTag(root);
        this.f39575o = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f39576p = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
