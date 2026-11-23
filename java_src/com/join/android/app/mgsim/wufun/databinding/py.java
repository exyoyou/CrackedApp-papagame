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
public final class py implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43572c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43573d;

    private py(@NonNull LinearLayout rootView, @NonNull TextView tvSubTitle, @NonNull TextView tvTitle) {
        this.f43571b = rootView;
        this.f43572c = tvSubTitle;
        this.f43573d = tvTitle;
    }

    @NonNull
    public static py bind(@NonNull View rootView) {
        int i10 = R.id.tv_sub_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sub_title);
        if (textView != null) {
            i10 = R.id.tv_title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
            if (textView2 != null) {
                return new py((LinearLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static py inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43571b;
    }

    @NonNull
    public static py inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_create_end_game_boss, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
