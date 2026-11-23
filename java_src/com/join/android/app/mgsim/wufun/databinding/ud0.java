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
public final class ud0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45663e;

    private ud0(@NonNull LinearLayout rootView, @NonNull LinearLayout layoutMain, @NonNull TextView num, @NonNull TextView textView) {
        this.f45660b = rootView;
        this.f45661c = layoutMain;
        this.f45662d = num;
        this.f45663e = textView;
    }

    @NonNull
    public static ud0 bind(@NonNull View rootView) {
        int i10 = R.id.layout_main;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_main);
        if (linearLayout != null) {
            i10 = R.id.num;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.num);
            if (textView != null) {
                i10 = R.id.textView;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                if (textView2 != null) {
                    return new ud0((LinearLayout) rootView, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ud0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45660b;
    }

    @NonNull
    public static ud0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.listview_download_center_history_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
