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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class fu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38553c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f38555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38556f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38557g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38558h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f38559i;

    private fu0(@NonNull LinearLayout rootView, @NonNull TextView appName, @NonNull SimpleDraweeView icon, @NonNull View line, @NonNull LinearLayout main, @NonNull TextView rankingNumber, @NonNull TextView rankingNumberBack, @NonNull TextView tag) {
        this.f38552b = rootView;
        this.f38553c = appName;
        this.f38554d = icon;
        this.f38555e = line;
        this.f38556f = main;
        this.f38557g = rankingNumber;
        this.f38558h = rankingNumberBack;
        this.f38559i = tag;
    }

    @NonNull
    public static fu0 bind(@NonNull View rootView) {
        int i10 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
        if (textView != null) {
            i10 = R.id.icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
            if (simpleDraweeView != null) {
                i10 = R.id.line;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                if (viewFindChildViewById != null) {
                    i10 = R.id.main;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                    if (linearLayout != null) {
                        i10 = R.id.rankingNumber;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.rankingNumber);
                        if (textView2 != null) {
                            i10 = R.id.rankingNumberBack;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.rankingNumberBack);
                            if (textView3 != null) {
                                i10 = R.id.tag;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tag);
                                if (textView4 != null) {
                                    return new fu0((LinearLayout) rootView, textView, simpleDraweeView, viewFindChildViewById, linearLayout, textView2, textView3, textView4);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38552b;
    }

    @NonNull
    public static fu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_ranking_listitem, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
