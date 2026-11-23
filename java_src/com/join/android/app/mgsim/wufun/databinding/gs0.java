package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class gs0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f38974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38977f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38978g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38979h;

    private gs0(@NonNull ConstraintLayout rootView, @NonNull View bg, @NonNull TextView fastLayout, @NonNull TextView fingerLayout, @NonNull LinearLayout layoutMain, @NonNull TextView modLayout, @NonNull TextView onekeyLayout) {
        this.f38973b = rootView;
        this.f38974c = bg;
        this.f38975d = fastLayout;
        this.f38976e = fingerLayout;
        this.f38977f = layoutMain;
        this.f38978g = modLayout;
        this.f38979h = onekeyLayout;
    }

    @NonNull
    public static gs0 bind(@NonNull View rootView) {
        int i10 = R.id.bg;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.bg);
        if (viewFindChildViewById != null) {
            i10 = R.id.fastLayout;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.fastLayout);
            if (textView != null) {
                i10 = R.id.fingerLayout;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.fingerLayout);
                if (textView2 != null) {
                    i10 = R.id.layoutMain;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutMain);
                    if (linearLayout != null) {
                        i10 = R.id.modLayout;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.modLayout);
                        if (textView3 != null) {
                            i10 = R.id.onekeyLayout;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.onekeyLayout);
                            if (textView4 != null) {
                                return new gs0((ConstraintLayout) rootView, viewFindChildViewById, textView, textView2, linearLayout, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gs0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38973b;
    }

    @NonNull
    public static gs0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_special_game_filter, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
