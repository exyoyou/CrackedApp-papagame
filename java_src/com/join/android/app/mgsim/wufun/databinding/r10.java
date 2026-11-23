package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.WFTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class r10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44166c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44167d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44168e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44169f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final WFTextView f44170g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44171h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44172i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44173j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f44174k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f44175l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f44176m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f44177n;

    private r10(@NonNull ConstraintLayout rootView, @NonNull TextView tvAmount, @NonNull TextView tvDesc, @NonNull TextView tvLabelY, @NonNull TextView tvName, @NonNull WFTextView tvReceive, @NonNull TextView tvThreshold, @NonNull TextView tvUseRange, @NonNull TextView tvValidTime, @NonNull View vDividerH, @NonNull View vLeft, @NonNull View vLine, @NonNull View vRight) {
        this.f44165b = rootView;
        this.f44166c = tvAmount;
        this.f44167d = tvDesc;
        this.f44168e = tvLabelY;
        this.f44169f = tvName;
        this.f44170g = tvReceive;
        this.f44171h = tvThreshold;
        this.f44172i = tvUseRange;
        this.f44173j = tvValidTime;
        this.f44174k = vDividerH;
        this.f44175l = vLeft;
        this.f44176m = vLine;
        this.f44177n = vRight;
    }

    @NonNull
    public static r10 bind(@NonNull View rootView) {
        int i10 = R.id.tv_amount;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_amount);
        if (textView != null) {
            i10 = R.id.tv_desc;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_desc);
            if (textView2 != null) {
                i10 = R.id.tv_label_y;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_y);
                if (textView3 != null) {
                    i10 = R.id.tv_name;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                    if (textView4 != null) {
                        i10 = R.id.tv_receive;
                        WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.tv_receive);
                        if (wFTextView != null) {
                            i10 = R.id.tv_threshold;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_threshold);
                            if (textView5 != null) {
                                i10 = R.id.tv_use_range;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_use_range);
                                if (textView6 != null) {
                                    i10 = R.id.tv_valid_time;
                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_valid_time);
                                    if (textView7 != null) {
                                        i10 = R.id.v_divider_h;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_divider_h);
                                        if (viewFindChildViewById != null) {
                                            i10 = R.id.v_left;
                                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_left);
                                            if (viewFindChildViewById2 != null) {
                                                i10 = R.id.vLine;
                                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.vLine);
                                                if (viewFindChildViewById3 != null) {
                                                    i10 = R.id.v_right;
                                                    View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.v_right);
                                                    if (viewFindChildViewById4 != null) {
                                                        return new r10((ConstraintLayout) rootView, textView, textView2, textView3, textView4, wFTextView, textView5, textView6, textView7, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4);
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
    public static r10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44165b;
    }

    @NonNull
    public static r10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_gift_coupon, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
