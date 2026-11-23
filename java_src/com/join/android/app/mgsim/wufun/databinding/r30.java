package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class r30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f44196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44197c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44198d;

    private r30(@NonNull FrameLayout rootView, @NonNull TextView tvServerOpenLabel, @NonNull TextView tvServerOpenTime) {
        this.f44196b = rootView;
        this.f44197c = tvServerOpenLabel;
        this.f44198d = tvServerOpenTime;
    }

    @NonNull
    public static r30 bind(@NonNull View rootView) {
        int i10 = R.id.tvServerOpenLabel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvServerOpenLabel);
        if (textView != null) {
            i10 = R.id.tvServerOpenTime;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvServerOpenTime);
            if (textView2 != null) {
                return new r30((FrameLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static r30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f44196b;
    }

    @NonNull
    public static r30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_legend_game_server, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
