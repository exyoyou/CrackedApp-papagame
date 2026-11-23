package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ua0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45626c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f45627d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45628e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f45629f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f45630g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45631h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45632i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45633j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45634k;

    private ua0(@NonNull LinearLayout rootView, @NonNull TextView btnFocus, @NonNull ImageView ivCloseSendPosting, @NonNull SimpleDraweeView ivLabelIcon, @NonNull ImageView ivPostsFilterSwitch, @NonNull View rlLast, @NonNull RelativeLayout rlPostsFilter, @NonNull TextView tvLabelIntroduction, @NonNull TextView tvLabelName, @NonNull TextView tvPostsFilterName) {
        this.f45625b = rootView;
        this.f45626c = btnFocus;
        this.f45627d = ivCloseSendPosting;
        this.f45628e = ivLabelIcon;
        this.f45629f = ivPostsFilterSwitch;
        this.f45630g = rlLast;
        this.f45631h = rlPostsFilter;
        this.f45632i = tvLabelIntroduction;
        this.f45633j = tvLabelName;
        this.f45634k = tvPostsFilterName;
    }

    @NonNull
    public static ua0 bind(@NonNull View rootView) {
        int i10 = R.id.btnFocus;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnFocus);
        if (textView != null) {
            i10 = R.id.iv_close_send_posting;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close_send_posting);
            if (imageView != null) {
                i10 = R.id.iv_label_icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_label_icon);
                if (simpleDraweeView != null) {
                    i10 = R.id.iv_posts_filter_switch;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_posts_filter_switch);
                    if (imageView2 != null) {
                        i10 = R.id.rl_last;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.rl_last);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.rl_posts_filter;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_posts_filter);
                            if (relativeLayout != null) {
                                i10 = R.id.tv_label_introduction;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_introduction);
                                if (textView2 != null) {
                                    i10 = R.id.tv_label_name;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_name);
                                    if (textView3 != null) {
                                        i10 = R.id.tv_posts_filter_name;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_posts_filter_name);
                                        if (textView4 != null) {
                                            return new ua0((LinearLayout) rootView, textView, imageView, simpleDraweeView, imageView2, viewFindChildViewById, relativeLayout, textView2, textView3, textView4);
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
    public static ua0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45625b;
    }

    @NonNull
    public static ua0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_main_label_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
