package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
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
import com.join.kotlin.quark.proxy.SourceShareClickProxy;
import com.join.kotlin.quark.viewmodel.SourceShareDetailViewModel;

/* JADX INFO: loaded from: classes4.dex */
public class y4 extends x4 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47569t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47570u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47571o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    private final TextView f47572p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f47573q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f47574r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f47575s;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47570u = sparseIntArray;
        sparseIntArray.put(R.id.rl_content, 9);
        sparseIntArray.put(R.id.web_view, 10);
        sparseIntArray.put(R.id.cl_content, 11);
        sparseIntArray.put(R.id.tv_label1, 12);
    }

    public y4(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 13, f47569t, f47570u));
    }

    private boolean w(MutableLiveData<SourceListItemBean> VmItemBean, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f47575s |= 2;
        }
        return true;
    }

    private boolean x(MutableLiveData<String> VmTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f47575s |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            SourceShareClickProxy sourceShareClickProxy = this.f47085n;
            if (sourceShareClickProxy != null) {
                sourceShareClickProxy.onBackClick();
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        SourceShareClickProxy sourceShareClickProxy2 = this.f47085n;
        if (sourceShareClickProxy2 != null) {
            sourceShareClickProxy2.onSaveClick();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    /* JADX WARN: Code duplicated, block: B:33:0x007a  */
    /* JADX WARN: Code duplicated, block: B:36:0x008d  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:46:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String avatar;
        String value;
        String title;
        String str;
        String nickname;
        String strIconUrl;
        synchronized (this) {
            j10 = this.f47575s;
            this.f47575s = 0L;
        }
        SourceShareDetailViewModel sourceShareDetailViewModel = this.f47084m;
        if ((23 & j10) != 0) {
            if ((j10 & 21) == 0) {
                value = null;
            } else {
                MutableLiveData<String> title2 = sourceShareDetailViewModel != null ? sourceShareDetailViewModel.getTitle() : null;
                updateLiveDataRegistration(0, title2);
                if (title2 != null) {
                    value = title2.getValue();
                } else {
                    value = null;
                }
            }
            if ((j10 & 22) != 0) {
                MutableLiveData<SourceListItemBean> itemBean = sourceShareDetailViewModel != null ? sourceShareDetailViewModel.getItemBean() : null;
                updateLiveDataRegistration(1, itemBean);
                SourceListItemBean value2 = itemBean != null ? itemBean.getValue() : null;
                if (value2 != null) {
                    title = value2.getTitle();
                    nickname = value2.getNickname();
                    strIconUrl = value2.iconUrl();
                    String strIntroText = value2.introText();
                    avatar = value2.getAvatar();
                    str = strIntroText;
                }
                if ((j10 & 16) != 0) {
                    this.f47073b.setOnClickListener(this.f47573q);
                    this.f47081j.setOnClickListener(this.f47574r);
                }
                if ((22 & j10) != 0) {
                    TextViewBindingAdapter.setText(this.f47572p, str);
                    SimpleDrawableViewKt.loadUrl(this.f47076e, avatar, null, 0);
                    SimpleDrawableViewKt.loadUrl(this.f47077f, strIconUrl, null, 0);
                    TextViewBindingAdapter.setText(this.f47079h, nickname);
                    TextViewBindingAdapter.setText(this.f47082k, title);
                }
                if ((j10 & 21) != 0) {
                    TextViewBindingAdapter.setText(this.f47078g, value);
                }
            }
            avatar = null;
            title = null;
        } else {
            avatar = null;
            value = null;
            title = null;
        }
        str = title;
        nickname = str;
        strIconUrl = nickname;
        if ((j10 & 16) != 0) {
            this.f47073b.setOnClickListener(this.f47573q);
            this.f47081j.setOnClickListener(this.f47574r);
        }
        if ((22 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f47572p, str);
            SimpleDrawableViewKt.loadUrl(this.f47076e, avatar, null, 0);
            SimpleDrawableViewKt.loadUrl(this.f47077f, strIconUrl, null, 0);
            TextViewBindingAdapter.setText(this.f47079h, nickname);
            TextViewBindingAdapter.setText(this.f47082k, title);
        }
        if ((j10 & 21) != 0) {
            TextViewBindingAdapter.setText(this.f47078g, value);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47575s != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47575s = 16L;
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
            u((SourceShareDetailViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((SourceShareClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x4
    public void t(@Nullable SourceShareClickProxy Click) {
        this.f47085n = Click;
        synchronized (this) {
            this.f47575s |= 8;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x4
    public void u(@Nullable SourceShareDetailViewModel Vm) {
        this.f47084m = Vm;
        synchronized (this) {
            this.f47575s |= 4;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private y4(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 2, (ImageView) bindings[1], (ConstraintLayout) bindings[11], (RelativeLayout) bindings[9], (SimpleDraweeView) bindings[7], (SimpleDraweeView) bindings[3], (TextView) bindings[2], (TextView) bindings[8], (TextView) bindings[12], (TextView) bindings[6], (TextView) bindings[4], (WebView) bindings[10]);
        this.f47575s = -1L;
        this.f47073b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f47571o = linearLayout;
        linearLayout.setTag(null);
        TextView textView = (TextView) bindings[5];
        this.f47572p = textView;
        textView.setTag(null);
        this.f47076e.setTag(null);
        this.f47077f.setTag(null);
        this.f47078g.setTag(null);
        this.f47079h.setTag(null);
        this.f47081j.setTag(null);
        this.f47082k.setTag(null);
        setRootTag(root);
        this.f47573q = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f47574r = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
