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
public final class qe implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43774c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43777f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43778g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43779h;

    private qe(@NonNull LinearLayout rootView, @NonNull TextView cancle, @NonNull TextView downSpeed, @NonNull TextView downsize, @NonNull TextView ok, @NonNull ProgressBar progress, @NonNull TextView title) {
        this.f43773b = rootView;
        this.f43774c = cancle;
        this.f43775d = downSpeed;
        this.f43776e = downsize;
        this.f43777f = ok;
        this.f43778g = progress;
        this.f43779h = title;
    }

    @NonNull
    public static qe bind(@NonNull View rootView) {
        int i10 = R.id.cancle;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancle);
        if (textView != null) {
            i10 = R.id.downSpeed;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downSpeed);
            if (textView2 != null) {
                i10 = R.id.downsize;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downsize);
                if (textView3 != null) {
                    i10 = R.id.ok;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                    if (textView4 != null) {
                        i10 = R.id.progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progress);
                        if (progressBar != null) {
                            i10 = R.id.title;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                            if (textView5 != null) {
                                return new qe((LinearLayout) rootView, textView, textView2, textView3, textView4, progressBar, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qe inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43773b;
    }

    @NonNull
    public static qe inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_cloud_progress_notice, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
