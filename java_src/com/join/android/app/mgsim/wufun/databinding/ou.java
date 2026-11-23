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
public final class ou implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f43057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43058e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f43059f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43060g;

    private ou(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull Button okButn, @NonNull RelativeLayout relativeLayout, @NonNull Button resetButn, @NonNull TextView titleText) {
        this.f43055b = rootView;
        this.f43056c = backImage;
        this.f43057d = okButn;
        this.f43058e = relativeLayout;
        this.f43059f = resetButn;
        this.f43060g = titleText;
    }

    @NonNull
    public static ou bind(@NonNull View rootView) {
        int i10 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
        if (imageView != null) {
            i10 = R.id.okButn;
            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.okButn);
            if (button != null) {
                i10 = R.id.relativeLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout);
                if (relativeLayout != null) {
                    i10 = R.id.resetButn;
                    Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.resetButn);
                    if (button2 != null) {
                        i10 = R.id.titleText;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                        if (textView != null) {
                            return new ou((LinearLayout) rootView, imageView, button, relativeLayout, button2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ou inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43055b;
    }

    @NonNull
    public static ou inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.handshank_key_set_title_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
