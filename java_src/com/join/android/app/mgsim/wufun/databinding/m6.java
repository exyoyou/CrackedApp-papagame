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
public final class m6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41758f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41759g;

    private m6(@NonNull LinearLayout rootView, @NonNull TextView adText, @NonNull TextView appType, @NonNull TextView appdownCount, @NonNull TextView appsize, @NonNull TextView pingfen) {
        this.f41754b = rootView;
        this.f41755c = adText;
        this.f41756d = appType;
        this.f41757e = appdownCount;
        this.f41758f = appsize;
        this.f41759g = pingfen;
    }

    @NonNull
    public static m6 bind(@NonNull View rootView) {
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
                            return new m6((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static m6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41754b;
    }

    @NonNull
    public static m6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.appitem_appsize_downcount_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
