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
public final class mj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41917c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41919e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f41920f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f41921g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41922h;

    private mj(@NonNull LinearLayout rootView, @NonNull TextView failedMessage, @NonNull ImageView lodingBackImage, @NonNull LinearLayout lodingFaile, @NonNull ImageView relodingimag, @NonNull Button setNetwork, @NonNull TextView setting) {
        this.f41916b = rootView;
        this.f41917c = failedMessage;
        this.f41918d = lodingBackImage;
        this.f41919e = lodingFaile;
        this.f41920f = relodingimag;
        this.f41921g = setNetwork;
        this.f41922h = setting;
    }

    @NonNull
    public static mj bind(@NonNull View rootView) {
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
                            return new mj(linearLayout, textView, imageView, linearLayout, imageView2, button, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41916b;
    }

    @NonNull
    public static mj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.failed_layout_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
