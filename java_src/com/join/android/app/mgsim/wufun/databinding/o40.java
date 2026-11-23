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
public final class o40 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f42645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42647e;

    private o40(@NonNull LinearLayout rootView, @NonNull View line, @NonNull TextView tvAll, @NonNull TextView tvTitle) {
        this.f42644b = rootView;
        this.f42645c = line;
        this.f42646d = tvAll;
        this.f42647e = tvTitle;
    }

    @NonNull
    public static o40 bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.tv_all;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_all);
            if (textView != null) {
                i10 = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                if (textView2 != null) {
                    return new o40((LinearLayout) rootView, viewFindChildViewById, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static o40 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42644b;
    }

    @NonNull
    public static o40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_papa_standalone_rec_title, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
