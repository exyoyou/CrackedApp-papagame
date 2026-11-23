package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class el0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38003c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38004d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38005e;

    private el0(@NonNull LinearLayout rootView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f38002b = rootView;
        this.f38003c = textView;
        this.f38004d = textView2;
        this.f38005e = textView3;
    }

    @NonNull
    public static el0 bind(@NonNull View rootView) {
        int i10 = R.id.textView;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
        if (textView != null) {
            i10 = R.id.textView2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
            if (textView2 != null) {
                i10 = R.id.textView3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                if (textView3 != null) {
                    return new el0((LinearLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static el0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38002b;
    }

    @NonNull
    public static el0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_foot_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
