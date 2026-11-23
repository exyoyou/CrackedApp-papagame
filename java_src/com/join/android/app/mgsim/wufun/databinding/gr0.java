package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class gr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38961c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38962d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38964f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38965g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f38969k;

    private gr0(@NonNull RelativeLayout rootView, @NonNull TextView appSize, @NonNull TextView cancle, @NonNull TextView info, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull TextView ok, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull TextView title) {
        this.f38960b = rootView;
        this.f38961c = appSize;
        this.f38962d = cancle;
        this.f38963e = info;
        this.f38964f = linearLayout2;
        this.f38965g = lodingInfo;
        this.f38966h = ok;
        this.f38967i = progressBar;
        this.f38968j = progressBarZip;
        this.f38969k = title;
    }

    @NonNull
    public static gr0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.cancle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancle);
            if (textView2 != null) {
                i10 = R.id.info;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.info);
                if (textView3 != null) {
                    i10 = R.id.linearLayout2;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                    if (linearLayout != null) {
                        i10 = R.id.lodingInfo;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.lodingInfo);
                        if (textView4 != null) {
                            i10 = R.id.ok;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                            if (textView5 != null) {
                                i10 = R.id.progressBar;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                if (progressBar != null) {
                                    i10 = R.id.progressBarZip;
                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                    if (progressBar2 != null) {
                                        i10 = R.id.title;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                        if (textView6 != null) {
                                            return new gr0((RelativeLayout) rootView, textView, textView2, textView3, linearLayout, textView4, textView5, progressBar, progressBar2, textView6);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38960b;
    }

    @NonNull
    public static gr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.plugdown_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
