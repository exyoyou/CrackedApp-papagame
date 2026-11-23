package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pu implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f43526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f43527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43528f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43529g;

    private pu(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull Button errButn, @NonNull Button okButn, @NonNull RelativeLayout relativeLayout, @NonNull TextView titleText) {
        this.f43524b = rootView;
        this.f43525c = backImage;
        this.f43526d = errButn;
        this.f43527e = okButn;
        this.f43528f = relativeLayout;
        this.f43529g = titleText;
    }

    @NonNull
    public static pu bind(@NonNull View rootView) {
        int i10 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
        if (imageView != null) {
            i10 = R.id.errButn;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.errButn);
            if (button != null) {
                i10 = R.id.okButn;
                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.okButn);
                if (button2 != null) {
                    i10 = R.id.relativeLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout);
                    if (relativeLayout != null) {
                        i10 = R.id.titleText;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                        if (textView != null) {
                            return new pu((LinearLayout) rootView, imageView, button, button2, relativeLayout, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pu inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43524b;
    }

    @NonNull
    public static pu inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.handshank_key_title_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
