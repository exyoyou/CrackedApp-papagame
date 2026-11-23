package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.textview.MovementTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class k30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MovementTextView f40581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f40583f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f40584g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40585h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40586i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40587j;

    private k30(@NonNull RelativeLayout rootView, @NonNull RelativeLayout commentAllRootLl, @NonNull MovementTextView content, @NonNull ImageView ivMore, @NonNull ImageView ivPraise, @NonNull View layoutTop, @NonNull SimpleDraweeView sivHead, @NonNull TextView tvStarNum, @NonNull TextView userName) {
        this.f40579b = rootView;
        this.f40580c = commentAllRootLl;
        this.f40581d = content;
        this.f40582e = ivMore;
        this.f40583f = ivPraise;
        this.f40584g = layoutTop;
        this.f40585h = sivHead;
        this.f40586i = tvStarNum;
        this.f40587j = userName;
    }

    @NonNull
    public static k30 bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i10 = R.id.content;
        MovementTextView movementTextView = (MovementTextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (movementTextView != null) {
            i10 = R.id.iv_more;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_more);
            if (imageView != null) {
                i10 = R.id.iv_praise;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_praise);
                if (imageView2 != null) {
                    i10 = R.id.layoutTop;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.siv_head;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.siv_head);
                        if (simpleDraweeView != null) {
                            i10 = R.id.tv_star_num;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_star_num);
                            if (textView != null) {
                                i10 = R.id.userName;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                                if (textView2 != null) {
                                    return new k30(relativeLayout, relativeLayout, movementTextView, imageView, imageView2, viewFindChildViewById, simpleDraweeView, textView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static k30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40579b;
    }

    @NonNull
    public static k30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_introduction_commont_detail, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
