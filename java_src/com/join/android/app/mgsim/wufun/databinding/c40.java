package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.MarqueeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class c40 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36765d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f36766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f36767f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36768g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f36769h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f36770i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f36771j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f36772k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ProgressBar f36773l;

    private c40(@NonNull ConstraintLayout rootView, @NonNull TextView count, @NonNull TextView desc, @NonNull DownloadNormalView dvView, @NonNull View focus, @NonNull SimpleDraweeView icon, @NonNull ImageView imageView61, @NonNull View line, @NonNull View more, @NonNull MarqueeTextView name, @NonNull ProgressBar progressBar) {
        this.f36763b = rootView;
        this.f36764c = count;
        this.f36765d = desc;
        this.f36766e = dvView;
        this.f36767f = focus;
        this.f36768g = icon;
        this.f36769h = imageView61;
        this.f36770i = line;
        this.f36771j = more;
        this.f36772k = name;
        this.f36773l = progressBar;
    }

    @NonNull
    public static c40 bind(@NonNull View rootView) {
        int i10 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.count);
        if (textView != null) {
            i10 = R.id.desc;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
            if (textView2 != null) {
                i10 = R.id.dv_view;
                DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
                if (downloadNormalView != null) {
                    i10 = R.id.focus;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.focus);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.icon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                        if (simpleDraweeView != null) {
                            i10 = R.id.imageView61;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView61);
                            if (imageView != null) {
                                i10 = R.id.line;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.line);
                                if (viewFindChildViewById2 != null) {
                                    i10 = R.id.more;
                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.more);
                                    if (viewFindChildViewById3 != null) {
                                        i10 = R.id.name;
                                        MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                        if (marqueeTextView != null) {
                                            i10 = R.id.progressBar;
                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                            if (progressBar != null) {
                                                return new c40((ConstraintLayout) rootView, textView, textView2, downloadNormalView, viewFindChildViewById, simpleDraweeView, imageView, viewFindChildViewById2, viewFindChildViewById3, marqueeTextView, progressBar);
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
    public static c40 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36763b;
    }

    @NonNull
    public static c40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_my_game_cloud, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
