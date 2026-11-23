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
public final class ks0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40976e;

    private ks0(@NonNull LinearLayout rootView, @NonNull TextView good, @NonNull TextView introduce, @NonNull TextView plagiarize) {
        this.f40973b = rootView;
        this.f40974c = good;
        this.f40975d = introduce;
        this.f40976e = plagiarize;
    }

    @NonNull
    public static ks0 bind(@NonNull View rootView) {
        int i10 = R.id.good;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.good);
        if (textView != null) {
            i10 = R.id.introduce;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.introduce);
            if (textView2 != null) {
                i10 = R.id.plagiarize;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.plagiarize);
                if (textView3 != null) {
                    return new ks0((LinearLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ks0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40973b;
    }

    @NonNull
    public static ks0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.popuwin_localarchive2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
