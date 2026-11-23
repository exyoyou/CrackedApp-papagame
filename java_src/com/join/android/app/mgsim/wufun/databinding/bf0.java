package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageButton f36370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageButton f36371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SeekBar f36372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36373f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36374g;

    private bf0(@NonNull LinearLayout rootView, @NonNull ImageButton mediacontrollerFullScreen, @NonNull ImageButton mediacontrollerPlayPause, @NonNull SeekBar mediacontrollerSeekbar, @NonNull TextView mediacontrollerTimeCurrent, @NonNull TextView mediacontrollerTimeTotal) {
        this.f36369b = rootView;
        this.f36370c = mediacontrollerFullScreen;
        this.f36371d = mediacontrollerPlayPause;
        this.f36372e = mediacontrollerSeekbar;
        this.f36373f = mediacontrollerTimeCurrent;
        this.f36374g = mediacontrollerTimeTotal;
    }

    @NonNull
    public static bf0 bind(@NonNull View rootView) {
        int i10 = R.id.mediacontroller_full_screen;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(rootView, R.id.mediacontroller_full_screen);
        if (imageButton != null) {
            i10 = R.id.mediacontroller_play_pause;
            ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(rootView, R.id.mediacontroller_play_pause);
            if (imageButton2 != null) {
                i10 = R.id.mediacontroller_seekbar;
                SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(rootView, R.id.mediacontroller_seekbar);
                if (seekBar != null) {
                    i10 = R.id.mediacontroller_time_current;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.mediacontroller_time_current);
                    if (textView != null) {
                        i10 = R.id.mediacontroller_time_total;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mediacontroller_time_total);
                        if (textView2 != null) {
                            return new bf0((LinearLayout) rootView, imageButton, imageButton2, seekBar, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36369b;
    }

    @NonNull
    public static bf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mediacontroller, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
