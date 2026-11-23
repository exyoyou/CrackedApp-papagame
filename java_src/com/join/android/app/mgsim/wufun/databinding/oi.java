package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class oi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42875d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42877f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42878g;

    private oi(@NonNull LinearLayout rootView, @NonNull ImageView closed, @NonNull TextView content, @NonNull ImageView icon, @NonNull TextView openH5, @NonNull TextView title) {
        this.f42873b = rootView;
        this.f42874c = closed;
        this.f42875d = content;
        this.f42876e = icon;
        this.f42877f = openH5;
        this.f42878g = title;
    }

    @NonNull
    public static oi bind(@NonNull View rootView) {
        int i10 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.closed);
        if (imageView != null) {
            i10 = R.id.content;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
            if (textView != null) {
                i10 = R.id.icon;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon);
                if (imageView2 != null) {
                    i10 = R.id.openH5;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.openH5);
                    if (textView2 != null) {
                        i10 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                        if (textView3 != null) {
                            return new oi((LinearLayout) rootView, imageView, textView, imageView2, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static oi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42873b;
    }

    @NonNull
    public static oi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.downlarge_game_dialog_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
