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
public final class u3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45536h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f45537i;

    private u3(@NonNull RelativeLayout rootView, @NonNull ImageView ivClose, @NonNull LinearLayout llContent, @NonNull TextView name, @NonNull RelativeLayout rlContainer, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvSaveQr, @NonNull View vClose1) {
        this.f45530b = rootView;
        this.f45531c = ivClose;
        this.f45532d = llContent;
        this.f45533e = name;
        this.f45534f = rlContainer;
        this.f45535g = sdvImage;
        this.f45536h = tvSaveQr;
        this.f45537i = vClose1;
    }

    @NonNull
    public static u3 bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (imageView != null) {
            i10 = R.id.ll_content;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_content);
            if (linearLayout != null) {
                i10 = R.id.name;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                if (textView != null) {
                    i10 = R.id.rl_container;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_container);
                    if (relativeLayout != null) {
                        i10 = R.id.sdv_image;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                        if (simpleDraweeView != null) {
                            i10 = R.id.tv_save_qr;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_save_qr);
                            if (textView2 != null) {
                                i10 = R.id.v_close1;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_close1);
                                if (viewFindChildViewById != null) {
                                    return new u3((RelativeLayout) rootView, imageView, linearLayout, textView, relativeLayout, simpleDraweeView, textView2, viewFindChildViewById);
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
    public static u3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45530b;
    }

    @NonNull
    public static u3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_private_domain_default, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
