package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.model.bean.SortTypeBean;
import com.join.kotlin.quark.proxy.SourceHopeClickProxy;
import com.join.kotlin.quark.viewmodel.SourceHopeViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class i4 extends h4 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f39636o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f39637p;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39638i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final TextView f39639j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39640k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39641l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f39642m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f39643n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f39637p = sparseIntArray;
        sparseIntArray.put(R.id.tabLayout, 5);
        sparseIntArray.put(R.id.viewPager, 6);
    }

    public i4(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 7, f39636o, f39637p));
    }

    private boolean w(MutableLiveData<SortTypeBean> VmSortType, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f39643n |= 2;
        }
        return true;
    }

    private boolean x(MutableLiveData<String> VmTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f39643n |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            SourceHopeClickProxy sourceHopeClickProxy = this.f39155h;
            if (sourceHopeClickProxy != null) {
                sourceHopeClickProxy.onBackClick();
                return;
            }
            return;
        }
        if (sourceId == 2) {
            SourceHopeClickProxy sourceHopeClickProxy2 = this.f39155h;
            if (sourceHopeClickProxy2 != null) {
                sourceHopeClickProxy2.onSortTypeClick();
                return;
            }
            return;
        }
        if (sourceId != 3) {
            return;
        }
        SourceHopeClickProxy sourceHopeClickProxy3 = this.f39155h;
        if (sourceHopeClickProxy3 != null) {
            sourceHopeClickProxy3.onWishCreateClick();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0031  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String value;
        synchronized (this) {
            j10 = this.f39643n;
            this.f39643n = 0L;
        }
        SourceHopeViewModel sourceHopeViewModel = this.f39154g;
        String typeName = null;
        if ((23 & j10) != 0) {
            if ((j10 & 21) == 0) {
                value = null;
            } else {
                MutableLiveData<String> title = sourceHopeViewModel != null ? sourceHopeViewModel.getTitle() : null;
                updateLiveDataRegistration(0, title);
                if (title != null) {
                    value = title.getValue();
                } else {
                    value = null;
                }
            }
            if ((j10 & 22) != 0) {
                MutableLiveData<SortTypeBean> sortType = sourceHopeViewModel != null ? sourceHopeViewModel.getSortType() : null;
                updateLiveDataRegistration(1, sortType);
                SortTypeBean value2 = sortType != null ? sortType.getValue() : null;
                if (value2 != null) {
                    typeName = value2.getTypeName();
                }
            }
            str = typeName;
            typeName = value;
        } else {
            str = null;
        }
        if ((16 & j10) != 0) {
            this.f39149b.setOnClickListener(this.f39641l);
            this.f39639j.setOnClickListener(this.f39640k);
            this.f39152e.setOnClickListener(this.f39642m);
        }
        if ((j10 & 21) != 0) {
            TextViewBindingAdapter.setText(this.f39151d, typeName);
        }
        if ((j10 & 22) != 0) {
            TextViewBindingAdapter.setText(this.f39152e, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f39643n != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f39643n = 16L;
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
            u((SourceHopeViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((SourceHopeClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.h4
    public void t(@Nullable SourceHopeClickProxy Click) {
        this.f39155h = Click;
        synchronized (this) {
            this.f39643n |= 8;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.h4
    public void u(@Nullable SourceHopeViewModel Vm) {
        this.f39154g = Vm;
        synchronized (this) {
            this.f39643n |= 4;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private i4(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (ImageView) bindings[1], (TabLayout) bindings[5], (TextView) bindings[2], (TextView) bindings[3], (ViewPager) bindings[6]);
        this.f39643n = -1L;
        this.f39149b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f39638i = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[4];
        this.f39639j = textView;
        textView.setTag(null);
        this.f39151d.setTag(null);
        this.f39152e.setTag(null);
        setRootTag(root);
        this.f39640k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f39641l = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f39642m = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
