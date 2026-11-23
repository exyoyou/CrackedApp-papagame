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
public final class du implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f37624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37625e;

    private du(@NonNull LinearLayout rootView, @NonNull ImageView adImage, @NonNull View line, @NonNull TextView titleText) {
        this.f37622b = rootView;
        this.f37623c = adImage;
        this.f37624d = line;
        this.f37625e = titleText;
    }

    @NonNull
    public static du bind(@NonNull View rootView) {
        int i10 = R.id.adImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.adImage);
        if (imageView != null) {
            i10 = R.id.line;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
            if (viewFindChildViewById != null) {
                i10 = R.id.titleText;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                if (textView != null) {
                    return new du((LinearLayout) rootView, imageView, viewFindChildViewById, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static du inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37622b;
    }

    @NonNull
    public static du inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gameol_top_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
