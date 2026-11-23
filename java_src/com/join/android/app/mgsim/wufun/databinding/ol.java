package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ol implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final CustomerDownloadView f42931g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final XListView2 f42932h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f42933i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f42934j;

    private ol(@NonNull RelativeLayout rootView, @NonNull RelativeLayout RootRl, @NonNull RelativeLayout discoveryTitleRl, @NonNull ImageView discoveryTitleSearchIv, @NonNull ImageView discoveryTitleTx, @NonNull CustomerDownloadView downloadView1, @NonNull XListView2 listView, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull View statubar) {
        this.f42926b = rootView;
        this.f42927c = RootRl;
        this.f42928d = discoveryTitleRl;
        this.f42929e = discoveryTitleSearchIv;
        this.f42930f = discoveryTitleTx;
        this.f42931g = downloadView1;
        this.f42932h = listView;
        this.f42933i = mPtrFrame;
        this.f42934j = statubar;
    }

    @NonNull
    public static ol bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i10 = R.id.discoveryTitleRl;
        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.discoveryTitleRl);
        if (relativeLayout2 != null) {
            i10 = R.id.discoveryTitleSearchIv;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.discoveryTitleSearchIv);
            if (imageView != null) {
                i10 = R.id.discoveryTitleTx;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.discoveryTitleTx);
                if (imageView2 != null) {
                    i10 = R.id.downloadView1;
                    CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(rootView, R.id.downloadView1);
                    if (customerDownloadView != null) {
                        i10 = R.id.listView;
                        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listView);
                        if (xListView2 != null) {
                            i10 = R.id.mPtrFrame;
                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                            if (ptrClassicFrameLayout != null) {
                                i10 = R.id.statubar;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                if (viewFindChildViewById != null) {
                                    return new ol(relativeLayout, relativeLayout, relativeLayout2, imageView, imageView2, customerDownloadView, xListView2, ptrClassicFrameLayout, viewFindChildViewById);
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
    public static ol inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42926b;
    }

    @NonNull
    public static ol inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_discovery, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
