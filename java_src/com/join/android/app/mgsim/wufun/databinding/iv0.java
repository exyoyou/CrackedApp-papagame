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
public final class iv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39947c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39949e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39950f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f39951g;

    private iv0(@NonNull LinearLayout rootView, @NonNull TextView appType, @NonNull TextView appdownCount, @NonNull TextView appsize, @NonNull TextView pingfen, @NonNull TextView tongban) {
        this.f39946b = rootView;
        this.f39947c = appType;
        this.f39948d = appdownCount;
        this.f39949e = appsize;
        this.f39950f = pingfen;
        this.f39951g = tongban;
    }

    @NonNull
    public static iv0 bind(@NonNull View rootView) {
        int i10 = R.id.appType;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appType);
        if (textView != null) {
            i10 = R.id.appdownCount;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appdownCount);
            if (textView2 != null) {
                i10 = R.id.appsize;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appsize);
                if (textView3 != null) {
                    i10 = R.id.pingfen;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pingfen);
                    if (textView4 != null) {
                        i10 = R.id.tongban;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tongban);
                        if (textView5 != null) {
                            return new iv0((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static iv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39946b;
    }

    @NonNull
    public static iv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.six_appsize_downcount_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
