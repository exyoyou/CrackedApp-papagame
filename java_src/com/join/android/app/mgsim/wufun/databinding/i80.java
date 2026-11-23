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
public final class i80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f39716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39717e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f39718f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f39719g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39720h;

    private i80(@NonNull LinearLayout rootView, @NonNull TextView failedMessage, @NonNull ImageView lodingBackImage, @NonNull LinearLayout lodingFaile, @NonNull ImageView relodingimag, @NonNull Button setNetwork, @NonNull TextView setting) {
        this.f39714b = rootView;
        this.f39715c = failedMessage;
        this.f39716d = lodingBackImage;
        this.f39717e = lodingFaile;
        this.f39718f = relodingimag;
        this.f39719g = setNetwork;
        this.f39720h = setting;
    }

    @NonNull
    public static i80 bind(@NonNull View rootView) {
        int i10 = R.id.failedMessage;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.failedMessage);
        if (textView != null) {
            i10 = R.id.lodingBackImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                i10 = R.id.relodingimag;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.relodingimag);
                if (imageView2 != null) {
                    i10 = R.id.setNetwork;
                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.setNetwork);
                    if (button != null) {
                        i10 = R.id.setting;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setting);
                        if (textView2 != null) {
                            return new i80(linearLayout, textView, imageView, linearLayout, imageView2, button, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static i80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39714b;
    }

    @NonNull
    public static i80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_custom_failed, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
