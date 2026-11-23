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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ah implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35814c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35815d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35816e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35817f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35818g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35819h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f35820i;

    private ah(@NonNull LinearLayout rootView, @NonNull ImageView ivClose, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvContent, @NonNull TextView tvName, @NonNull TextView tvOpt1, @NonNull TextView tvOpt2, @NonNull TextView tvTitle) {
        this.f35813b = rootView;
        this.f35814c = ivClose;
        this.f35815d = sdvImage;
        this.f35816e = tvContent;
        this.f35817f = tvName;
        this.f35818g = tvOpt1;
        this.f35819h = tvOpt2;
        this.f35820i = tvTitle;
    }

    @NonNull
    public static ah bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (imageView != null) {
            i10 = R.id.sdv_image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
            if (simpleDraweeView != null) {
                i10 = R.id.tv_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_content);
                if (textView != null) {
                    i10 = R.id.tv_name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                    if (textView2 != null) {
                        i10 = R.id.tv_opt_1;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_opt_1);
                        if (textView3 != null) {
                            i10 = R.id.tv_opt_2;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_opt_2);
                            if (textView4 != null) {
                                i10 = R.id.tv_title;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                                if (textView5 != null) {
                                    return new ah((LinearLayout) rootView, imageView, simpleDraweeView, textView, textView2, textView3, textView4, textView5);
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
    public static ah inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35813b;
    }

    @NonNull
    public static ah inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_mod_feed_back, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
