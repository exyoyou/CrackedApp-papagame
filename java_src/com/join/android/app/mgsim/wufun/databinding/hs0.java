package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hs0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f39481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f39482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f39483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39484f;

    private hs0(@NonNull RelativeLayout rootView, @NonNull Button btnAll, @NonNull Button btnSxz, @NonNull Button btnYsx, @NonNull LinearLayout rgSort) {
        this.f39480b = rootView;
        this.f39481c = btnAll;
        this.f39482d = btnSxz;
        this.f39483e = btnYsx;
        this.f39484f = rgSort;
    }

    @NonNull
    public static hs0 bind(@NonNull View rootView) {
        int i10 = R.id.btn_all;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_all);
        if (button != null) {
            i10 = R.id.btn_sxz;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_sxz);
            if (button2 != null) {
                i10 = R.id.btn_ysx;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_ysx);
                if (button3 != null) {
                    i10 = R.id.rgSort;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rgSort);
                    if (linearLayout != null) {
                        return new hs0((RelativeLayout) rootView, button, button2, button3, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hs0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39480b;
    }

    @NonNull
    public static hs0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_wish_list_sort, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
