package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36498d;

    private bp0(@NonNull RelativeLayout rootView, @NonNull TextView tvTime, @NonNull TextView tvTitle) {
        this.f36496b = rootView;
        this.f36497c = tvTime;
        this.f36498d = tvTitle;
    }

    @NonNull
    public static bp0 bind(@NonNull View rootView) {
        int i10 = R.id.tv_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time);
        if (textView != null) {
            i10 = R.id.tv_title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
            if (textView2 != null) {
                return new bp0((RelativeLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36496b;
    }

    @NonNull
    public static bp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.notice_fragment_item_no, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
