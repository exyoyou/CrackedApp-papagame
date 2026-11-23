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
public final class bq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36528f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36529g;

    private bq0(@NonNull RelativeLayout rootView, @NonNull TextView guessyoulikeTitle, @NonNull TextView hideh5, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3, @NonNull TextView textView5) {
        this.f36524b = rootView;
        this.f36525c = guessyoulikeTitle;
        this.f36526d = hideh5;
        this.f36527e = relativeLayout;
        this.f36528f = textView3;
        this.f36529g = textView5;
    }

    @NonNull
    public static bq0 bind(@NonNull View rootView) {
        int i10 = R.id.guessyoulikeTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.guessyoulikeTitle);
        if (textView != null) {
            i10 = R.id.hideh5;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.hideh5);
            if (textView2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                i10 = R.id.textView3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                if (textView3 != null) {
                    i10 = R.id.textView5;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView5);
                    if (textView4 != null) {
                        return new bq0(relativeLayout, textView, textView2, relativeLayout, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36524b;
    }

    @NonNull
    public static bq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_guessyoulike_top_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
