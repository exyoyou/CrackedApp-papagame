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
import moe.codeest.enviews.ENDownloadView;
import moe.codeest.enviews.ENPlayView;

/* JADX INFO: loaded from: classes4.dex */
public final class ex0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38148f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38149g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38150h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38151i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ENDownloadView f38152j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f38153k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SeekBar f38154l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38155m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f38156n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ENPlayView f38157o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38158p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38159q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38160r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f38161s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f38162t;

    private ex0(@NonNull RelativeLayout rootView, @NonNull ImageView back, @NonNull ImageView backTiny, @NonNull ProgressBar bottomProgressbar, @NonNull TextView current, @NonNull ImageView fullscreen, @NonNull LinearLayout layoutBottom, @NonNull LinearLayout layoutTop, @NonNull ENDownloadView loading, @NonNull ImageView lockScreen, @NonNull SeekBar progress, @NonNull SimpleDraweeView sdvImageBluer, @NonNull ImageView smallClose, @NonNull ENPlayView start, @NonNull FrameLayout surfaceContainer, @NonNull RelativeLayout thumb, @NonNull SimpleDraweeView thumbImageView, @NonNull TextView title, @NonNull TextView total) {
        this.f38144b = rootView;
        this.f38145c = back;
        this.f38146d = backTiny;
        this.f38147e = bottomProgressbar;
        this.f38148f = current;
        this.f38149g = fullscreen;
        this.f38150h = layoutBottom;
        this.f38151i = layoutTop;
        this.f38152j = loading;
        this.f38153k = lockScreen;
        this.f38154l = progress;
        this.f38155m = sdvImageBluer;
        this.f38156n = smallClose;
        this.f38157o = start;
        this.f38158p = surfaceContainer;
        this.f38159q = thumb;
        this.f38160r = thumbImageView;
        this.f38161s = title;
        this.f38162t = total;
    }

    @NonNull
    public static ex0 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (imageView != null) {
            i10 = R.id.back_tiny;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_tiny);
            if (imageView2 != null) {
                i10 = R.id.bottom_progressbar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.bottom_progressbar);
                if (progressBar != null) {
                    i10 = R.id.current;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.current);
                    if (textView != null) {
                        i10 = R.id.fullscreen;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.fullscreen);
                        if (imageView3 != null) {
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
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lock_screen);
                                        if (imageView4 != null) {
                                            i10 = R.id.progress;
                                            SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(rootView, R.id.progress);
                                            if (seekBar != null) {
                                                i10 = R.id.sdv_image_bluer;
                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image_bluer);
                                                if (simpleDraweeView != null) {
                                                    i10 = R.id.small_close;
                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.small_close);
                                                    if (imageView5 != null) {
                                                        i10 = R.id.start;
                                                        ENPlayView eNPlayView = (ENPlayView) ViewBindings.findChildViewById(rootView, R.id.start);
                                                        if (eNPlayView != null) {
                                                            i10 = R.id.surface_container;
                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.surface_container);
                                                            if (frameLayout != null) {
                                                                i10 = R.id.thumb;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.thumb);
                                                                if (relativeLayout != null) {
                                                                    i10 = R.id.thumbImageView;
                                                                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.thumbImageView);
                                                                    if (simpleDraweeView2 != null) {
                                                                        i10 = R.id.title;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                        if (textView2 != null) {
                                                                            i10 = R.id.total;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.total);
                                                                            if (textView3 != null) {
                                                                                return new ex0((RelativeLayout) rootView, imageView, imageView2, progressBar, textView, imageView3, linearLayout, linearLayout2, eNDownloadView, imageView4, seekBar, simpleDraweeView, imageView5, eNPlayView, frameLayout, relativeLayout, simpleDraweeView2, textView2, textView3);
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
    public static ex0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38144b;
    }

    @NonNull
    public static ex0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.video_layout_multi_wufun, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
