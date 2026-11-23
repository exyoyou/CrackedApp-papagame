package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Barrier f43483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f43484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43486f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43487g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f43488h;

    private pq0(@NonNull ConstraintLayout rootView, @NonNull Barrier barrier, @NonNull FrameLayout flBtn, @NonNull ConstraintLayout root, @NonNull TextView tvBtn, @NonNull TextView tvGameName, @NonNull MultiStandVideo wfVideo) {
        this.f43482b = rootView;
        this.f43483c = barrier;
        this.f43484d = flBtn;
        this.f43485e = root;
        this.f43486f = tvBtn;
        this.f43487g = tvGameName;
        this.f43488h = wfVideo;
    }

    @NonNull
    public static pq0 bind(@NonNull View rootView) {
        int i10 = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(rootView, R.id.barrier);
        if (barrier != null) {
            i10 = R.id.flBtn;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flBtn);
            if (frameLayout != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                i10 = R.id.tvBtn;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBtn);
                if (textView != null) {
                    i10 = R.id.tvGameName;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                    if (textView2 != null) {
                        i10 = R.id.wf_video;
                        MultiStandVideo multiStandVideo = (MultiStandVideo) ViewBindings.findChildViewById(rootView, R.id.wf_video);
                        if (multiStandVideo != null) {
                            return new pq0(constraintLayout, barrier, frameLayout, constraintLayout, textView, textView2, multiStandVideo);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43482b;
    }

    @NonNull
    public static pq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_video_game_ad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
