package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class w implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f46511e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46512f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46513g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46514h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f46515i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f46516j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f46517k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f46518l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46519m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46520n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f46521o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ScrollTextViewLayout f46522p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f46523q;

    private w(@NonNull RelativeLayout rootView, @NonNull ImageView backImageRl, @NonNull TextView biground, @NonNull XListView2 breakListView, @NonNull RelativeLayout downLayout, @NonNull ImageView downloadBg, @NonNull LinearLayout downloadLayout, @NonNull ImageView downloadLine, @NonNull ImageView hasNewFinishedGameImage, @NonNull ImageView imageLoading, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull RelativeLayout moduleSixRl, @NonNull RelativeLayout moduleSixTitleRl, @NonNull TextView scrollText, @NonNull ScrollTextViewLayout scrollTextLayout, @NonNull ImageView titleNormalSearchImgRl) {
        this.f46508b = rootView;
        this.f46509c = backImageRl;
        this.f46510d = biground;
        this.f46511e = breakListView;
        this.f46512f = downLayout;
        this.f46513g = downloadBg;
        this.f46514h = downloadLayout;
        this.f46515i = downloadLine;
        this.f46516j = hasNewFinishedGameImage;
        this.f46517k = imageLoading;
        this.f46518l = mPtrFrame;
        this.f46519m = moduleSixRl;
        this.f46520n = moduleSixTitleRl;
        this.f46521o = scrollText;
        this.f46522p = scrollTextLayout;
        this.f46523q = titleNormalSearchImgRl;
    }

    @NonNull
    public static w bind(@NonNull View rootView) {
        int i10 = R.id.back_image_rl;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image_rl);
        if (imageView != null) {
            i10 = R.id.biground;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.biground);
            if (textView != null) {
                i10 = R.id.breakListView;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.breakListView);
                if (xListView2 != null) {
                    i10 = R.id.downLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.downLayout);
                    if (relativeLayout != null) {
                        i10 = R.id.download_bg;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.download_bg);
                        if (imageView2 != null) {
                            i10 = R.id.downloadLayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.downloadLayout);
                            if (linearLayout != null) {
                                i10 = R.id.downloadLine;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.downloadLine);
                                if (imageView3 != null) {
                                    i10 = R.id.hasNewFinishedGameImage;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.hasNewFinishedGameImage);
                                    if (imageView4 != null) {
                                        i10 = R.id.imageLoading;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageLoading);
                                        if (imageView5 != null) {
                                            i10 = R.id.mPtrFrame;
                                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                                            if (ptrClassicFrameLayout != null) {
                                                RelativeLayout relativeLayout2 = (RelativeLayout) rootView;
                                                i10 = R.id.moduleSixTitleRl;
                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.moduleSixTitleRl);
                                                if (relativeLayout3 != null) {
                                                    i10 = R.id.scroll_text;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.scroll_text);
                                                    if (textView2 != null) {
                                                        i10 = R.id.scroll_text_layout;
                                                        ScrollTextViewLayout scrollTextViewLayout = (ScrollTextViewLayout) ViewBindings.findChildViewById(rootView, R.id.scroll_text_layout);
                                                        if (scrollTextViewLayout != null) {
                                                            i10 = R.id.title_normal_search_img_rl;
                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.title_normal_search_img_rl);
                                                            if (imageView6 != null) {
                                                                return new w(relativeLayout2, imageView, textView, xListView2, relativeLayout, imageView2, linearLayout, imageView3, imageView4, imageView5, ptrClassicFrameLayout, relativeLayout2, relativeLayout3, textView2, scrollTextViewLayout, imageView6);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
    public static w inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46508b;
    }

    @NonNull
    public static w inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_collection_module_six, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
