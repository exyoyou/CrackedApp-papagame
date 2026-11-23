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
public final class vu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46471d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46472e;

    private vu0(@NonNull LinearLayout rootView, @NonNull TextView button, @NonNull TextView message, @NonNull LinearLayout toplayout) {
        this.f46469b = rootView;
        this.f46470c = button;
        this.f46471d = message;
        this.f46472e = toplayout;
    }

    @NonNull
    public static vu0 bind(@NonNull View rootView) {
        int i10 = R.id.button;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.button);
        if (textView != null) {
            i10 = R.id.message;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) rootView;
                return new vu0(linearLayout, textView, textView2, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46469b;
    }

    @NonNull
    public static vu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.sharesdk_onkeyshare_top, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
