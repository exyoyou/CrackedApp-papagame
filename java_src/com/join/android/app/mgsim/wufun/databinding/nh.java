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
public final class nh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42332e;

    private nh(@NonNull RelativeLayout rootView, @NonNull TextView tvCollection, @NonNull TextView tvLocal, @NonNull TextView tvPapaku) {
        this.f42329b = rootView;
        this.f42330c = tvCollection;
        this.f42331d = tvLocal;
        this.f42332e = tvPapaku;
    }

    @NonNull
    public static nh bind(@NonNull View rootView) {
        int i10 = R.id.tv_collection;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_collection);
        if (textView != null) {
            i10 = R.id.tv_local;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_local);
            if (textView2 != null) {
                i10 = R.id.tv_papaku;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_papaku);
                if (textView3 != null) {
                    return new nh((RelativeLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42329b;
    }

    @NonNull
    public static nh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_posting_select_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
