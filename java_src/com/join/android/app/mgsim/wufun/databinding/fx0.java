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
import com.join.mgps.customview.EqualizerView;

/* JADX INFO: loaded from: classes4.dex */
public final class fx0 implements ViewBinding {

    @NonNull
    public final TextView A;

    @NonNull
    public final TextView B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f38593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f38596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final EqualizerView f38597i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f38598j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38599k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38600l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38601m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38602n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38603o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f38604p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f38605q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f38606r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38607s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final SeekBar f38608t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f38609u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final ImageView f38610v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final ImageView f38611w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38612x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38613y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38614z;

    private fx0(@NonNull RelativeLayout rootView, @NonNull ImageView autoPlay, @NonNull ImageView back, @NonNull ImageView backTiny, @NonNull ProgressBar bottomProgressbar, @NonNull ImageView coverDetailBack, @NonNull TextView current, @NonNull EqualizerView equalizerView, @NonNull ImageView fullscreen, @NonNull LinearLayout layoutBottom, @NonNull LinearLayout layoutBottom2, @NonNull LinearLayout layoutTop, @NonNull LinearLayout llTime, @NonNull SimpleDraweeView loading, @NonNull ImageView lockScreen, @NonNull ImageView mute, @NonNull TextView netWorkType, @NonNull LinearLayout playFinishCover, @NonNull SeekBar progress, @NonNull TextView progressTextShow, @NonNull ImageView smallClose, @NonNull ImageView start, @NonNull RelativeLayout surfaceContainer, @NonNull RelativeLayout thumb, @NonNull SimpleDraweeView thumbImageView, @NonNull TextView title, @NonNull TextView total) {
        this.f38590b = rootView;
        this.f38591c = autoPlay;
        this.f38592d = back;
        this.f38593e = backTiny;
        this.f38594f = bottomProgressbar;
        this.f38595g = coverDetailBack;
        this.f38596h = current;
        this.f38597i = equalizerView;
        this.f38598j = fullscreen;
        this.f38599k = layoutBottom;
        this.f38600l = layoutBottom2;
        this.f38601m = layoutTop;
        this.f38602n = llTime;
        this.f38603o = loading;
        this.f38604p = lockScreen;
        this.f38605q = mute;
        this.f38606r = netWorkType;
        this.f38607s = playFinishCover;
        this.f38608t = progress;
        this.f38609u = progressTextShow;
        this.f38610v = smallClose;
        this.f38611w = start;
        this.f38612x = surfaceContainer;
        this.f38613y = thumb;
        this.f38614z = thumbImageView;
        this.A = title;
        this.B = total;
    }

    @NonNull
    public static fx0 bind(@NonNull View rootView) {
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
                        i10 = R.id.coverDetailBack;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.coverDetailBack);
                        if (imageView4 != null) {
                            i10 = R.id.current;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.current);
                            if (textView != null) {
                                i10 = R.id.equalizer_view;
                                EqualizerView equalizerView = (EqualizerView) ViewBindings.findChildViewById(rootView, R.id.equalizer_view);
                                if (equalizerView != null) {
                                    i10 = R.id.fullscreen;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.fullscreen);
                                    if (imageView5 != null) {
                                        i10 = R.id.layout_bottom;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_bottom);
                                        if (linearLayout != null) {
                                            i10 = R.id.layout_bottom2;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_bottom2);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.layout_top;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_top);
                                                if (linearLayout3 != null) {
                                                    i10 = R.id.ll_time;
                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_time);
                                                    if (linearLayout4 != null) {
                                                        i10 = R.id.loading;
                                                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
                                                        if (simpleDraweeView != null) {
                                                            i10 = R.id.lock_screen;
                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lock_screen);
                                                            if (imageView6 != null) {
                                                                i10 = R.id.mute;
                                                                ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.mute);
                                                                if (imageView7 != null) {
                                                                    i10 = R.id.netWorkType;
                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.netWorkType);
                                                                    if (textView2 != null) {
                                                                        i10 = R.id.playFinishCover;
                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.playFinishCover);
                                                                        if (linearLayout5 != null) {
                                                                            i10 = R.id.progress;
                                                                            SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(rootView, R.id.progress);
                                                                            if (seekBar != null) {
                                                                                i10 = R.id.progressTextShow;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.progressTextShow);
                                                                                if (textView3 != null) {
                                                                                    i10 = R.id.small_close;
                                                                                    ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.small_close);
                                                                                    if (imageView8 != null) {
                                                                                        i10 = R.id.start;
                                                                                        ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.start);
                                                                                        if (imageView9 != null) {
                                                                                            i10 = R.id.surface_container;
                                                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.surface_container);
                                                                                            if (relativeLayout != null) {
                                                                                                i10 = R.id.thumb;
                                                                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.thumb);
                                                                                                if (relativeLayout2 != null) {
                                                                                                    i10 = R.id.thumbImageView;
                                                                                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.thumbImageView);
                                                                                                    if (simpleDraweeView2 != null) {
                                                                                                        i10 = R.id.title;
                                                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                                                        if (textView4 != null) {
                                                                                                            i10 = R.id.total;
                                                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.total);
                                                                                                            if (textView5 != null) {
                                                                                                                return new fx0((RelativeLayout) rootView, imageView, imageView2, imageView3, progressBar, imageView4, textView, equalizerView, imageView5, linearLayout, linearLayout2, linearLayout3, linearLayout4, simpleDraweeView, imageView6, imageView7, textView2, linearLayout5, seekBar, textView3, imageView8, imageView9, relativeLayout, relativeLayout2, simpleDraweeView2, textView4, textView5);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38590b;
    }

    @NonNull
    public static fx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.video_layout_standard_wufun, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
