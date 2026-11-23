package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ie0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ListView f39796c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final hw0 f39797d;

    private ie0(@NonNull LinearLayout rootView, @NonNull ListView localFightListView, @NonNull hw0 titleBarLayout) {
        this.f39795b = rootView;
        this.f39796c = localFightListView;
        this.f39797d = titleBarLayout;
    }

    @NonNull
    public static ie0 bind(@NonNull View rootView) {
        int i10 = R.id.localFightListView;
        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.localFightListView);
        if (listView != null) {
            i10 = R.id.title_bar_layout;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
            if (viewFindChildViewById != null) {
                return new ie0((LinearLayout) rootView, listView, hw0.bind(viewFindChildViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ie0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39795b;
    }

    @NonNull
    public static ie0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.local_fight_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
