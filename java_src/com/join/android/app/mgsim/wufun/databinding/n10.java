package com.join.android.app.mgsim.wufun.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.discount.model.bean.CommentDetailBean;
import com.join.kotlin.discount.proxy.ItemGameDetailCommentListClickProxy;
import com.join.mgps.customview.CollapsedTextView;

/* JADX INFO: loaded from: classes4.dex */
public class n10 extends m10 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f42147s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f42148t;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42149m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final TextView f42150n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42151o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42152p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f42153q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f42154r;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f42148t = sparseIntArray;
        sparseIntArray.put(R.id.divider, 8);
        sparseIntArray.put(R.id.tagMonthCardUser, 9);
        sparseIntArray.put(R.id.tagChargedUser, 10);
        sparseIntArray.put(R.id.tagPlayTime, 11);
    }

    public n10(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 12, f42147s, f42148t));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            CommentDetailBean commentDetailBean = this.f41679k;
            ItemGameDetailCommentListClickProxy itemGameDetailCommentListClickProxy = this.f41680l;
            if (itemGameDetailCommentListClickProxy != null) {
                itemGameDetailCommentListClickProxy.like(commentDetailBean);
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        CommentDetailBean commentDetailBean2 = this.f41679k;
        ItemGameDetailCommentListClickProxy itemGameDetailCommentListClickProxy2 = this.f41680l;
        if (itemGameDetailCommentListClickProxy2 != null) {
            itemGameDetailCommentListClickProxy2.like(commentDetailBean2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String avatar;
        String show_time;
        String nickname;
        Drawable drawable;
        String string;
        String content;
        Integer like;
        Boolean my_like;
        synchronized (this) {
            j10 = this.f42154r;
            this.f42154r = 0L;
        }
        CommentDetailBean commentDetailBean = this.f41679k;
        long j11 = j10 & 5;
        if (j11 != 0) {
            if (commentDetailBean != null) {
                show_time = commentDetailBean.getShow_time();
                nickname = commentDetailBean.getNickname();
                like = commentDetailBean.getLike();
                my_like = commentDetailBean.getMy_like();
                content = commentDetailBean.getContent();
                avatar = commentDetailBean.getAvatar();
            } else {
                avatar = null;
                show_time = null;
                nickname = null;
                like = null;
                my_like = null;
                content = null;
            }
            string = like != null ? like.toString() : null;
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(my_like);
            if (j11 != 0) {
                j10 |= zSafeUnbox ? 16L : 8L;
            }
            drawable = AppCompatResources.getDrawable(this.f41674f.getContext(), zSafeUnbox ? R.drawable.ic_comment_like : R.drawable.ic_comment_unlike);
        } else {
            avatar = null;
            show_time = null;
            nickname = null;
            drawable = null;
            string = null;
            content = null;
        }
        if ((5 & j10) != 0) {
            SimpleDrawableViewKt.loadUrl(this.f41670b, avatar, null, 0);
            TextViewBindingAdapter.setText(this.f41671c, content);
            TextViewBindingAdapter.setText(this.f41673e, string);
            ImageViewBindingAdapter.setImageDrawable(this.f41674f, drawable);
            TextViewBindingAdapter.setText(this.f42150n, nickname);
            TextViewBindingAdapter.setText(this.f41678j, show_time);
        }
        if ((j10 & 4) != 0) {
            this.f41674f.setOnClickListener(this.f42152p);
            this.f42151o.setOnClickListener(this.f42153q);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42154r != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42154r = 4L;
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
            u((CommentDetailBean) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((ItemGameDetailCommentListClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m10
    public void t(@Nullable ItemGameDetailCommentListClickProxy Click) {
        this.f41680l = Click;
        synchronized (this) {
            this.f42154r |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.m10
    public void u(@Nullable CommentDetailBean ItemData) {
        this.f41679k = ItemData;
        synchronized (this) {
            this.f42154r |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private n10(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1], (CollapsedTextView) bindings[3], (View) bindings[8], (TextView) bindings[7], (ImageView) bindings[6], (ImageView) bindings[10], (ImageView) bindings[9], (TextView) bindings[11], (TextView) bindings[4]);
        this.f42154r = -1L;
        this.f41670b.setTag(null);
        this.f41671c.setTag(null);
        this.f41673e.setTag(null);
        this.f41674f.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f42149m = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[2];
        this.f42150n = textView;
        textView.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[5];
        this.f42151o = linearLayout;
        linearLayout.setTag(null);
        this.f41678j.setTag(null);
        setRootTag(root);
        this.f42152p = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f42153q = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
