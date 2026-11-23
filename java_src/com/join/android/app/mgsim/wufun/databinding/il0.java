package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class il0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f39859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f39860c;

    private il0(@NonNull View rootView, @NonNull View line) {
        this.f39859b = rootView;
        this.f39860c = line;
    }

    @NonNull
    public static il0 bind(@NonNull View rootView) {
        if (rootView != null) {
            return new il0(rootView, rootView);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static il0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f39859b;
    }

    @NonNull
    public static il0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_home_underline, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
