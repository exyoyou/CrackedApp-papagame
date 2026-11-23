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
public final class ra implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44276d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44277e;

    private ra(@NonNull LinearLayout rootView, @NonNull ImageView emptyGiftPackage, @NonNull RelativeLayout emptyGiftPackageLayout, @NonNull TextView textviewGiftGet) {
        this.f44274b = rootView;
        this.f44275c = emptyGiftPackage;
        this.f44276d = emptyGiftPackageLayout;
        this.f44277e = textviewGiftGet;
    }

    @NonNull
    public static ra bind(@NonNull View rootView) {
        int i10 = R.id.emptyGiftPackage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.emptyGiftPackage);
        if (imageView != null) {
            i10 = R.id.emptyGiftPackageLayout;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.emptyGiftPackageLayout);
            if (relativeLayout != null) {
                i10 = R.id.textview_gift_get;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textview_gift_get);
                if (textView != null) {
                    return new ra((LinearLayout) rootView, imageView, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ra inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44274b;
    }

    @NonNull
    public static ra inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.codes_box_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
