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
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class ej0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HListView f37988c;

    private ej0(@NonNull LinearLayout rootView, @NonNull HListView list) {
        this.f37987b = rootView;
        this.f37988c = list;
    }

    @NonNull
    public static ej0 bind(@NonNull View rootView) {
        HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.list);
        if (hListView != null) {
            return new ej0((LinearLayout) rootView, hListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.list)));
    }

    @NonNull
    public static ej0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37987b;
    }

    @NonNull
    public static ej0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_welcome_item_forum_topic, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
