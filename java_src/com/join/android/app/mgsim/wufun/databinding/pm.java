package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f43421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RecyclerView f43424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SeekBar f43425f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43426g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43427h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43428i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43429j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43430k;

    private pm(@NonNull FrameLayout rootView, @NonNull ImageView latency, @NonNull LinearLayout original, @NonNull RecyclerView rvResolution, @NonNull SeekBar sbBrightness, @NonNull LinearLayout soundOff, @NonNull LinearLayout soundOn, @NonNull LinearLayout stretch, @NonNull TextView tv2, @NonNull TextView tvBrightness) {
        this.f43421b = rootView;
        this.f43422c = latency;
        this.f43423d = original;
        this.f43424e = rvResolution;
        this.f43425f = sbBrightness;
        this.f43426g = soundOff;
        this.f43427h = soundOn;
        this.f43428i = stretch;
        this.f43429j = tv2;
        this.f43430k = tvBrightness;
    }

    @NonNull
    public static pm bind(@NonNull View rootView) {
        int i10 = R.id.latency;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.latency);
        if (imageView != null) {
            i10 = R.id.original;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.original);
            if (linearLayout != null) {
                i10 = R.id.rv_resolution;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_resolution);
                if (recyclerView != null) {
                    i10 = R.id.sb_brightness;
                    SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(rootView, R.id.sb_brightness);
                    if (seekBar != null) {
                        i10 = R.id.sound_off;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.sound_off);
                        if (linearLayout2 != null) {
                            i10 = R.id.sound_on;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.sound_on);
                            if (linearLayout3 != null) {
                                i10 = R.id.stretch;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.stretch);
                                if (linearLayout4 != null) {
                                    i10 = R.id.f35487tv;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35487tv);
                                    if (textView != null) {
                                        i10 = R.id.tv_brightness;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_brightness);
                                        if (textView2 != null) {
                                            return new pm((FrameLayout) rootView, imageView, linearLayout, recyclerView, seekBar, linearLayout2, linearLayout3, linearLayout4, textView, textView2);
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
    public static pm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f43421b;
    }

    @NonNull
    public static pm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_hm_settings_common, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
