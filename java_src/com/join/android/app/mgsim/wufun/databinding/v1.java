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
public final class v1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final jw0 f46011c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46012d;

    private v1(@NonNull ConstraintLayout rootView, @NonNull jw0 titleLayout, @NonNull TextView tvPermission) {
        this.f46010b = rootView;
        this.f46011c = titleLayout;
        this.f46012d = tvPermission;
    }

    @NonNull
    public static v1 bind(@NonNull View rootView) {
        int i10 = R.id.titleLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.titleLayout);
        if (viewFindChildViewById != null) {
            jw0 jw0VarBind = jw0.bind(viewFindChildViewById);
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPermission);
            if (textView != null) {
                return new v1((ConstraintLayout) rootView, jw0VarBind, textView);
            }
            i10 = R.id.tvPermission;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static v1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46010b;
    }

    @NonNull
    public static v1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_game_detail_permission, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
