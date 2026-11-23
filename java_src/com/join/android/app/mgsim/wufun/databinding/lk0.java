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
public final class lk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41358c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41359d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f41362g;

    private lk0(@NonNull LinearLayout rootView, @NonNull ImageView arrowImage, @NonNull TextView giftsCount, @NonNull RelativeLayout giftsLayout, @NonNull TextView giftsTitle, @NonNull View lineUpdate) {
        this.f41357b = rootView;
        this.f41358c = arrowImage;
        this.f41359d = giftsCount;
        this.f41360e = giftsLayout;
        this.f41361f = giftsTitle;
        this.f41362g = lineUpdate;
    }

    @NonNull
    public static lk0 bind(@NonNull View rootView) {
        int i10 = R.id.arrowImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrowImage);
        if (imageView != null) {
            i10 = R.id.giftsCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftsCount);
            if (textView != null) {
                i10 = R.id.giftsLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.giftsLayout);
                if (relativeLayout != null) {
                    i10 = R.id.giftsTitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.giftsTitle);
                    if (textView2 != null) {
                        i10 = R.id.lineUpdate;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.lineUpdate);
                        if (viewFindChildViewById != null) {
                            return new lk0((LinearLayout) rootView, imageView, textView, relativeLayout, textView2, viewFindChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41357b;
    }

    @NonNull
    public static lk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_gamedetail_update, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
