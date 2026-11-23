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
public final class kd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40726f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40727g;

    private kd(@NonNull LinearLayout rootView, @NonNull LinearLayout handSharkLayout, @NonNull ImageView imageView42, @NonNull ImageView imageView43, @NonNull TextView suntitle, @NonNull TextView title) {
        this.f40722b = rootView;
        this.f40723c = handSharkLayout;
        this.f40724d = imageView42;
        this.f40725e = imageView43;
        this.f40726f = suntitle;
        this.f40727g = title;
    }

    @NonNull
    public static kd bind(@NonNull View rootView) {
        int i10 = R.id.handSharkLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.handSharkLayout);
        if (linearLayout != null) {
            i10 = R.id.imageView42;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView42);
            if (imageView != null) {
                i10 = R.id.imageView43;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView43);
                if (imageView2 != null) {
                    i10 = R.id.suntitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.suntitle);
                    if (textView != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView2 != null) {
                            return new kd((LinearLayout) rootView, linearLayout, imageView, imageView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40722b;
    }

    @NonNull
    public static kd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_hand_shark_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
