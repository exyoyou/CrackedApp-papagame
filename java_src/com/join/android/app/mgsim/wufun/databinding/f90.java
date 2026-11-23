package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class f90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f38300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38304f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38305g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38306h;

    private f90(@NonNull FrameLayout rootView, @NonNull TextView expandContentTv, @NonNull TextView expandHelperTv, @NonNull ImageView expandIv, @NonNull LinearLayout expandLl, @NonNull FrameLayout expandRootFl, @NonNull TextView expandTv) {
        this.f38300b = rootView;
        this.f38301c = expandContentTv;
        this.f38302d = expandHelperTv;
        this.f38303e = expandIv;
        this.f38304f = expandLl;
        this.f38305g = expandRootFl;
        this.f38306h = expandTv;
    }

    @NonNull
    public static f90 bind(@NonNull View rootView) {
        int i10 = R.id.expand_content_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.expand_content_tv);
        if (textView != null) {
            i10 = R.id.expand_helper_tv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.expand_helper_tv);
            if (textView2 != null) {
                i10 = R.id.expand_iv;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.expand_iv);
                if (imageView != null) {
                    i10 = R.id.expand_ll;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.expand_ll);
                    if (linearLayout != null) {
                        FrameLayout frameLayout = (FrameLayout) rootView;
                        i10 = R.id.expand_tv;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.expand_tv);
                        if (textView3 != null) {
                            return new f90(frameLayout, textView, textView2, imageView, linearLayout, frameLayout, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static f90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f38300b;
    }

    @NonNull
    public static f90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_expand, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
