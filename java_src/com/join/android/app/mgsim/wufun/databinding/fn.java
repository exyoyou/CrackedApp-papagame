package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.WFTextView;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.MarqueeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class fn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final WFTextView f38460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f38463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f38464g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38466i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f38467j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f38468k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f38469l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final WFTextView f38470m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f38471n;

    private fn(@NonNull ConstraintLayout rootView, @NonNull WFTextView addShortcut, @NonNull TextView count, @NonNull TextView desc, @NonNull DownloadNormalView dvInstall, @NonNull View focus, @NonNull SimpleDraweeView icon, @NonNull ImageView imageView61, @NonNull View more, @NonNull MarqueeTextView name, @NonNull ImageView notOpen, @NonNull WFTextView speedUp, @NonNull TextView tvArchiveTime) {
        this.f38459b = rootView;
        this.f38460c = addShortcut;
        this.f38461d = count;
        this.f38462e = desc;
        this.f38463f = dvInstall;
        this.f38464g = focus;
        this.f38465h = icon;
        this.f38466i = imageView61;
        this.f38467j = more;
        this.f38468k = name;
        this.f38469l = notOpen;
        this.f38470m = speedUp;
        this.f38471n = tvArchiveTime;
    }

    @NonNull
    public static fn bind(@NonNull View rootView) {
        int i10 = R.id.addShortcut;
        WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.addShortcut);
        if (wFTextView != null) {
            i10 = R.id.count;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.count);
            if (textView != null) {
                i10 = R.id.desc;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
                if (textView2 != null) {
                    i10 = R.id.dv_install;
                    DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_install);
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
                                    i10 = R.id.more;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.more);
                                    if (viewFindChildViewById2 != null) {
                                        i10 = R.id.name;
                                        MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                        if (marqueeTextView != null) {
                                            i10 = R.id.notOpen;
                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.notOpen);
                                            if (imageView2 != null) {
                                                i10 = R.id.speedUp;
                                                WFTextView wFTextView2 = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.speedUp);
                                                if (wFTextView2 != null) {
                                                    i10 = R.id.tv_archive_time;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_archive_time);
                                                    if (textView3 != null) {
                                                        return new fn((ConstraintLayout) rootView, wFTextView, textView, textView2, downloadNormalView, viewFindChildViewById, simpleDraweeView, imageView, viewFindChildViewById2, marqueeTextView, imageView2, wFTextView2, textView3);
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
    public static fn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38459b;
    }

    @NonNull
    public static fn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game_item_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
