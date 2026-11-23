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
public final class c80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ListView f36812c;

    private c80(@NonNull LinearLayout rootView, @NonNull ListView list) {
        this.f36811b = rootView;
        this.f36812c = list;
    }

    @NonNull
    public static c80 bind(@NonNull View rootView) {
        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.list);
        if (listView != null) {
            return new c80((LinearLayout) rootView, listView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.list)));
    }

    @NonNull
    public static c80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36811b;
    }

    @NonNull
    public static c80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_arena_room_sort, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
