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
public final class ot implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43048c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43049d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43050e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43051f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43052g;

    private ot(@NonNull LinearLayout rootView, @NonNull TextView adText, @NonNull TextView appType, @NonNull TextView appdownCount, @NonNull TextView appsize, @NonNull TextView pingfen) {
        this.f43047b = rootView;
        this.f43048c = adText;
        this.f43049d = appType;
        this.f43050e = appdownCount;
        this.f43051f = appsize;
        this.f43052g = pingfen;
    }

    @NonNull
    public static ot bind(@NonNull View rootView) {
        int i10 = R.id.ad_text;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.ad_text);
        if (textView != null) {
            i10 = R.id.appType;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appType);
            if (textView2 != null) {
                i10 = R.id.appdownCount;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appdownCount);
                if (textView3 != null) {
                    i10 = R.id.appsize;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appsize);
                    if (textView4 != null) {
                        i10 = R.id.pingfen;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pingfen);
                        if (textView5 != null) {
                            return new ot((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ot inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43047b;
    }

    @NonNull
    public static ot inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamelist_appsize_downcount_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
