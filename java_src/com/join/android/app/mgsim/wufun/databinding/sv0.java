package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import moe.codeest.enviews.ENDownloadView;
import moe.codeest.enviews.ENPlayView;

/* JADX INFO: loaded from: classes4.dex */
public final class sv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44992c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44993d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f44995f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f44996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f44997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ENDownloadView f45000k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f45001l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f45002m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final SeekBar f45003n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f45004o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ENPlayView f45005p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45006q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45007r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45008s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f45009t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f45010u;

    private sv0(@NonNull RelativeLayout rootView, @NonNull ImageView autoPlay, @NonNull ImageView back, @NonNull ImageView backTiny, @NonNull ProgressBar bottomProgressbar, @NonNull TextView current, @NonNull ImageView fullscreen, @NonNull LinearLayout layoutBottom, @NonNull LinearLayout layoutTop, @NonNull ENDownloadView loading, @NonNull ImageView lockScreen, @NonNull ImageView mute, @NonNull SeekBar progress, @NonNull ImageView smallClose, @NonNull ENPlayView start, @NonNull RelativeLayout surfaceContainer, @NonNull RelativeLayout thumb, @NonNull SimpleDraweeView thumbImageView, @NonNull TextView title, @NonNull TextView total) {
        this.f44991b = rootView;
        this.f44992c = autoPlay;
        this.f44993d = back;
        this.f44994e = backTiny;
        this.f44995f = bottomProgressbar;
        this.f44996g = current;
        this.f44997h = fullscreen;
        this.f44998i = layoutBottom;
        this.f44999j = layoutTop;
        this.f45000k = loading;
        this.f45001l = lockScreen;
        this.f45002m = mute;
        this.f45003n = progress;
        this.f45004o = smallClose;
        this.f45005p = start;
        this.f45006q = surfaceContainer;
        this.f45007r = thumb;
        this.f45008s = thumbImageView;
        this.f45009t = title;
        this.f45010u = total;
    }

    @NonNull
    public static sv0 bind(@NonNull View rootView) {
        int i10 = R.id.autoPlay;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.autoPlay);
        if (imageView != null) {
            i10 = R.id.back;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
            if (imageView2 != null) {
                i10 = R.id.back_tiny;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_tiny);
                if (imageView3 != null) {
                    i10 = R.id.bottom_progressbar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.bottom_progressbar);
                    if (progressBar != null) {
                        i10 = R.id.current;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.current);
                        if (textView != null) {
                            i10 = R.id.fullscreen;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.fullscreen);
                            if (imageView4 != null) {
                                i10 = R.id.layout_bottom;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_bottom);
                                if (linearLayout != null) {
                                    i10 = R.id.layout_top;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_top);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.loading;
                                        ENDownloadView eNDownloadView = (ENDownloadView) ViewBindings.findChildViewById(rootView, R.id.loading);
                                        if (eNDownloadView != null) {
                                            i10 = R.id.lock_screen;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lock_screen);
                                            if (imageView5 != null) {
                                                i10 = R.id.mute;
                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.mute);
                                                if (imageView6 != null) {
                                                    i10 = R.id.progress;
                                                    SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(rootView, R.id.progress);
                                                    if (seekBar != null) {
                                                        i10 = R.id.small_close;
                                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.small_close);
                                                        if (imageView7 != null) {
                                                            i10 = R.id.start;
                                                            ENPlayView eNPlayView = (ENPlayView) ViewBindings.findChildViewById(rootView, R.id.start);
                                                            if (eNPlayView != null) {
                                                                i10 = R.id.surface_container;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.surface_container);
                                                                if (relativeLayout != null) {
                                                                    i10 = R.id.thumb;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.thumb);
                                                                    if (relativeLayout2 != null) {
                                                                        i10 = R.id.thumbImageView;
                                                                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.thumbImageView);
                                                                        if (simpleDraweeView != null) {
                                                                            i10 = R.id.title;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                            if (textView2 != null) {
                                                                                i10 = R.id.total;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.total);
                                                                                if (textView3 != null) {
                                                                                    return new sv0((RelativeLayout) rootView, imageView, imageView2, imageView3, progressBar, textView, imageView4, linearLayout, linearLayout2, eNDownloadView, imageView5, imageView6, seekBar, imageView7, eNPlayView, relativeLayout, relativeLayout2, simpleDraweeView, textView2, textView3);
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
    public static sv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44991b;
    }

    @NonNull
    public static sv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.standard_video_view_detail, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
