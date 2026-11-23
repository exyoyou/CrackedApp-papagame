package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener;
import com.join.mgps.dto.CloudListDataBean;

/* JADX INFO: loaded from: classes4.dex */
public class dj extends cj implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f37500r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f37501s;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37502l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final SimpleDraweeView f37503m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37504n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f37505o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f37506p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f37507q;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f37501s = sparseIntArray;
        sparseIntArray.put(R.id.tvHotTag, 7);
        sparseIntArray.put(R.id.messageLayout, 8);
        sparseIntArray.put(R.id.more, 9);
        sparseIntArray.put(R.id.parise, 10);
    }

    public dj(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 11, f37500r, f37501s));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId != 1) {
            if (sourceId != 2) {
                return;
            }
            CloudListDataBean cloudListDataBean = this.f36951j;
            OnEmusClickArchiveListener onEmusClickArchiveListener = this.f36952k;
            if (onEmusClickArchiveListener != null) {
                onEmusClickArchiveListener.onClickRun(cloudListDataBean);
                return;
            }
            return;
        }
        CloudListDataBean cloudListDataBean2 = this.f36951j;
        OnEmusClickArchiveListener onEmusClickArchiveListener2 = this.f36952k;
        if (onEmusClickArchiveListener2 != null) {
            if (cloudListDataBean2 != null) {
                onEmusClickArchiveListener2.onClickImage(cloudListDataBean2.getArchiveCover());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0056  */
    /* JADX WARN: Code duplicated, block: B:29:0x007b  */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String avatar;
        String archiveCover;
        String nickname;
        String archiveDesc;
        String strValueOf;
        int i10;
        int highComment;
        synchronized (this) {
            j10 = this.f37507q;
            this.f37507q = 0L;
        }
        CloudListDataBean cloudListDataBean = this.f36951j;
        long j11 = j10 & 5;
        if (j11 != 0) {
            if (cloudListDataBean != null) {
                archiveCover = cloudListDataBean.getArchiveCover();
                nickname = cloudListDataBean.getNickname();
                archiveDesc = cloudListDataBean.getArchiveDesc();
                highComment = cloudListDataBean.getHighComment();
                avatar = cloudListDataBean.getAvatar();
            } else {
                avatar = null;
                archiveCover = null;
                nickname = null;
                archiveDesc = null;
                highComment = 0;
            }
            boolean z10 = archiveCover == null;
            strValueOf = String.valueOf(highComment);
            if (j11 != 0) {
                j10 |= z10 ? 16L : 8L;
            }
            i10 = z10 ? 8 : 0;
            if ((5 & j10) != 0) {
                TextViewBindingAdapter.setText(this.f36943b, archiveDesc);
                this.f37503m.setVisibility(i10);
                SimpleDrawableViewKt.loadUrl(this.f37503m, archiveCover, null, 0);
                TextViewBindingAdapter.setText(this.f36947f, strValueOf);
                SimpleDrawableViewKt.loadUrl(this.f36949h, avatar, null, 0);
                TextViewBindingAdapter.setText(this.f36950i, nickname);
            }
            if ((j10 & 4) != 0) {
                this.f37503m.setOnClickListener(this.f37506p);
                this.f37504n.setOnClickListener(this.f37505o);
            }
        }
        avatar = null;
        archiveCover = null;
        nickname = null;
        archiveDesc = null;
        strValueOf = null;
        if ((5 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f36943b, archiveDesc);
            this.f37503m.setVisibility(i10);
            SimpleDrawableViewKt.loadUrl(this.f37503m, archiveCover, null, 0);
            TextViewBindingAdapter.setText(this.f36947f, strValueOf);
            SimpleDrawableViewKt.loadUrl(this.f36949h, avatar, null, 0);
            TextViewBindingAdapter.setText(this.f36950i, nickname);
        }
        if ((j10 & 4) != 0) {
            this.f37503m.setOnClickListener(this.f37506p);
            this.f37504n.setOnClickListener(this.f37505o);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f37507q != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f37507q = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 == variableId) {
            u((CloudListDataBean) variable);
        } else {
            if (15 != variableId) {
                return false;
            }
            t((OnEmusClickArchiveListener) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.cj
    public void t(@Nullable OnEmusClickArchiveListener EmusClickListener) {
        this.f36952k = EmusClickListener;
        synchronized (this) {
            this.f37507q |= 2;
        }
        notifyPropertyChanged(15);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.cj
    public void u(@Nullable CloudListDataBean ItemData) {
        this.f36951j = ItemData;
        synchronized (this) {
            this.f37507q |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private dj(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[3], (RelativeLayout) bindings[8], (TextView) bindings[9], (ImageView) bindings[10], (TextView) bindings[6], (TextView) bindings[7], (SimpleDraweeView) bindings[4], (TextView) bindings[5]);
        this.f37507q = -1L;
        this.f36943b.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f37502l = linearLayout;
        linearLayout.setTag(null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) bindings[1];
        this.f37503m = simpleDraweeView;
        simpleDraweeView.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[2];
        this.f37504n = constraintLayout;
        constraintLayout.setTag(null);
        this.f36947f.setTag(null);
        this.f36949h.setTag(null);
        this.f36950i.setTag(null);
        setRootTag(root);
        this.f37505o = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f37506p = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
