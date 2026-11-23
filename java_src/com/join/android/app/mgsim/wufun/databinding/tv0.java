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
public final class tv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f45464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45465e;

    private tv0(@NonNull RelativeLayout rootView, @NonNull TextView qrCodeDeclareTxt, @NonNull ImageView qrCodeImg, @NonNull TextView ssidTxt) {
        this.f45462b = rootView;
        this.f45463c = qrCodeDeclareTxt;
        this.f45464d = qrCodeImg;
        this.f45465e = ssidTxt;
    }

    @NonNull
    public static tv0 bind(@NonNull View rootView) {
        int i10 = R.id.qr_code_declare_txt;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.qr_code_declare_txt);
        if (textView != null) {
            i10 = R.id.qr_code_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.qr_code_img);
            if (imageView != null) {
                i10 = R.id.ssidTxt;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ssidTxt);
                if (textView2 != null) {
                    return new tv0((RelativeLayout) rootView, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45462b;
    }

    @NonNull
    public static tv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.stub_build_qr_code, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
