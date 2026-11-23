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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class j40 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40084c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40085d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40086e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f40087f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40088g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40089h;

    private j40(@NonNull RelativeLayout rootView, @NonNull TextView appDesc, @NonNull TextView appName, @NonNull SimpleDraweeView icon, @NonNull View line, @NonNull LinearLayout linearLayout, @NonNull LinearLayout tipsLayout) {
        this.f40083b = rootView;
        this.f40084c = appDesc;
        this.f40085d = appName;
        this.f40086e = icon;
        this.f40087f = line;
        this.f40088g = linearLayout;
        this.f40089h = tipsLayout;
    }

    @NonNull
    public static j40 bind(@NonNull View rootView) {
        int i10 = R.id.appDesc;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appDesc);
        if (textView != null) {
            i10 = R.id.appName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
            if (textView2 != null) {
                i10 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                if (simpleDraweeView != null) {
                    i10 = R.id.line;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.linearLayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                        if (linearLayout != null) {
                            i10 = R.id.tipsLayout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                            if (linearLayout2 != null) {
                                return new j40((RelativeLayout) rootView, textView, textView2, simpleDraweeView, viewFindChildViewById, linearLayout, linearLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static j40 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40083b;
    }

    @NonNull
    public static j40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_papa_gameinfo, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
