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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36661d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36663f;

    private c(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull RelativeLayout relativeLayout, @NonNull TextView rightTextButn, @NonNull TextView titleText) {
        this.f36659b = rootView;
        this.f36660c = backImage;
        this.f36661d = relativeLayout;
        this.f36662e = rightTextButn;
        this.f36663f = titleText;
    }

    @NonNull
    public static c bind(@NonNull View rootView) {
        int i10 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
        if (imageView != null) {
            i10 = R.id.relativeLayout;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout);
            if (relativeLayout != null) {
                i10 = R.id.rightTextButn;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.rightTextButn);
                if (textView != null) {
                    i10 = R.id.titleText;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                    if (textView2 != null) {
                        return new c((LinearLayout) rootView, imageView, relativeLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static c inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36659b;
    }

    @NonNull
    public static c inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.account_title_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
