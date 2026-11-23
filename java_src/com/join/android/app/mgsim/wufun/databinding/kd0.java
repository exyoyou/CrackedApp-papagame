package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class kd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40729c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40730d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40731e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40732f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40733g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40734h;

    private kd0(@NonNull RelativeLayout rootView, @NonNull ImageView ivColl, @NonNull SimpleDraweeView ivImg, @NonNull RelativeLayout llGameform, @NonNull RelativeLayout rlContent, @NonNull TextView tvSize, @NonNull TextView tvTitle) {
        this.f40728b = rootView;
        this.f40729c = ivColl;
        this.f40730d = ivImg;
        this.f40731e = llGameform;
        this.f40732f = rlContent;
        this.f40733g = tvSize;
        this.f40734h = tvTitle;
    }

    @NonNull
    public static kd0 bind(@NonNull View rootView) {
        int i10 = R.id.iv_coll;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_coll);
        if (imageView != null) {
            i10 = R.id.iv_img;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_img);
            if (simpleDraweeView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                i10 = R.id.rl_content;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_content);
                if (relativeLayout2 != null) {
                    i10 = R.id.tv_size;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_size);
                    if (textView != null) {
                        i10 = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                        if (textView2 != null) {
                            return new kd0(relativeLayout, imageView, simpleDraweeView, relativeLayout, relativeLayout2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40728b;
    }

    @NonNull
    public static kd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.list_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
