package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class w5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46635e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46636f;

    private w5(@NonNull RelativeLayout rootView, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout layoutBack, @NonNull RelativeLayout layoutOthers, @NonNull FrameLayout mgMianFragmentlayout) {
        this.f46632b = rootView;
        this.f46633c = frameLayout;
        this.f46634d = layoutBack;
        this.f46635e = layoutOthers;
        this.f46636f = mgMianFragmentlayout;
    }

    @NonNull
    public static w5 bind(@NonNull View rootView) {
        int i10 = R.id.frameLayout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.frameLayout);
        if (frameLayout != null) {
            i10 = R.id.layoutBack;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layoutBack);
            if (relativeLayout != null) {
                i10 = R.id.layout_others;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layout_others);
                if (relativeLayout2 != null) {
                    i10 = R.id.mg_mian_fragmentlayout;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.mg_mian_fragmentlayout);
                    if (frameLayout2 != null) {
                        return new w5((RelativeLayout) rootView, frameLayout, relativeLayout, relativeLayout2, frameLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static w5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46632b;
    }

    @NonNull
    public static w5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activty_new_arena, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
