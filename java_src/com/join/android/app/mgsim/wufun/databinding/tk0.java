package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;

/* JADX INFO: loaded from: classes4.dex */
public final class tk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView f45315c;

    private tk0(@NonNull RelativeLayout rootView, @NonNull XListView manageListView) {
        this.f45314b = rootView;
        this.f45315c = manageListView;
    }

    @NonNull
    public static tk0 bind(@NonNull View rootView) {
        XListView xListView = (XListView) ViewBindings.findChildViewById(rootView, R.id.manageListView);
        if (xListView != null) {
            return new tk0((RelativeLayout) rootView, xListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.manageListView)));
    }

    @NonNull
    public static tk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45314b;
    }

    @NonNull
    public static tk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_manage_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
