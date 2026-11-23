package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ToggleButton f38584f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ToggleButton f38585g;

    private fw0(@NonNull RelativeLayout rootView, @NonNull TextView backTextView, @NonNull TextView romTypeTitle, @NonNull LinearLayout searchImage, @NonNull ToggleButton toggleButton, @NonNull ToggleButton toggleButtonRom) {
        this.f38580b = rootView;
        this.f38581c = backTextView;
        this.f38582d = romTypeTitle;
        this.f38583e = searchImage;
        this.f38584f = toggleButton;
        this.f38585g = toggleButtonRom;
    }

    @NonNull
    public static fw0 bind(@NonNull View rootView) {
        int i10 = R.id.backTextView;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.backTextView);
        if (textView != null) {
            i10 = R.id.romTypeTitle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.romTypeTitle);
            if (textView2 != null) {
                i10 = R.id.searchImage;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.searchImage);
                if (linearLayout != null) {
                    i10 = R.id.toggleButton;
                    ToggleButton toggleButton = (ToggleButton) ViewBindings.findChildViewById(rootView, R.id.toggleButton);
                    if (toggleButton != null) {
                        i10 = R.id.toggleButtonRom;
                        ToggleButton toggleButton2 = (ToggleButton) ViewBindings.findChildViewById(rootView, R.id.toggleButtonRom);
                        if (toggleButton2 != null) {
                            return new fw0((RelativeLayout) rootView, textView, textView2, linearLayout, toggleButton, toggleButton2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38580b;
    }

    @NonNull
    public static fw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.topbar_filter_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
