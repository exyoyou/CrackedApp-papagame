package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class kw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f41008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41009f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41010g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41012i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41013j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41014k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41015l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f41016m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41017n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f41018o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f41019p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f41020q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41021r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41022s;

    private kw(@NonNull RelativeLayout rootView, @NonNull FrameLayout flContent, @NonNull FrameLayout flFrontView, @NonNull ImageView ivPraise, @NonNull LinearLayout llCloseDrawer, @NonNull LinearLayout llComment, @NonNull LinearLayout llMore, @NonNull LinearLayout llPraise, @NonNull LinearLayout llProgress, @NonNull LinearLayout llRecommend, @NonNull LinearLayout lodingLayout, @NonNull ProgressBar pbProgress, @NonNull RelativeLayout rlMenuLayer, @NonNull TextView tvCommentNum, @NonNull TextView tvPraiseNum, @NonNull TextView tvType, @NonNull FrameLayout videoView, @NonNull RelativeLayout weblayout) {
        this.f41005b = rootView;
        this.f41006c = flContent;
        this.f41007d = flFrontView;
        this.f41008e = ivPraise;
        this.f41009f = llCloseDrawer;
        this.f41010g = llComment;
        this.f41011h = llMore;
        this.f41012i = llPraise;
        this.f41013j = llProgress;
        this.f41014k = llRecommend;
        this.f41015l = lodingLayout;
        this.f41016m = pbProgress;
        this.f41017n = rlMenuLayer;
        this.f41018o = tvCommentNum;
        this.f41019p = tvPraiseNum;
        this.f41020q = tvType;
        this.f41021r = videoView;
        this.f41022s = weblayout;
    }

    @NonNull
    public static kw bind(@NonNull View rootView) {
        int i10 = R.id.fl_content;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_content);
        if (frameLayout != null) {
            i10 = R.id.fl_front_view;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_front_view);
            if (frameLayout2 != null) {
                i10 = R.id.iv_praise;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_praise);
                if (imageView != null) {
                    i10 = R.id.ll_close_drawer;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_close_drawer);
                    if (linearLayout != null) {
                        i10 = R.id.ll_comment;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_comment);
                        if (linearLayout2 != null) {
                            i10 = R.id.ll_more;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_more);
                            if (linearLayout3 != null) {
                                i10 = R.id.ll_praise;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_praise);
                                if (linearLayout4 != null) {
                                    i10 = R.id.ll_progress;
                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_progress);
                                    if (linearLayout5 != null) {
                                        i10 = R.id.ll_recommend;
                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_recommend);
                                        if (linearLayout6 != null) {
                                            i10 = R.id.loding_layout;
                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_layout);
                                            if (linearLayout7 != null) {
                                                i10 = R.id.pb_progress;
                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.pb_progress);
                                                if (progressBar != null) {
                                                    i10 = R.id.rl_menu_layer;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_menu_layer);
                                                    if (relativeLayout != null) {
                                                        i10 = R.id.tv_comment_num;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_comment_num);
                                                        if (textView != null) {
                                                            i10 = R.id.tv_praise_num;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_praise_num);
                                                            if (textView2 != null) {
                                                                i10 = R.id.tv_type;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_type);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.video_view;
                                                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.video_view);
                                                                    if (frameLayout3 != null) {
                                                                        i10 = R.id.weblayout;
                                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.weblayout);
                                                                        if (relativeLayout2 != null) {
                                                                            return new kw((RelativeLayout) rootView, frameLayout, frameLayout2, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, progressBar, relativeLayout, textView, textView2, textView3, frameLayout3, relativeLayout2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41005b;
    }

    @NonNull
    public static kw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.introduction_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
