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
public final class nt implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42507c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42508d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42509e;

    private nt(@NonNull LinearLayout rootView, @NonNull TextView contentName, @NonNull TextView contentTime, @NonNull TextView contentTitle) {
        this.f42506b = rootView;
        this.f42507c = contentName;
        this.f42508d = contentTime;
        this.f42509e = contentTitle;
    }

    @NonNull
    public static nt bind(@NonNull View rootView) {
        int i10 = R.id.contentName;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.contentName);
        if (textView != null) {
            i10 = R.id.contentTime;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.contentTime);
            if (textView2 != null) {
                i10 = R.id.content_title;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.content_title);
                if (textView3 != null) {
                    return new nt((LinearLayout) rootView, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nt inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42506b;
    }

    @NonNull
    public static nt inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gameinformation_webtitle, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
