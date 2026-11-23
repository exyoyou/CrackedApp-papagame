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
public final class n6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42206d;

    private n6(@NonNull LinearLayout rootView, @NonNull TextView appType, @NonNull TextView appsize) {
        this.f42204b = rootView;
        this.f42205c = appType;
        this.f42206d = appsize;
    }

    @NonNull
    public static n6 bind(@NonNull View rootView) {
        int i10 = R.id.appType;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appType);
        if (textView != null) {
            i10 = R.id.appsize;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appsize);
            if (textView2 != null) {
                return new n6((LinearLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static n6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42204b;
    }

    @NonNull
    public static n6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.appitem_appsize_downcount_layout_similar, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
