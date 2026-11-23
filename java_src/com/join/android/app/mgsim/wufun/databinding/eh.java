package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class eh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f37966e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37967f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37968g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37969h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37970i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37971j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37972k;

    private eh(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clCustomer, @NonNull ConstraintLayout clGameInfo, @NonNull ImageView imageView631, @NonNull ImageView ivClose, @NonNull TextView name, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvCustomer, @NonNull TextView tvDesc, @NonNull TextView tvNotAsk) {
        this.f37963b = rootView;
        this.f37964c = clCustomer;
        this.f37965d = clGameInfo;
        this.f37966e = imageView631;
        this.f37967f = ivClose;
        this.f37968g = name;
        this.f37969h = sdvImage;
        this.f37970i = tvCustomer;
        this.f37971j = tvDesc;
        this.f37972k = tvNotAsk;
    }

    @NonNull
    public static eh bind(@NonNull View rootView) {
        int i10 = R.id.cl_customer;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_customer);
        if (constraintLayout != null) {
            i10 = R.id.cl_game_info;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_game_info);
            if (constraintLayout2 != null) {
                i10 = R.id.imageView631;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView631);
                if (imageView != null) {
                    i10 = R.id.iv_close;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                    if (imageView2 != null) {
                        i10 = R.id.name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                        if (textView != null) {
                            i10 = R.id.sdv_image;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                            if (simpleDraweeView != null) {
                                i10 = R.id.tv_customer;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_customer);
                                if (textView2 != null) {
                                    i10 = R.id.tv_desc;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc);
                                    if (textView3 != null) {
                                        i10 = R.id.tv_not_ask;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_not_ask);
                                        if (textView4 != null) {
                                            return new eh((ConstraintLayout) rootView, constraintLayout, constraintLayout2, imageView, imageView2, textView, simpleDraweeView, textView2, textView3, textView4);
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
    public static eh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37963b;
    }

    @NonNull
    public static eh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_mod_questionnaire, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
