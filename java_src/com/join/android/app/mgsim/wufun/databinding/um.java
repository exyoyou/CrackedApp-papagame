package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ObservableListView;

/* JADX INFO: loaded from: classes4.dex */
public final class um implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ObservableListView f45763d;

    private um(@NonNull LinearLayout rootView, @NonNull LinearLayout listmian, @NonNull ObservableListView listview) {
        this.f45761b = rootView;
        this.f45762c = listmian;
        this.f45763d = listview;
    }

    @NonNull
    public static um bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        ObservableListView observableListView = (ObservableListView) ViewBindings.findChildViewById(rootView, R.id.listview);
        if (observableListView != null) {
            return new um(linearLayout, linearLayout, observableListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.listview)));
    }

    @NonNull
    public static um inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45761b;
    }

    @NonNull
    public static um inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_listview, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
