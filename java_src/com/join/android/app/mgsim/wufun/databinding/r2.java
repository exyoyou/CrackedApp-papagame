package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.ui.view.AnimateSurfaceView;

/* JADX INFO: loaded from: classes4.dex */
public final class r2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AnimateSurfaceView f44179c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44180d;

    private r2(@NonNull ConstraintLayout rootView, @NonNull AnimateSurfaceView surface, @NonNull TextView text) {
        this.f44178b = rootView;
        this.f44179c = surface;
        this.f44180d = text;
    }

    @NonNull
    public static r2 bind(@NonNull View rootView) {
        int i10 = R.id.surface;
        AnimateSurfaceView animateSurfaceView = (AnimateSurfaceView) ViewBindings.findChildViewById(rootView, R.id.surface);
        if (animateSurfaceView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.text);
            if (textView != null) {
                return new r2((ConstraintLayout) rootView, animateSurfaceView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static r2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44178b;
    }

    @NonNull
    public static r2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_hmcloud_main_test, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
