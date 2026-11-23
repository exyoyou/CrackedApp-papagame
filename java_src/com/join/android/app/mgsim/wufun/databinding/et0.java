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
public final class et0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f38094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38097e;

    private et0(@NonNull FrameLayout rootView, @NonNull TextView txt1, @NonNull TextView txt2, @NonNull TextView txt3) {
        this.f38094b = rootView;
        this.f38095c = txt1;
        this.f38096d = txt2;
        this.f38097e = txt3;
    }

    @NonNull
    public static et0 bind(@NonNull View rootView) {
        int i10 = R.id.txt_1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.txt_1);
        if (textView != null) {
            i10 = R.id.txt_2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.txt_2);
            if (textView2 != null) {
                i10 = R.id.txt_3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.txt_3);
                if (textView3 != null) {
                    return new et0((FrameLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static et0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f38094b;
    }

    @NonNull
    public static et0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.rule_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
