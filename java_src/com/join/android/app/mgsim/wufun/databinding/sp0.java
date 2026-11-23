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
public final class sp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44911b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44915f;

    private sp0(@NonNull LinearLayout rootView, @NonNull TextView butn, @NonNull TextView subtitle, @NonNull TextView textView71, @NonNull TextView title) {
        this.f44911b = rootView;
        this.f44912c = butn;
        this.f44913d = subtitle;
        this.f44914e = textView71;
        this.f44915f = title;
    }

    @NonNull
    public static sp0 bind(@NonNull View rootView) {
        int i10 = R.id.butn;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.butn);
        if (textView != null) {
            i10 = R.id.subtitle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.subtitle);
            if (textView2 != null) {
                i10 = R.id.textView71;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView71);
                if (textView3 != null) {
                    i10 = R.id.title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                    if (textView4 != null) {
                        return new sp0((LinearLayout) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44911b;
    }

    @NonNull
    public static sp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_bespeak_bottom_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
