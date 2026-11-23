package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class e4 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37763c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f37764d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f37765e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37766f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37767g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RecyclerView f37768h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37769i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37770j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37771k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f37772l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f37773m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f37774n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f37775o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final View f37776p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f37777q;

    private e4(@NonNull ConstraintLayout rootView, @NonNull ImageView bg, @NonNull ConstraintLayout container, @NonNull ImageView ivLight, @NonNull ImageView ivMobile, @NonNull TextView ivRecommend, @NonNull RecyclerView rvTipList, @NonNull TextView tvCountDesc, @NonNull TextView tvCountDown, @NonNull TextView tvCountPre, @NonNull TextView tvDownloadNormal, @NonNull TextView tvDownloadQuark, @NonNull TextView tvFileName, @NonNull TextView tvFileTime, @NonNull View vLine, @NonNull View vQuarkDown) {
        this.f37762b = rootView;
        this.f37763c = bg;
        this.f37764d = container;
        this.f37765e = ivLight;
        this.f37766f = ivMobile;
        this.f37767g = ivRecommend;
        this.f37768h = rvTipList;
        this.f37769i = tvCountDesc;
        this.f37770j = tvCountDown;
        this.f37771k = tvCountPre;
        this.f37772l = tvDownloadNormal;
        this.f37773m = tvDownloadQuark;
        this.f37774n = tvFileName;
        this.f37775o = tvFileTime;
        this.f37776p = vLine;
        this.f37777q = vQuarkDown;
    }

    @NonNull
    public static e4 bind(@NonNull View rootView) {
        int i10 = R.id.bg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bg);
        if (imageView != null) {
            i10 = R.id.container;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.container);
            if (constraintLayout != null) {
                i10 = R.id.iv_light;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_light);
                if (imageView2 != null) {
                    i10 = R.id.iv_mobile;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_mobile);
                    if (imageView3 != null) {
                        i10 = R.id.ivRecommend;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.ivRecommend);
                        if (textView != null) {
                            i10 = R.id.rv_tip_list;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_tip_list);
                            if (recyclerView != null) {
                                i10 = R.id.tv_count_desc;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_count_desc);
                                if (textView2 != null) {
                                    i10 = R.id.tv_count_down;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_count_down);
                                    if (textView3 != null) {
                                        i10 = R.id.tv_count_pre;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_count_pre);
                                        if (textView4 != null) {
                                            i10 = R.id.tvDownloadNormal;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDownloadNormal);
                                            if (textView5 != null) {
                                                i10 = R.id.tvDownloadQuark;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDownloadQuark);
                                                if (textView6 != null) {
                                                    i10 = R.id.tv_file_name;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_file_name);
                                                    if (textView7 != null) {
                                                        i10 = R.id.tv_file_time;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_file_time);
                                                        if (textView8 != null) {
                                                            i10 = R.id.v_line;
                                                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_line);
                                                            if (viewFindChildViewById != null) {
                                                                i10 = R.id.v_quark_down;
                                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_quark_down);
                                                                if (viewFindChildViewById2 != null) {
                                                                    return new e4((ConstraintLayout) rootView, imageView, constraintLayout, imageView2, imageView3, textView, recyclerView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, viewFindChildViewById, viewFindChildViewById2);
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
    public static e4 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37762b;
    }

    @NonNull
    public static e4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_quark_prompt, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
