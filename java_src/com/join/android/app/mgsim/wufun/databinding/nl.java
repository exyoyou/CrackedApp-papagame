package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.control.RhythmLayout;
import com.join.mgps.pulltorefresh.extras.viewpager.PullToRefreshViewPager;

/* JADX INFO: loaded from: classes4.dex */
public final class nl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RhythmLayout f42385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageButton f42386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final PullToRefreshViewPager f42388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42389g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42390h;

    private nl(@NonNull RelativeLayout rootView, @NonNull RhythmLayout boxRhythm, @NonNull ImageButton btnRocketToHead, @NonNull RelativeLayout mainView, @NonNull PullToRefreshViewPager pager, @NonNull TextView textTimeFirst, @NonNull TextView textTimeSecond) {
        this.f42384b = rootView;
        this.f42385c = boxRhythm;
        this.f42386d = btnRocketToHead;
        this.f42387e = mainView;
        this.f42388f = pager;
        this.f42389g = textTimeFirst;
        this.f42390h = textTimeSecond;
    }

    @NonNull
    public static nl bind(@NonNull View rootView) {
        int i10 = R.id.box_rhythm;
        RhythmLayout rhythmLayout = (RhythmLayout) ViewBindings.findChildViewById(rootView, R.id.box_rhythm);
        if (rhythmLayout != null) {
            i10 = R.id.btn_rocket_to_head;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(rootView, R.id.btn_rocket_to_head);
            if (imageButton != null) {
                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                i10 = R.id.pager;
                PullToRefreshViewPager pullToRefreshViewPager = (PullToRefreshViewPager) ViewBindings.findChildViewById(rootView, R.id.pager);
                if (pullToRefreshViewPager != null) {
                    i10 = R.id.text_time_first;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_time_first);
                    if (textView != null) {
                        i10 = R.id.text_time_second;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.text_time_second);
                        if (textView2 != null) {
                            return new nl(relativeLayout, rhythmLayout, imageButton, relativeLayout, pullToRefreshViewPager, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42384b;
    }

    @NonNull
    public static nl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_discoverapp, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
