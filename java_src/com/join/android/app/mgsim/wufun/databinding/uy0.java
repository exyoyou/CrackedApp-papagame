package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
public final class uy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f45975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45977h;

    private uy0(@NonNull LinearLayout rootView, @NonNull ImageView xlistviewHeaderArrow, @NonNull RelativeLayout xlistviewHeaderContent, @NonNull TextView xlistviewHeaderHintTextview, @NonNull ProgressBar xlistviewHeaderProgressbar, @NonNull LinearLayout xlistviewHeaderText, @NonNull TextView xlistviewHeaderTime) {
        this.f45971b = rootView;
        this.f45972c = xlistviewHeaderArrow;
        this.f45973d = xlistviewHeaderContent;
        this.f45974e = xlistviewHeaderHintTextview;
        this.f45975f = xlistviewHeaderProgressbar;
        this.f45976g = xlistviewHeaderText;
        this.f45977h = xlistviewHeaderTime;
    }

    @NonNull
    public static uy0 bind(@NonNull View rootView) {
        int i10 = R.id.xlistview_header_arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.xlistview_header_arrow);
        if (imageView != null) {
            i10 = R.id.xlistview_header_content;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.xlistview_header_content);
            if (relativeLayout != null) {
                i10 = R.id.xlistview_header_hint_textview;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.xlistview_header_hint_textview);
                if (textView != null) {
                    i10 = R.id.xlistview_header_progressbar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.xlistview_header_progressbar);
                    if (progressBar != null) {
                        i10 = R.id.xlistview_header_text;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.xlistview_header_text);
                        if (linearLayout != null) {
                            i10 = R.id.xlistview_header_time;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.xlistview_header_time);
                            if (textView2 != null) {
                                return new uy0((LinearLayout) rootView, imageView, relativeLayout, textView, progressBar, linearLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45971b;
    }

    @NonNull
    public static uy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.xlistview_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
