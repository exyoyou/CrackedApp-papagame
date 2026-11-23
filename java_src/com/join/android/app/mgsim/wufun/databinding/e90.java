package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class e90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f37851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37852f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f37853g;

    private e90(@NonNull LinearLayout rootView, @NonNull TextView failedMessage, @NonNull LinearLayout llError, @NonNull ImageView lodingBackImage, @NonNull ImageView relodingimag, @NonNull Button setNetwork) {
        this.f37848b = rootView;
        this.f37849c = failedMessage;
        this.f37850d = llError;
        this.f37851e = lodingBackImage;
        this.f37852f = relodingimag;
        this.f37853g = setNetwork;
    }

    @NonNull
    public static e90 bind(@NonNull View rootView) {
        int i10 = R.id.failedMessage;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.failedMessage);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            i10 = R.id.lodingBackImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
            if (imageView != null) {
                i10 = R.id.relodingimag;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.relodingimag);
                if (imageView2 != null) {
                    i10 = R.id.setNetwork;
                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.setNetwork);
                    if (button != null) {
                        return new e90(linearLayout, textView, linearLayout, imageView, imageView2, button);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static e90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37848b;
    }

    @NonNull
    public static e90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_error, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
