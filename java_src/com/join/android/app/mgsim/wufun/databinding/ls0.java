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
public final class ls0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41530f;

    private ls0(@NonNull LinearLayout rootView, @NonNull TextView delectarchive, @NonNull TextView good, @NonNull TextView introduce, @NonNull TextView plagiarize) {
        this.f41526b = rootView;
        this.f41527c = delectarchive;
        this.f41528d = good;
        this.f41529e = introduce;
        this.f41530f = plagiarize;
    }

    @NonNull
    public static ls0 bind(@NonNull View rootView) {
        int i10 = R.id.delectarchive;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.delectarchive);
        if (textView != null) {
            i10 = R.id.good;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.good);
            if (textView2 != null) {
                i10 = R.id.introduce;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.introduce);
                if (textView3 != null) {
                    i10 = R.id.plagiarize;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.plagiarize);
                    if (textView4 != null) {
                        return new ls0((LinearLayout) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ls0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41526b;
    }

    @NonNull
    public static ls0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.popuwin_localarchive3, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
