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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44924e;

    private sq0(@NonNull RelativeLayout rootView, @NonNull TextView aboutPabi, @NonNull ImageView backImage, @NonNull TextView titleTextview) {
        this.f44921b = rootView;
        this.f44922c = aboutPabi;
        this.f44923d = backImage;
        this.f44924e = titleTextview;
    }

    @NonNull
    public static sq0 bind(@NonNull View rootView) {
        int i10 = R.id.aboutPabi;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.aboutPabi);
        if (textView != null) {
            i10 = R.id.back_image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
            if (imageView != null) {
                i10 = R.id.title_textview;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                if (textView2 != null) {
                    return new sq0((RelativeLayout) rootView, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44921b;
    }

    @NonNull
    public static sq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papapay_center_left_title, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
