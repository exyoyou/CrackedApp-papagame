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
public final class kr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40945c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40946d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40947e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f40948f;

    private kr0(@NonNull ConstraintLayout rootView, @NonNull TextView tvBtn1, @NonNull TextView tvText1, @NonNull TextView tvText2, @NonNull View v10) {
        this.f40944b = rootView;
        this.f40945c = tvBtn1;
        this.f40946d = tvText1;
        this.f40947e = tvText2;
        this.f40948f = v10;
    }

    @NonNull
    public static kr0 bind(@NonNull View rootView) {
        int i10 = R.id.tv_btn_1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
        if (textView != null) {
            i10 = R.id.tv_text_1;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
            if (textView2 != null) {
                i10 = R.id.tv_text_2;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                if (textView3 != null) {
                    i10 = R.id.v_1;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_1);
                    if (viewFindChildViewById != null) {
                        return new kr0((ConstraintLayout) rootView, textView, textView2, textView3, viewFindChildViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40944b;
    }

    @NonNull
    public static kr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_cloud_time_tip, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
