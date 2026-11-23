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
public final class gw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f39033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39034e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39035f;

    private gw0(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull View line, @NonNull ImageView setting, @NonNull TextView titleTextview) {
        this.f39031b = rootView;
        this.f39032c = backImage;
        this.f39033d = line;
        this.f39034e = setting;
        this.f39035f = titleTextview;
    }

    @NonNull
    public static gw0 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.line;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
            if (viewFindChildViewById != null) {
                i10 = R.id.setting;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.setting);
                if (imageView2 != null) {
                    i10 = R.id.title_textview;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                    if (textView != null) {
                        return new gw0((RelativeLayout) rootView, imageView, viewFindChildViewById, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39031b;
    }

    @NonNull
    public static gw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.topbar_left_title, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
