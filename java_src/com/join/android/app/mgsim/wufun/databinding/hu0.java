package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f39510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39511d;

    private hu0(@NonNull RelativeLayout rootView, @NonNull View iv, @NonNull TextView tv2) {
        this.f39509b = rootView;
        this.f39510c = iv;
        this.f39511d = tv2;
    }

    @NonNull
    public static hu0 bind(@NonNull View rootView) {
        int i10 = R.id.iv;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.iv);
        if (viewFindChildViewById != null) {
            i10 = R.id.f35487tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35487tv);
            if (textView != null) {
                return new hu0((RelativeLayout) rootView, viewFindChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39509b;
    }

    @NonNull
    public static hu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_tab_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
