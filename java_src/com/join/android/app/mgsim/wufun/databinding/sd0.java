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
public final class sd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44742e;

    private sd0(@NonNull LinearLayout rootView, @NonNull LinearLayout layoutMain, @NonNull TextView num, @NonNull TextView textView) {
        this.f44739b = rootView;
        this.f44740c = layoutMain;
        this.f44741d = num;
        this.f44742e = textView;
    }

    @NonNull
    public static sd0 bind(@NonNull View rootView) {
        int i10 = R.id.layout_main;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_main);
        if (linearLayout != null) {
            i10 = R.id.num;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.num);
            if (textView != null) {
                i10 = R.id.textView;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                if (textView2 != null) {
                    return new sd0((LinearLayout) rootView, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44739b;
    }

    @NonNull
    public static sd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.listview_download_center_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
