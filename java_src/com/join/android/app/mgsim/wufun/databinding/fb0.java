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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38341f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38342g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38343h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38344i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38345j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f38346k;

    private fb0(@NonNull ConstraintLayout rootView, @NonNull ImageView divider, @NonNull SimpleDraweeView imgDiscovery, @NonNull ImageView ivFont1, @NonNull LinearLayout llActive, @NonNull LinearLayout llNums, @NonNull LinearLayout llPlayTip, @NonNull SimpleDraweeView sdvIcon1, @NonNull TextView title, @NonNull ImageView vDiscovery) {
        this.f38337b = rootView;
        this.f38338c = divider;
        this.f38339d = imgDiscovery;
        this.f38340e = ivFont1;
        this.f38341f = llActive;
        this.f38342g = llNums;
        this.f38343h = llPlayTip;
        this.f38344i = sdvIcon1;
        this.f38345j = title;
        this.f38346k = vDiscovery;
    }

    @NonNull
    public static fb0 bind(@NonNull View rootView) {
        int i10 = R.id.divider;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.divider);
        if (imageView != null) {
            i10 = R.id.img_discovery;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_discovery);
            if (simpleDraweeView != null) {
                i10 = R.id.iv_font_1;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_font_1);
                if (imageView2 != null) {
                    i10 = R.id.ll_active;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_active);
                    if (linearLayout != null) {
                        i10 = R.id.ll_nums;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_nums);
                        if (linearLayout2 != null) {
                            i10 = R.id.ll_play_tip;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_play_tip);
                            if (linearLayout3 != null) {
                                i10 = R.id.sdv_icon_1;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_icon_1);
                                if (simpleDraweeView2 != null) {
                                    i10 = R.id.title;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                    if (textView != null) {
                                        i10 = R.id.v_discovery;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.v_discovery);
                                        if (imageView3 != null) {
                                            return new fb0((ConstraintLayout) rootView, imageView, simpleDraweeView, imageView2, linearLayout, linearLayout2, linearLayout3, simpleDraweeView2, textView, imageView3);
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
    public static fb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38337b;
    }

    @NonNull
    public static fb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_papa_main_home_v4_discovery, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
