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
public final class nj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42345f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f42346g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42347h;

    private nj(@NonNull LinearLayout rootView, @NonNull TextView failedMessage, @NonNull ImageView lodingBackImage, @NonNull LinearLayout lodingFaileDetail, @NonNull ImageView relodingimagDetail, @NonNull Button setNetworkDetail, @NonNull TextView settingDetail) {
        this.f42341b = rootView;
        this.f42342c = failedMessage;
        this.f42343d = lodingBackImage;
        this.f42344e = lodingFaileDetail;
        this.f42345f = relodingimagDetail;
        this.f42346g = setNetworkDetail;
        this.f42347h = settingDetail;
    }

    @NonNull
    public static nj bind(@NonNull View rootView) {
        int i10 = R.id.failedMessage;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.failedMessage);
        if (textView != null) {
            i10 = R.id.lodingBackImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                i10 = R.id.relodingimag_detail;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.relodingimag_detail);
                if (imageView2 != null) {
                    i10 = R.id.setNetwork_detail;
                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.setNetwork_detail);
                    if (button != null) {
                        i10 = R.id.setting_detail;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setting_detail);
                        if (textView2 != null) {
                            return new nj(linearLayout, textView, imageView, linearLayout, imageView2, button, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42341b;
    }

    @NonNull
    public static nj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.failed_layout_include_detail, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
