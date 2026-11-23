package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class we0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46769f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46770g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46771h;

    private we0(@NonNull RelativeLayout rootView, @NonNull LinearLayout doSomething, @NonNull TextView downloadTitle, @NonNull LinearLayout layoutMain, @NonNull TextView textView, @NonNull TextView tvDoSomething, @NonNull TextView tvNum) {
        this.f46765b = rootView;
        this.f46766c = doSomething;
        this.f46767d = downloadTitle;
        this.f46768e = layoutMain;
        this.f46769f = textView;
        this.f46770g = tvDoSomething;
        this.f46771h = tvNum;
    }

    @NonNull
    public static we0 bind(@NonNull View rootView) {
        int i10 = R.id.doSomething;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.doSomething);
        if (linearLayout != null) {
            i10 = R.id.downloadTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.downloadTitle);
            if (textView != null) {
                i10 = R.id.layout_main;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_main);
                if (linearLayout2 != null) {
                    i10 = R.id.textView;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                    if (textView2 != null) {
                        i10 = R.id.tvDoSomething;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDoSomething);
                        if (textView3 != null) {
                            i10 = R.id.tvNum;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvNum);
                            if (textView4 != null) {
                                return new we0((RelativeLayout) rootView, linearLayout, textView, linearLayout2, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static we0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46765b;
    }

    @NonNull
    public static we0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.lv_download_center_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
