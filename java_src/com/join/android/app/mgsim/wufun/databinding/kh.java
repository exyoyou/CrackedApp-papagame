package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class kh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f40768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40770d;

    private kh(@NonNull FrameLayout rootView, @NonNull TextView tvDesc, @NonNull TextView tvTitle) {
        this.f40768b = rootView;
        this.f40769c = tvDesc;
        this.f40770d = tvTitle;
    }

    @NonNull
    public static kh bind(@NonNull View rootView) {
        int i10 = R.id.tvDesc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
        if (textView != null) {
            i10 = R.id.tvTitle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
            if (textView2 != null) {
                return new kh((FrameLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f40768b;
    }

    @NonNull
    public static kh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_permission_desc, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
