package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.papa91.arc.widget.htmltext.HtmlTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class rx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final HtmlTextView f44554f;

    private rx0(@NonNull LinearLayout rootView, @NonNull ImageView ivHotType, @NonNull ImageView ivMore, @NonNull RelativeLayout rlHotRank, @NonNull HtmlTextView tvHotTitle) {
        this.f44550b = rootView;
        this.f44551c = ivHotType;
        this.f44552d = ivMore;
        this.f44553e = rlHotRank;
        this.f44554f = tvHotTitle;
    }

    @NonNull
    public static rx0 bind(@NonNull View rootView) {
        int i10 = R.id.iv_hot_type;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_hot_type);
        if (imageView != null) {
            i10 = R.id.iv_more;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_more);
            if (imageView2 != null) {
                i10 = R.id.rl_hot_rank;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_hot_rank);
                if (relativeLayout != null) {
                    i10 = R.id.tv_hot_title;
                    HtmlTextView htmlTextView = (HtmlTextView) ViewBindings.findChildViewById(rootView, R.id.tv_hot_title);
                    if (htmlTextView != null) {
                        return new rx0((LinearLayout) rootView, imageView, imageView2, relativeLayout, htmlTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44550b;
    }

    @NonNull
    public static rx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_game_detail_game_info, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
