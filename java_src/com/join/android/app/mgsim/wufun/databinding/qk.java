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
public final class qk implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43861f;

    private qk(@NonNull LinearLayout rootView, @NonNull TextView tv1, @NonNull TextView tv2, @NonNull TextView tv3, @NonNull TextView tv4) {
        this.f43857b = rootView;
        this.f43858c = tv1;
        this.f43859d = tv2;
        this.f43860e = tv3;
        this.f43861f = tv4;
    }

    @NonNull
    public static qk bind(@NonNull View rootView) {
        int i10 = R.id.tv1;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv1);
        if (textView != null) {
            i10 = R.id.tv2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv2);
            if (textView2 != null) {
                i10 = R.id.tv3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv3);
                if (textView3 != null) {
                    i10 = R.id.tv4;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv4);
                    if (textView4 != null) {
                        return new qk((LinearLayout) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qk inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43857b;
    }

    @NonNull
    public static qk inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.forum_theme_category_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
