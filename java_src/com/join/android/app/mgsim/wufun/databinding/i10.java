package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class i10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f39608d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39609e;

    private i10(@NonNull LinearLayout rootView, @NonNull ImageView ivIcon, @NonNull ImageView ivMore, @NonNull TextView tvTitle) {
        this.f39606b = rootView;
        this.f39607c = ivIcon;
        this.f39608d = ivMore;
        this.f39609e = tvTitle;
    }

    @NonNull
    public static i10 bind(@NonNull View rootView) {
        int i10 = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_icon);
        if (imageView != null) {
            i10 = R.id.iv_more;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_more);
            if (imageView2 != null) {
                i10 = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                if (textView != null) {
                    return new i10((LinearLayout) rootView, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static i10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39606b;
    }

    @NonNull
    public static i10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_bt_ranking_tag, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
