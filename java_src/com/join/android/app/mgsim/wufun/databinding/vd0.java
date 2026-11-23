package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f46212e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46213f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46214g;

    private vd0(@NonNull LinearLayout rootView, @NonNull ImageView arrow, @NonNull TextView noMore, @NonNull ProgressBar progerssbar, @NonNull TextView title, @NonNull TextView updated) {
        this.f46209b = rootView;
        this.f46210c = arrow;
        this.f46211d = noMore;
        this.f46212e = progerssbar;
        this.f46213f = title;
        this.f46214g = updated;
    }

    @NonNull
    public static vd0 bind(@NonNull View rootView) {
        int i10 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrow);
        if (imageView != null) {
            i10 = R.id.noMore;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noMore);
            if (textView != null) {
                i10 = R.id.progerssbar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progerssbar);
                if (progressBar != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                    if (textView2 != null) {
                        i10 = R.id.updated;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.updated);
                        if (textView3 != null) {
                            return new vd0((LinearLayout) rootView, imageView, textView, progressBar, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46209b;
    }

    @NonNull
    public static vd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.listviewpullheader, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
