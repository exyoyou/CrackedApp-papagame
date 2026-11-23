package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class tw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f45467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45468d;

    private tw(@NonNull LinearLayout rootView, @NonNull View emptyView, @NonNull TextView tvInfo) {
        this.f45466b = rootView;
        this.f45467c = emptyView;
        this.f45468d = tvInfo;
    }

    @NonNull
    public static tw bind(@NonNull View rootView) {
        int i10 = R.id.emptyView;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.emptyView);
        if (viewFindChildViewById != null) {
            i10 = R.id.tv_info;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_info);
            if (textView != null) {
                return new tw((LinearLayout) rootView, viewFindChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45466b;
    }

    @NonNull
    public static tw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_arena_room_sort, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
