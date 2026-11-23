package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.proxy.ShareSourceClickProxy;
import com.join.kotlin.quark.viewmodel.ShareSourceViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class o4 extends n4 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f42634q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f42635r;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42636j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    private final TextView f42637k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    private final ImageView f42638l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42639m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42640n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private InverseBindingListener f42641o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f42642p;

    class a implements InverseBindingListener {
        a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(o4.this.f42178b);
            ShareSourceViewModel shareSourceViewModel = o4.this.f42184h;
            if (shareSourceViewModel != null) {
                MutableLiveData<String> diskUrl = shareSourceViewModel.getDiskUrl();
                if (diskUrl != null) {
                    diskUrl.setValue(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f42635r = sparseIntArray;
        sparseIntArray.put(R.id.tv_title, 5);
        sparseIntArray.put(R.id.tv_hope, 6);
        sparseIntArray.put(R.id.v_tip_link, 7);
        sparseIntArray.put(R.id.iv_link, 8);
    }

    public o4(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 9, f42634q, f42635r));
    }

    private boolean w(MutableLiveData<String> VmDiskUrl, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f42642p |= 1;
        }
        return true;
    }

    private boolean x(MutableLiveData<Boolean> VmSubmitEnable, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f42642p |= 2;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            ShareSourceClickProxy shareSourceClickProxy = this.f42185i;
            if (shareSourceClickProxy != null) {
                shareSourceClickProxy.onShareClick();
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        ShareSourceClickProxy shareSourceClickProxy2 = this.f42185i;
        if (shareSourceClickProxy2 != null) {
            shareSourceClickProxy2.onBackClick();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0030  */
    /* JADX WARN: Code duplicated, block: B:24:0x004b  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String title;
        String value;
        synchronized (this) {
            j10 = this.f42642p;
            this.f42642p = 0L;
        }
        ShareSourceViewModel shareSourceViewModel = this.f42184h;
        boolean zSafeUnbox = false;
        if ((23 & j10) != 0) {
            if ((j10 & 20) == 0) {
                title = null;
            } else {
                SourceListItemBean wishPoolItem = shareSourceViewModel != null ? shareSourceViewModel.getWishPoolItem() : null;
                if (wishPoolItem != null) {
                    title = wishPoolItem.getTitle();
                } else {
                    title = null;
                }
            }
            if ((j10 & 21) == 0) {
                value = null;
            } else {
                MutableLiveData<String> diskUrl = shareSourceViewModel != null ? shareSourceViewModel.getDiskUrl() : null;
                updateLiveDataRegistration(0, diskUrl);
                if (diskUrl != null) {
                    value = diskUrl.getValue();
                } else {
                    value = null;
                }
            }
            if ((j10 & 22) != 0) {
                MutableLiveData<Boolean> submitEnable = shareSourceViewModel != null ? shareSourceViewModel.getSubmitEnable() : null;
                updateLiveDataRegistration(1, submitEnable);
                zSafeUnbox = ViewDataBinding.safeUnbox(submitEnable != null ? submitEnable.getValue() : null);
            }
        } else {
            title = null;
            value = null;
        }
        if ((21 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f42178b, value);
        }
        if ((16 & j10) != 0) {
            TextViewBindingAdapter.setTextWatcher(this.f42178b, null, null, null, this.f42641o);
            this.f42638l.setOnClickListener(this.f42639m);
            this.f42181e.setOnClickListener(this.f42640n);
        }
        if ((20 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f42637k, title);
        }
        if ((j10 & 22) != 0) {
            this.f42181e.setEnabled(zSafeUnbox);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42642p != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42642p = 16L;
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
        if (54 == variableId) {
            u((ShareSourceViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((ShareSourceClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.n4
    public void t(@Nullable ShareSourceClickProxy Click) {
        this.f42185i = Click;
        synchronized (this) {
            this.f42642p |= 8;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.n4
    public void u(@Nullable ShareSourceViewModel Vm) {
        this.f42184h = Vm;
        synchronized (this) {
            this.f42642p |= 4;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private o4(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (EditText) bindings[2], (ImageView) bindings[8], (TextView) bindings[6], (TextView) bindings[3], (TextView) bindings[5], (View) bindings[7]);
        this.f42641o = new a();
        this.f42642p = -1L;
        this.f42178b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f42636j = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f42637k = textView;
        textView.setTag(null);
        ImageView imageView = (ImageView) bindings[4];
        this.f42638l = imageView;
        imageView.setTag(null);
        this.f42181e.setTag(null);
        setRootTag(root);
        this.f42639m = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f42640n = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
