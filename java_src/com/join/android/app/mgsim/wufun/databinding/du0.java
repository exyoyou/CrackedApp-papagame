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
import com.join.mgps.customview.NoScrollListView;

/* JADX INFO: loaded from: classes4.dex */
public final class du0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final NoScrollListView f37628d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f37629e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37630f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37631g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37632h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37633i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37634j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37635k;

    private du0(@NonNull LinearLayout rootView, @NonNull LinearLayout clearLayout, @NonNull NoScrollListView historyListView, @NonNull View line, @NonNull LinearLayout linearLayout, @NonNull LinearLayout llHotSearch1, @NonNull TextView noHistory, @NonNull LinearLayout searchListLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f37626b = rootView;
        this.f37627c = clearLayout;
        this.f37628d = historyListView;
        this.f37629e = line;
        this.f37630f = linearLayout;
        this.f37631g = llHotSearch1;
        this.f37632h = noHistory;
        this.f37633i = searchListLayout;
        this.f37634j = textView;
        this.f37635k = textView2;
    }

    @NonNull
    public static du0 bind(@NonNull View rootView) {
        int i10 = R.id.clearLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.clearLayout);
        if (linearLayout != null) {
            i10 = R.id.historyListView;
            NoScrollListView noScrollListView = (NoScrollListView) ViewBindings.findChildViewById(rootView, R.id.historyListView);
            if (noScrollListView != null) {
                i10 = R.id.line;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                if (viewFindChildViewById != null) {
                    i10 = R.id.linearLayout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                    if (linearLayout2 != null) {
                        i10 = R.id.llHotSearch1;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llHotSearch1);
                        if (linearLayout3 != null) {
                            i10 = R.id.noHistory;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noHistory);
                            if (textView != null) {
                                LinearLayout linearLayout4 = (LinearLayout) rootView;
                                i10 = R.id.textView;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                if (textView2 != null) {
                                    i10 = R.id.textView2;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                                    if (textView3 != null) {
                                        return new du0(linearLayout4, linearLayout, noScrollListView, viewFindChildViewById, linearLayout2, linearLayout3, textView, linearLayout4, textView2, textView3);
                                    }
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
    public static du0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37626b;
    }

    @NonNull
    public static du0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_list_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
