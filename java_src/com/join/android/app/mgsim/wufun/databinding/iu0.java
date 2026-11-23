package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class iu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f39940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39942e;

    private iu0(@NonNull ConstraintLayout rootView, @NonNull View iv, @NonNull TextView redTags, @NonNull TextView tv2) {
        this.f39939b = rootView;
        this.f39940c = iv;
        this.f39941d = redTags;
        this.f39942e = tv2;
    }

    @NonNull
    public static iu0 bind(@NonNull View rootView) {
        int i10 = R.id.iv;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.iv);
        if (viewFindChildViewById != null) {
            i10 = R.id.redTags;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.redTags);
            if (textView != null) {
                i10 = R.id.f35487tv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35487tv);
                if (textView2 != null) {
                    return new iu0((ConstraintLayout) rootView, viewFindChildViewById, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static iu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39939b;
    }

    @NonNull
    public static iu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_tab_item_layout_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
