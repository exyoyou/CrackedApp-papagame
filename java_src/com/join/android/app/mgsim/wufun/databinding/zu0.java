package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f48455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CardView f48457e;

    private zu0(@NonNull RelativeLayout rootView, @NonNull ImageView dotHistory, @NonNull TextView lvTvTitle, @NonNull CardView tag) {
        this.f48454b = rootView;
        this.f48455c = dotHistory;
        this.f48456d = lvTvTitle;
        this.f48457e = tag;
    }

    @NonNull
    public static zu0 bind(@NonNull View rootView) {
        int i10 = R.id.dotHistory;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dotHistory);
        if (imageView != null) {
            i10 = R.id.lv_tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.lv_tv_title);
            if (textView != null) {
                i10 = R.id.tag;
                CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.tag);
                if (cardView != null) {
                    return new zu0((RelativeLayout) rootView, imageView, textView, cardView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48454b;
    }

    @NonNull
    public static zu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.simple_listview_item2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
