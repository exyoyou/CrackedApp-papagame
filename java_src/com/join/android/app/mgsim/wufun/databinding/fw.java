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
public final class fw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38578c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38579d;

    private fw(@NonNull LinearLayout rootView, @NonNull TextView instalButtomButn, @NonNull TextView moneyText) {
        this.f38577b = rootView;
        this.f38578c = instalButtomButn;
        this.f38579d = moneyText;
    }

    @NonNull
    public static fw bind(@NonNull View rootView) {
        int i10 = R.id.instalButtomButn;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.instalButtomButn);
        if (textView != null) {
            i10 = R.id.moneyText;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
            if (textView2 != null) {
                return new fw((LinearLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38577b;
    }

    @NonNull
    public static fw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.install_button_normal_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
