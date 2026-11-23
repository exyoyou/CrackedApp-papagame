package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f48397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ListView f48398d;

    private zr0(@NonNull ConstraintLayout rootView, @NonNull View bg, @NonNull ListView list) {
        this.f48396b = rootView;
        this.f48397c = bg;
        this.f48398d = list;
    }

    @NonNull
    public static zr0 bind(@NonNull View rootView) {
        int i10 = R.id.bg;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.bg);
        if (viewFindChildViewById != null) {
            i10 = R.id.list;
            ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.list);
            if (listView != null) {
                return new zr0((ConstraintLayout) rootView, viewFindChildViewById, listView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48396b;
    }

    @NonNull
    public static zr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_my_game_filter, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
