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
public final class bi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36398d;

    private bi(@NonNull ConstraintLayout rootView, @NonNull TextView tvCancel, @NonNull TextView tvConfirm) {
        this.f36396b = rootView;
        this.f36397c = tvCancel;
        this.f36398d = tvConfirm;
    }

    @NonNull
    public static bi bind(@NonNull View rootView) {
        int i10 = R.id.tvCancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCancel);
        if (textView != null) {
            i10 = R.id.tvConfirm;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvConfirm);
            if (textView2 != null) {
                return new bi((ConstraintLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36396b;
    }

    @NonNull
    public static bi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_uninstall_confirm, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
