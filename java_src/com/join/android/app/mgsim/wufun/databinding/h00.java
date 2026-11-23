package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class h00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39089c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39090d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39091e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39092f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f39093g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39094h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39095i;

    private h00(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull FrameLayout avatarBg, @NonNull ImageView ivRank, @NonNull TextView tvDesc, @NonNull TextView tvNickname, @NonNull TextView tvRank, @NonNull TextView tvScore) {
        this.f39088b = rootView;
        this.f39089c = avatar;
        this.f39090d = avatarBg;
        this.f39091e = ivRank;
        this.f39092f = tvDesc;
        this.f39093g = tvNickname;
        this.f39094h = tvRank;
        this.f39095i = tvScore;
    }

    @NonNull
    public static h00 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.avatarBg;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.avatarBg);
            if (frameLayout != null) {
                i10 = R.id.ivRank;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivRank);
                if (imageView != null) {
                    i10 = R.id.tvDesc;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
                    if (textView != null) {
                        i10 = R.id.tvNickname;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvNickname);
                        if (textView2 != null) {
                            i10 = R.id.tvRank;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvRank);
                            if (textView3 != null) {
                                i10 = R.id.tvScore;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvScore);
                                if (textView4 != null) {
                                    return new h00((ConstraintLayout) rootView, simpleDraweeView, frameLayout, imageView, textView, textView2, textView3, textView4);
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
    public static h00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39088b;
    }

    @NonNull
    public static h00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_discovery_paiwei_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
