package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class f70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f38290c;

    private f70(@NonNull LinearLayout rootView, @NonNull View lineV) {
        this.f38289b = rootView;
        this.f38290c = lineV;
    }

    @NonNull
    public static f70 bind(@NonNull View rootView) {
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.lineV);
        if (viewFindChildViewById != null) {
            return new f70((LinearLayout) rootView, viewFindChildViewById);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.lineV)));
    }

    @NonNull
    public static f70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38289b;
    }

    @NonNull
    public static f70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_standalone_line_20_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
