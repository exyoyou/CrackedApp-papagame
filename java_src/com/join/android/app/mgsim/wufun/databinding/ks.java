package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.gamedetail.FulllScreenVideoView;

/* JADX INFO: loaded from: classes4.dex */
public final class ks implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40953f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40954g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40955h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40956i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40957j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40958k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40959l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40960m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f40961n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40962o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f40963p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f40964q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f40965r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40966s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40967t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ImageView f40968u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final View f40969v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f40970w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40971x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final FulllScreenVideoView f40972y;

    private ks(@NonNull RelativeLayout rootView, @NonNull ProgressBar butnProgressBar, @NonNull ImageView butnShowdownload, @NonNull TextView content, @NonNull SimpleDraweeView cover, @NonNull TextView coverText, @NonNull SimpleDraweeView coverback, @NonNull LinearLayout gameInfoLayout, @NonNull TextView gameName, @NonNull SimpleDraweeView icon, @NonNull TextView instalButtomButn, @NonNull RelativeLayout instalbutnLayout, @NonNull ImageView ivBack, @NonNull LinearLayout layout, @NonNull TextView moneyText, @NonNull TextView percent, @NonNull ImageView playIcon, @NonNull LinearLayout progressLayout, @NonNull RelativeLayout progressbarLayout, @NonNull ImageView sound, @NonNull View statuHVIew, @NonNull TextView tag, @NonNull RelativeLayout titleTransfer, @NonNull FulllScreenVideoView videoView) {
        this.f40949b = rootView;
        this.f40950c = butnProgressBar;
        this.f40951d = butnShowdownload;
        this.f40952e = content;
        this.f40953f = cover;
        this.f40954g = coverText;
        this.f40955h = coverback;
        this.f40956i = gameInfoLayout;
        this.f40957j = gameName;
        this.f40958k = icon;
        this.f40959l = instalButtomButn;
        this.f40960m = instalbutnLayout;
        this.f40961n = ivBack;
        this.f40962o = layout;
        this.f40963p = moneyText;
        this.f40964q = percent;
        this.f40965r = playIcon;
        this.f40966s = progressLayout;
        this.f40967t = progressbarLayout;
        this.f40968u = sound;
        this.f40969v = statuHVIew;
        this.f40970w = tag;
        this.f40971x = titleTransfer;
        this.f40972y = videoView;
    }

    @NonNull
    public static ks bind(@NonNull View rootView) {
        int i10 = R.id.butnProgressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.butnProgressBar);
        if (progressBar != null) {
            i10 = R.id.butn_showdownload;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.butn_showdownload);
            if (imageView != null) {
                i10 = R.id.content;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
                if (textView != null) {
                    i10 = R.id.cover;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.cover);
                    if (simpleDraweeView != null) {
                        i10 = R.id.coverText;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.coverText);
                        if (textView2 != null) {
                            i10 = R.id.coverback;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.coverback);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.gameInfoLayout;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameInfoLayout);
                                if (linearLayout != null) {
                                    i10 = R.id.gameName;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                                    if (textView3 != null) {
                                        i10 = R.id.icon;
                                        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                                        if (simpleDraweeView3 != null) {
                                            i10 = R.id.instalButtomButn;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.instalButtomButn);
                                            if (textView4 != null) {
                                                i10 = R.id.instalbutnLayout;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.instalbutnLayout);
                                                if (relativeLayout != null) {
                                                    i10 = R.id.iv_back;
                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_back);
                                                    if (imageView2 != null) {
                                                        i10 = R.id.layout;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout);
                                                        if (linearLayout2 != null) {
                                                            i10 = R.id.moneyText;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                                            if (textView5 != null) {
                                                                i10 = R.id.percent;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.percent);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.playIcon;
                                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.playIcon);
                                                                    if (imageView3 != null) {
                                                                        i10 = R.id.progress_layout;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.progress_layout);
                                                                        if (linearLayout3 != null) {
                                                                            i10 = R.id.progressbarLayout;
                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.progressbarLayout);
                                                                            if (relativeLayout2 != null) {
                                                                                i10 = R.id.sound;
                                                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.sound);
                                                                                if (imageView4 != null) {
                                                                                    i10 = R.id.statuHVIew;
                                                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statuHVIew);
                                                                                    if (viewFindChildViewById != null) {
                                                                                        i10 = R.id.tag;
                                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tag);
                                                                                        if (textView7 != null) {
                                                                                            i10 = R.id.titleTransfer;
                                                                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.titleTransfer);
                                                                                            if (relativeLayout3 != null) {
                                                                                                i10 = R.id.videoView;
                                                                                                FulllScreenVideoView fulllScreenVideoView = (FulllScreenVideoView) ViewBindings.findChildViewById(rootView, R.id.videoView);
                                                                                                if (fulllScreenVideoView != null) {
                                                                                                    return new ks((RelativeLayout) rootView, progressBar, imageView, textView, simpleDraweeView, textView2, simpleDraweeView2, linearLayout, textView3, simpleDraweeView3, textView4, relativeLayout, imageView2, linearLayout2, textView5, textView6, imageView3, linearLayout3, relativeLayout2, imageView4, viewFindChildViewById, textView7, relativeLayout3, fulllScreenVideoView);
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
    public static ks inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40949b;
    }

    @NonNull
    public static ks inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_video_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
