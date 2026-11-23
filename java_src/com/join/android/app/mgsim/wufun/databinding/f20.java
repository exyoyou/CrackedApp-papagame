package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class f20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38229c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38230d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38231e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38232f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38233g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38234h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38235i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f38236j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RecyclerView f38237k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38238l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f38239m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f38240n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f38241o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f38242p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f38243q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f38244r;

    private f20(@NonNull ConstraintLayout rootView_, @NonNull ImageView ivComment, @NonNull SimpleDraweeView ivGameIcon, @NonNull ImageView ivLike, @NonNull SimpleDraweeView ivUserAvatar, @NonNull LinearLayout llComment, @NonNull LinearLayout llLike, @NonNull LinearLayout llUserInfo, @NonNull ConstraintLayout rootView, @NonNull RecyclerView rvAlsoLikeGames, @NonNull SimpleDraweeView sdvBlur, @NonNull TextView tvAlsoLikeTitle, @NonNull TextView tvCommentContent, @NonNull TextView tvCommentCount, @NonNull TextView tvGameName, @NonNull TextView tvLikeCount, @NonNull TextView tvUserName) {
        this.f38228b = rootView_;
        this.f38229c = ivComment;
        this.f38230d = ivGameIcon;
        this.f38231e = ivLike;
        this.f38232f = ivUserAvatar;
        this.f38233g = llComment;
        this.f38234h = llLike;
        this.f38235i = llUserInfo;
        this.f38236j = rootView;
        this.f38237k = rvAlsoLikeGames;
        this.f38238l = sdvBlur;
        this.f38239m = tvAlsoLikeTitle;
        this.f38240n = tvCommentContent;
        this.f38241o = tvCommentCount;
        this.f38242p = tvGameName;
        this.f38243q = tvLikeCount;
        this.f38244r = tvUserName;
    }

    @NonNull
    public static f20 bind(@NonNull View rootView) {
        int i10 = R.id.ivComment;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivComment);
        if (imageView != null) {
            i10 = R.id.ivGameIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGameIcon);
            if (simpleDraweeView != null) {
                i10 = R.id.ivLike;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivLike);
                if (imageView2 != null) {
                    i10 = R.id.ivUserAvatar;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivUserAvatar);
                    if (simpleDraweeView2 != null) {
                        i10 = R.id.llComment;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llComment);
                        if (linearLayout != null) {
                            i10 = R.id.llLike;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llLike);
                            if (linearLayout2 != null) {
                                i10 = R.id.llUserInfo;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llUserInfo);
                                if (linearLayout3 != null) {
                                    ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                                    i10 = R.id.rvAlsoLikeGames;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvAlsoLikeGames);
                                    if (recyclerView != null) {
                                        i10 = R.id.sdv_blur;
                                        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_blur);
                                        if (simpleDraweeView3 != null) {
                                            i10 = R.id.tvAlsoLikeTitle;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAlsoLikeTitle);
                                            if (textView != null) {
                                                i10 = R.id.tvCommentContent;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCommentContent);
                                                if (textView2 != null) {
                                                    i10 = R.id.tvCommentCount;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCommentCount);
                                                    if (textView3 != null) {
                                                        i10 = R.id.tvGameName;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                                                        if (textView4 != null) {
                                                            i10 = R.id.tvLikeCount;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvLikeCount);
                                                            if (textView5 != null) {
                                                                i10 = R.id.tvUserName;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUserName);
                                                                if (textView6 != null) {
                                                                    return new f20(constraintLayout, imageView, simpleDraweeView, imageView2, simpleDraweeView2, linearLayout, linearLayout2, linearLayout3, constraintLayout, recyclerView, simpleDraweeView3, textView, textView2, textView3, textView4, textView5, textView6);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
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
    public static f20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38228b;
    }

    @NonNull
    public static f20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_express_quality_comment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
