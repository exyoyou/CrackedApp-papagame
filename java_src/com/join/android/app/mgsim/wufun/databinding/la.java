package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CloudDownButn;

/* JADX INFO: loaded from: classes4.dex */
public final class la implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CloudDownButn f41235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41237f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41238g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41242k;

    private la(@NonNull LinearLayout rootView, @NonNull TextView backUp, @NonNull CloudDownButn downButton, @NonNull LinearLayout ivMore, @NonNull TextView shape, @NonNull SimpleDraweeView simv, @NonNull TextView tvEvalute, @NonNull TextView tvGood, @NonNull TextView tvName, @NonNull TextView tvTime) {
        this.f41233b = rootView;
        this.f41234c = backUp;
        this.f41235d = downButton;
        this.f41236e = ivMore;
        this.f41237f = shape;
        this.f41238g = simv;
        this.f41239h = tvEvalute;
        this.f41240i = tvGood;
        this.f41241j = tvName;
        this.f41242k = tvTime;
    }

    @NonNull
    public static la bind(@NonNull View rootView) {
        int i10 = R.id.backUp;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.backUp);
        if (textView != null) {
            i10 = R.id.downButton;
            CloudDownButn cloudDownButn = (CloudDownButn) ViewBindings.findChildViewById(rootView, R.id.downButton);
            if (cloudDownButn != null) {
                i10 = R.id.iv_more;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_more);
                if (linearLayout != null) {
                    i10 = R.id.shape;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shape);
                    if (textView2 != null) {
                        i10 = R.id.simv;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.simv);
                        if (simpleDraweeView != null) {
                            i10 = R.id.tv_evalute;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_evalute);
                            if (textView3 != null) {
                                i10 = R.id.tv_good;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_good);
                                if (textView4 != null) {
                                    i10 = R.id.tv_name;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                                    if (textView5 != null) {
                                        i10 = R.id.tv_time;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_time);
                                        if (textView6 != null) {
                                            return new la((LinearLayout) rootView, textView, cloudDownButn, linearLayout, textView2, simpleDraweeView, textView3, textView4, textView5, textView6);
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
    public static la inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41233b;
    }

    @NonNull
    public static la inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloud_list_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
