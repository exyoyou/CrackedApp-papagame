package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.UploadSourceHopeClickProxy;
import com.join.kotlin.quark.viewmodel.UploadSourceHopeViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class l5 extends k5 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f41154s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f41155t;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41156m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41157n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41158o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private InverseBindingListener f41159p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private InverseBindingListener f41160q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f41161r;

    class a implements InverseBindingListener {
        a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(l5.this.f40597c);
            UploadSourceHopeViewModel uploadSourceHopeViewModel = l5.this.f40605k;
            if (uploadSourceHopeViewModel != null) {
                MutableLiveData<String> descData = uploadSourceHopeViewModel.getDescData();
                if (descData != null) {
                    descData.setValue(textString);
                }
            }
        }
    }

    class b implements InverseBindingListener {
        b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(l5.this.f40598d);
            UploadSourceHopeViewModel uploadSourceHopeViewModel = l5.this.f40605k;
            if (uploadSourceHopeViewModel != null) {
                MutableLiveData<String> linkData = uploadSourceHopeViewModel.getLinkData();
                if (linkData != null) {
                    linkData.setValue(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41155t = sparseIntArray;
        sparseIntArray.put(R.id.main_content, 6);
        sparseIntArray.put(R.id.rv_tags, 7);
        sparseIntArray.put(R.id.v_tip_link, 8);
        sparseIntArray.put(R.id.iv_link, 9);
    }

    public l5(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 10, f41154s, f41155t));
    }

    private boolean w(MutableLiveData<String> VmDescData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41161r |= 2;
        }
        return true;
    }

    private boolean x(MutableLiveData<String> VmLinkData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41161r |= 4;
        }
        return true;
    }

    private boolean y(MutableLiveData<String> VmTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41161r |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            UploadSourceHopeClickProxy uploadSourceHopeClickProxy = this.f40606l;
            if (uploadSourceHopeClickProxy != null) {
                uploadSourceHopeClickProxy.onBackClick();
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        UploadSourceHopeClickProxy uploadSourceHopeClickProxy2 = this.f40606l;
        if (uploadSourceHopeClickProxy2 != null) {
            uploadSourceHopeClickProxy2.onUploadSourceClick();
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
            j10 = this.f41161r;
            this.f41161r = 0L;
        }
        UploadSourceHopeViewModel uploadSourceHopeViewModel = this.f40605k;
        if ((47 & j10) != 0) {
            if ((j10 & 41) == 0) {
                value2 = null;
            } else {
                MutableLiveData<String> title = uploadSourceHopeViewModel != null ? uploadSourceHopeViewModel.getTitle() : null;
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
                MutableLiveData<String> descData = uploadSourceHopeViewModel != null ? uploadSourceHopeViewModel.getDescData() : null;
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
                MutableLiveData<String> linkData = uploadSourceHopeViewModel != null ? uploadSourceHopeViewModel.getLinkData() : null;
                updateLiveDataRegistration(2, linkData);
                if (linkData != null) {
                    value = linkData.getValue();
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
            this.f40596b.setOnClickListener(this.f41158o);
            TextViewBindingAdapter.setTextWatcher(this.f40597c, null, null, null, this.f41159p);
            TextViewBindingAdapter.setTextWatcher(this.f40598d, null, null, null, this.f41160q);
            this.f40603i.setOnClickListener(this.f41157n);
        }
        if ((42 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f40597c, value3);
        }
        if ((j10 & 44) != 0) {
            TextViewBindingAdapter.setText(this.f40598d, value);
        }
        if ((j10 & 41) != 0) {
            TextViewBindingAdapter.setText(this.f40602h, value2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41161r != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41161r = 32L;
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
            u((UploadSourceHopeViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((UploadSourceHopeClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.k5
    public void t(@Nullable UploadSourceHopeClickProxy Click) {
        this.f40606l = Click;
        synchronized (this) {
            this.f41161r |= 16;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.k5
    public void u(@Nullable UploadSourceHopeViewModel Vm) {
        this.f40605k = Vm;
        synchronized (this) {
            this.f41161r |= 8;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private l5(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 3, (ImageView) bindings[1], (EditText) bindings[3], (EditText) bindings[4], (ImageView) bindings[9], (NestedScrollView) bindings[6], (RecyclerView) bindings[7], (TextView) bindings[2], (TextView) bindings[5], (LinearLayout) bindings[8]);
        this.f41159p = new a();
        this.f41160q = new b();
        this.f41161r = -1L;
        this.f40596b.setTag(null);
        this.f40597c.setTag(null);
        this.f40598d.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f41156m = linearLayout;
        linearLayout.setTag(null);
        this.f40602h.setTag(null);
        this.f40603i.setTag(null);
        setRootTag(root);
        this.f41157n = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f41158o = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
