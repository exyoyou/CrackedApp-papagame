package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class p1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f43173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43174e;

    private p1(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull FrameLayout flContainer, @NonNull TextView tvTitle) {
        this.f43171b = rootView;
        this.f43172c = backImage;
        this.f43173d = flContainer;
        this.f43174e = tvTitle;
    }

    @NonNull
    public static p1 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.fl_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_container);
            if (frameLayout != null) {
                i10 = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                if (textView != null) {
                    return new p1((LinearLayout) rootView, imageView, frameLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static p1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43171b;
    }

    @NonNull
    public static p1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_fragment_page, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
