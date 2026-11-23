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

/* JADX INFO: loaded from: classes4.dex */
public final class jj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final vg0 f40269c;

    private jj0(@NonNull LinearLayout rootView, @NonNull vg0 mgForumItem) {
        this.f40268b = rootView;
        this.f40269c = mgForumItem;
    }

    @NonNull
    public static jj0 bind(@NonNull View rootView) {
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.mg_forum_item);
        if (viewFindChildViewById == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.mg_forum_item)));
        }
        return new jj0((LinearLayout) rootView, vg0.bind(viewFindChildViewById));
    }

    @NonNull
    public static jj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40268b;
    }

    @NonNull
    public static jj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_welcome_item_hot_forum_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
