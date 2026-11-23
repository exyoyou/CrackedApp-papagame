package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;

/* JADX INFO: loaded from: classes4.dex */
public final class fy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f38620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CustomerDownloadView f38622e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f38623f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38624g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f38625h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38626i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38627j;

    private fy0(@NonNull LinearLayout rootView, @NonNull ConstraintLayout appbar, @NonNull ImageView back, @NonNull CustomerDownloadView downloadView, @NonNull View filter, @NonNull TextView filterArr, @NonNull XRecyclerView recyclerView, @NonNull ImageView search, @NonNull TextView title) {
        this.f38619b = rootView;
        this.f38620c = appbar;
        this.f38621d = back;
        this.f38622e = downloadView;
        this.f38623f = filter;
        this.f38624g = filterArr;
        this.f38625h = recyclerView;
        this.f38626i = search;
        this.f38627j = title;
    }

    @NonNull
    public static fy0 bind(@NonNull View rootView) {
        int i10 = R.id.appbar;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.appbar);
        if (constraintLayout != null) {
            i10 = R.id.back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
            if (imageView != null) {
                i10 = R.id.downloadView;
                CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(rootView, R.id.downloadView);
                if (customerDownloadView != null) {
                    i10 = R.id.filter;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.filter);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.filterArr;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.filterArr);
                        if (textView != null) {
                            i10 = R.id.recyclerView;
                            XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                            if (xRecyclerView != null) {
                                i10 = R.id.search;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search);
                                if (imageView2 != null) {
                                    i10 = R.id.title;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                    if (textView2 != null) {
                                        return new fy0((LinearLayout) rootView, constraintLayout, imageView, customerDownloadView, viewFindChildViewById, textView, xRecyclerView, imageView2, textView2);
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
    public static fy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38619b;
    }

    @NonNull
    public static fy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.vip_specialzone_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
