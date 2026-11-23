package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f41298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final StaticLayoutView f41299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f41300e;

    private lf0(@NonNull LinearLayout rootView, @NonNull View divider, @NonNull StaticLayoutView msg, @NonNull View spaceT) {
        this.f41297b = rootView;
        this.f41298c = divider;
        this.f41299d = msg;
        this.f41300e = spaceT;
    }

    @NonNull
    public static lf0 bind(@NonNull View rootView) {
        int i10 = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.msg;
            StaticLayoutView staticLayoutView = (StaticLayoutView) ViewBindings.findChildViewById(rootView, R.id.msg);
            if (staticLayoutView != null) {
                i10 = R.id.spaceT;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.spaceT);
                if (viewFindChildViewById2 != null) {
                    return new lf0((LinearLayout) rootView, viewFindChildViewById, staticLayoutView, viewFindChildViewById2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41297b;
    }

    @NonNull
    public static lf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_f_item_post_message, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
