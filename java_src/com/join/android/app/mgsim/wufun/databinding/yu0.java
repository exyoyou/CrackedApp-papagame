package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47965e;

    private yu0(@NonNull RelativeLayout rootView, @NonNull ImageView dotHistory, @NonNull TextView lvTvTitle, @NonNull RelativeLayout rlClearHistory) {
        this.f47962b = rootView;
        this.f47963c = dotHistory;
        this.f47964d = lvTvTitle;
        this.f47965e = rlClearHistory;
    }

    @NonNull
    public static yu0 bind(@NonNull View rootView) {
        int i10 = R.id.dotHistory;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dotHistory);
        if (imageView != null) {
            i10 = R.id.lv_tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.lv_tv_title);
            if (textView != null) {
                i10 = R.id.rlClearHistory;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlClearHistory);
                if (relativeLayout != null) {
                    return new yu0((RelativeLayout) rootView, imageView, textView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47962b;
    }

    @NonNull
    public static yu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.simple_listview_item1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
