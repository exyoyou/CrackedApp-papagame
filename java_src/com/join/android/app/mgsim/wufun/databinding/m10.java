package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.CommentDetailBean;
import com.join.kotlin.discount.proxy.ItemGameDetailCommentListClickProxy;
import com.join.mgps.customview.CollapsedTextView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m10 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CollapsedTextView f41671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f41672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f41674f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f41675g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f41676h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41678j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected CommentDetailBean f41679k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected ItemGameDetailCommentListClickProxy f41680l;

    protected m10(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView avatar, CollapsedTextView content, View divider, TextView like, ImageView likePic, ImageView tagChargedUser, ImageView tagMonthCardUser, TextView tagPlayTime, TextView time) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f41670b = avatar;
        this.f41671c = content;
        this.f41672d = divider;
        this.f41673e = like;
        this.f41674f = likePic;
        this.f41675g = tagChargedUser;
        this.f41676h = tagMonthCardUser;
        this.f41677i = tagPlayTime;
        this.f41678j = time;
    }

    @Deprecated
    public static m10 b(@NonNull View view, @Nullable Object component) {
        return (m10) ViewDataBinding.bind(component, view, R.layout.item_game_detail_comment_layout);
    }

    public static m10 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static m10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static m10 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (m10) ViewDataBinding.inflateInternal(inflater, R.layout.item_game_detail_comment_layout, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static m10 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (m10) ViewDataBinding.inflateInternal(inflater, R.layout.item_game_detail_comment_layout, null, false, component);
    }

    @Nullable
    public ItemGameDetailCommentListClickProxy d() {
        return this.f41680l;
    }

    @Nullable
    public CommentDetailBean f() {
        return this.f41679k;
    }

    public abstract void t(@Nullable ItemGameDetailCommentListClickProxy click);

    public abstract void u(@Nullable CommentDetailBean itemData);

    @NonNull
    public static m10 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
