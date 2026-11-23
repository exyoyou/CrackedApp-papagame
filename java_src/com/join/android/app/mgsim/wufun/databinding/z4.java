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
public final class z4 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48081d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48082e;

    private z4(@NonNull LinearLayout rootView, @NonNull RelativeLayout adRl, @NonNull ImageView localIv, @NonNull TextView timeTv) {
        this.f48079b = rootView;
        this.f48080c = adRl;
        this.f48081d = localIv;
        this.f48082e = timeTv;
    }

    @NonNull
    public static z4 bind(@NonNull View rootView) {
        int i10 = R.id.adRl;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.adRl);
        if (relativeLayout != null) {
            i10 = R.id.localIv;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.localIv);
            if (imageView != null) {
                i10 = R.id.timeTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.timeTv);
                if (textView != null) {
                    return new z4((LinearLayout) rootView, relativeLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static z4 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48079b;
    }

    @NonNull
    public static z4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_stand_alone_ad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
