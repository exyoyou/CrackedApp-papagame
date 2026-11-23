package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class uh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45700c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45702e;

    private uh(@NonNull RelativeLayout rootView, @NonNull TextView showAddShortcutTv, @NonNull TextView showDeleteGameTv, @NonNull TextView showGameDetailTv) {
        this.f45699b = rootView;
        this.f45700c = showAddShortcutTv;
        this.f45701d = showDeleteGameTv;
        this.f45702e = showGameDetailTv;
    }

    @NonNull
    public static uh bind(@NonNull View rootView) {
        int i10 = R.id.showAddShortcutTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.showAddShortcutTv);
        if (textView != null) {
            i10 = R.id.showDeleteGameTv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.showDeleteGameTv);
            if (textView2 != null) {
                i10 = R.id.showGameDetailTv;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.showGameDetailTv);
                if (textView3 != null) {
                    return new uh((RelativeLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45699b;
    }

    @NonNull
    public static uh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_show_bottom_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
