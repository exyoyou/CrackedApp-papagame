package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46783c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ProgressBar f46784d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46785e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46786f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46787g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46788h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46789i;

    private wg(@NonNull LinearLayout rootView, @NonNull LinearLayout llModDownload, @NonNull ProgressBar pbModProgress, @NonNull TextView tvModOptLeft, @NonNull TextView tvModOptRight, @NonNull TextView tvModProgress, @NonNull TextView tvModStatus, @NonNull TextView tvModTitle) {
        this.f46782b = rootView;
        this.f46783c = llModDownload;
        this.f46784d = pbModProgress;
        this.f46785e = tvModOptLeft;
        this.f46786f = tvModOptRight;
        this.f46787g = tvModProgress;
        this.f46788h = tvModStatus;
        this.f46789i = tvModTitle;
    }

    @NonNull
    public static wg bind(@NonNull View rootView) {
        int i10 = R.id.ll_mod_download;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_mod_download);
        if (linearLayout != null) {
            i10 = R.id.pb_mod_progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.pb_mod_progress);
            if (progressBar != null) {
                i10 = R.id.tv_mod_opt_left;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_opt_left);
                if (textView != null) {
                    i10 = R.id.tv_mod_opt_right;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_opt_right);
                    if (textView2 != null) {
                        i10 = R.id.tv_mod_progress;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_progress);
                        if (textView3 != null) {
                            i10 = R.id.tv_mod_status;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_status);
                            if (textView4 != null) {
                                i10 = R.id.tv_mod_title;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_title);
                                if (textView5 != null) {
                                    return new wg((LinearLayout) rootView, linearLayout, progressBar, textView, textView2, textView3, textView4, textView5);
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
    public static wg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46782b;
    }

    @NonNull
    public static wg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_mod_download, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
