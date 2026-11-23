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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.proxy.SourceSaveClickProxy;
import com.join.kotlin.quark.viewmodel.SourceSaveViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class u4 extends t4 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45540o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45541p;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45542k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    private final TextView f45543l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f45544m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f45545n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f45541p = sparseIntArray;
        sparseIntArray.put(R.id.cl_content, 7);
        sparseIntArray.put(R.id.tv_label1, 8);
    }

    public u4(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 9, f45540o, f45541p));
    }

    private boolean w(MutableLiveData<SourceListItemBean> VmItemBean, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f45545n |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        SourceSaveClickProxy sourceSaveClickProxy = this.f45126j;
        if (sourceSaveClickProxy != null) {
            sourceSaveClickProxy.onSaveClick();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003f  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String title;
        String nickname;
        String icon;
        String intro;
        String avatar;
        synchronized (this) {
            j10 = this.f45545n;
            this.f45545n = 0L;
        }
        SourceSaveViewModel sourceSaveViewModel = this.f45125i;
        long j11 = 11 & j10;
        if (j11 == 0) {
            title = null;
            nickname = null;
            icon = null;
            intro = null;
            avatar = null;
        } else {
            MutableLiveData<SourceListItemBean> itemBean = sourceSaveViewModel != null ? sourceSaveViewModel.getItemBean() : null;
            updateLiveDataRegistration(0, itemBean);
            SourceListItemBean value = itemBean != null ? itemBean.getValue() : null;
            if (value != null) {
                nickname = value.getNickname();
                icon = value.getIcon();
                intro = value.getIntro();
                avatar = value.getAvatar();
                title = value.getTitle();
            } else {
                title = null;
                nickname = null;
                icon = null;
                intro = null;
                avatar = null;
            }
        }
        if (j11 != 0) {
            TextViewBindingAdapter.setText(this.f45543l, intro);
            SimpleDrawableViewKt.loadUrl(this.f45119c, avatar, null, 0);
            SimpleDrawableViewKt.loadUrl(this.f45120d, icon, null, 0);
            TextViewBindingAdapter.setText(this.f45121e, nickname);
            TextViewBindingAdapter.setText(this.f45124h, title);
        }
        if ((j10 & 8) != 0) {
            this.f45123g.setOnClickListener(this.f45544m);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45545n != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45545n = 8L;
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
        if (54 == variableId) {
            u((SourceSaveViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((SourceSaveClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t4
    public void t(@Nullable SourceSaveClickProxy Click) {
        this.f45126j = Click;
        synchronized (this) {
            this.f45545n |= 4;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t4
    public void u(@Nullable SourceSaveViewModel Vm) {
        this.f45125i = Vm;
        synchronized (this) {
            this.f45545n |= 2;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private u4(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 1, (ConstraintLayout) bindings[7], (SimpleDraweeView) bindings[5], (SimpleDraweeView) bindings[1], (TextView) bindings[6], (TextView) bindings[8], (TextView) bindings[4], (TextView) bindings[2]);
        this.f45545n = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f45542k = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[3];
        this.f45543l = textView;
        textView.setTag(null);
        this.f45119c.setTag(null);
        this.f45120d.setTag(null);
        this.f45121e.setTag(null);
        this.f45123g.setTag(null);
        this.f45124h.setTag(null);
        setRootTag(root);
        this.f45544m = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
