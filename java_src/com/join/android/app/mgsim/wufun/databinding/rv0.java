package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
public final class rv0 implements ViewBinding {

    @NonNull
    public final TextView A;

    @NonNull
    public final TextView B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44504e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44505f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44506g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ProgressBar f44507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SeekBar f44508i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44509j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final EqualizerView f44510k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f44511l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44512m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44513n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44514o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ProgressBar f44515p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44516q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f44517r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44518s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f44519t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f44520u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final ImageView f44521v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44522w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44523x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44524y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f44525z;

    private rv0(@NonNull RelativeLayout rootView, @NonNull ImageView autoPlay, @NonNull ImageView back, @NonNull ImageView backTiny, @NonNull ImageView batteryLevel, @NonNull LinearLayout batteryTimeLayout, @NonNull ProgressBar bottomProgress, @NonNull SeekBar bottomSeekProgress, @NonNull TextView current, @NonNull EqualizerView equalizerView, @NonNull ImageView fullscreen, @NonNull LinearLayout layoutBottom, @NonNull LinearLayout layoutBottom2, @NonNull LinearLayout layoutTop, @NonNull ProgressBar loading, @NonNull SimpleDraweeView loadingM, @NonNull ImageView mute, @NonNull LinearLayout playFinishCover, @NonNull TextView progressTextShow, @NonNull TextView retryText, @NonNull ImageView start, @NonNull LinearLayout startLayout, @NonNull FrameLayout surfaceContainer, @NonNull SimpleDraweeView thumb, @NonNull TextView title, @NonNull TextView total, @NonNull TextView videoCurrentTime) {
        this.f44501b = rootView;
        this.f44502c = autoPlay;
        this.f44503d = back;
        this.f44504e = backTiny;
        this.f44505f = batteryLevel;
        this.f44506g = batteryTimeLayout;
        this.f44507h = bottomProgress;
        this.f44508i = bottomSeekProgress;
        this.f44509j = current;
        this.f44510k = equalizerView;
        this.f44511l = fullscreen;
        this.f44512m = layoutBottom;
        this.f44513n = layoutBottom2;
        this.f44514o = layoutTop;
        this.f44515p = loading;
        this.f44516q = loadingM;
        this.f44517r = mute;
        this.f44518s = playFinishCover;
        this.f44519t = progressTextShow;
        this.f44520u = retryText;
        this.f44521v = start;
        this.f44522w = startLayout;
        this.f44523x = surfaceContainer;
        this.f44524y = thumb;
        this.f44525z = title;
        this.A = total;
        this.B = videoCurrentTime;
    }

    @NonNull
    public static rv0 bind(@NonNull View rootView) {
        int i10 = R.id.autoPlay;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.autoPlay);
        if (imageView != null) {
            i10 = R.id.back;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
            if (imageView2 != null) {
                i10 = R.id.back_tiny;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_tiny);
                if (imageView3 != null) {
                    i10 = R.id.battery_level;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.battery_level);
                    if (imageView4 != null) {
                        i10 = R.id.battery_time_layout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.battery_time_layout);
                        if (linearLayout != null) {
                            i10 = R.id.bottom_progress;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.bottom_progress);
                            if (progressBar != null) {
                                i10 = R.id.bottom_seek_progress;
                                SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(rootView, R.id.bottom_seek_progress);
                                if (seekBar != null) {
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
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_bottom);
                                                if (linearLayout2 != null) {
                                                    i10 = R.id.layout_bottom2;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_bottom2);
                                                    if (linearLayout3 != null) {
                                                        i10 = R.id.layout_top;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_top);
                                                        if (linearLayout4 != null) {
                                                            i10 = R.id.loading;
                                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.loading);
                                                            if (progressBar2 != null) {
                                                                i10 = R.id.loadingM;
                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loadingM);
                                                                if (simpleDraweeView != null) {
                                                                    i10 = R.id.mute;
                                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.mute);
                                                                    if (imageView6 != null) {
                                                                        i10 = R.id.playFinishCover;
                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.playFinishCover);
                                                                        if (linearLayout5 != null) {
                                                                            i10 = R.id.progressTextShow;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.progressTextShow);
                                                                            if (textView2 != null) {
                                                                                i10 = R.id.retry_text;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.retry_text);
                                                                                if (textView3 != null) {
                                                                                    i10 = R.id.start;
                                                                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.start);
                                                                                    if (imageView7 != null) {
                                                                                        i10 = R.id.start_layout;
                                                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.start_layout);
                                                                                        if (linearLayout6 != null) {
                                                                                            i10 = R.id.surface_container;
                                                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.surface_container);
                                                                                            if (frameLayout != null) {
                                                                                                i10 = R.id.thumb;
                                                                                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.thumb);
                                                                                                if (simpleDraweeView2 != null) {
                                                                                                    i10 = R.id.title;
                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                                                    if (textView4 != null) {
                                                                                                        i10 = R.id.total;
                                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.total);
                                                                                                        if (textView5 != null) {
                                                                                                            i10 = R.id.video_current_time;
                                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.video_current_time);
                                                                                                            if (textView6 != null) {
                                                                                                                return new rv0((RelativeLayout) rootView, imageView, imageView2, imageView3, imageView4, linearLayout, progressBar, seekBar, textView, equalizerView, imageView5, linearLayout2, linearLayout3, linearLayout4, progressBar2, simpleDraweeView, imageView6, linearLayout5, textView2, textView3, imageView7, linearLayout6, frameLayout, simpleDraweeView2, textView4, textView5, textView6);
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
    public static rv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44501b;
    }

    @NonNull
    public static rv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.standard_video_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
