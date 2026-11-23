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
public final class xo0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f47339f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47340g;

    private xo0(@NonNull LinearLayout rootView, @NonNull LinearLayout loadingNone, @NonNull ImageView lodingBackImage, @NonNull TextView noneMessage, @NonNull ImageView noneReloadImage, @NonNull TextView setAll) {
        this.f47335b = rootView;
        this.f47336c = loadingNone;
        this.f47337d = lodingBackImage;
        this.f47338e = noneMessage;
        this.f47339f = noneReloadImage;
        this.f47340g = setAll;
    }

    @NonNull
    public static xo0 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.lodingBackImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
        if (imageView != null) {
            i10 = R.id.noneMessage;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noneMessage);
            if (textView != null) {
                i10 = R.id.noneReloadImage;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.noneReloadImage);
                if (imageView2 != null) {
                    i10 = R.id.setAll;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setAll);
                    if (textView2 != null) {
                        return new xo0(linearLayout, linearLayout, imageView, textView, imageView2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xo0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47335b;
    }

    @NonNull
    public static xo0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.none_layout_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
