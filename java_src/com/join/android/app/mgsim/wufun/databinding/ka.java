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
import com.join.mgps.customview.CloudDownButn1;

/* JADX INFO: loaded from: classes4.dex */
public final class ka implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CloudDownButn1 f40685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40686f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40687g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40688h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40689i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40690j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40691k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40692l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f40693m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f40694n;

    private ka(@NonNull LinearLayout rootView, @NonNull TextView authorname, @NonNull TextView backUp, @NonNull CloudDownButn1 downButton, @NonNull LinearLayout llAuthor, @NonNull LinearLayout llInfo, @NonNull LinearLayout llVip, @NonNull LinearLayout rlRoot, @NonNull TextView shape, @NonNull SimpleDraweeView simv, @NonNull TextView tvName, @NonNull TextView tvcouldnum, @NonNull TextView tvgoodpraisenum) {
        this.f40682b = rootView;
        this.f40683c = authorname;
        this.f40684d = backUp;
        this.f40685e = downButton;
        this.f40686f = llAuthor;
        this.f40687g = llInfo;
        this.f40688h = llVip;
        this.f40689i = rlRoot;
        this.f40690j = shape;
        this.f40691k = simv;
        this.f40692l = tvName;
        this.f40693m = tvcouldnum;
        this.f40694n = tvgoodpraisenum;
    }

    @NonNull
    public static ka bind(@NonNull View rootView) {
        int i10 = R.id.authorname;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.authorname);
        if (textView != null) {
            i10 = R.id.backUp;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.backUp);
            if (textView2 != null) {
                i10 = R.id.downButton;
                CloudDownButn1 cloudDownButn1 = (CloudDownButn1) ViewBindings.findChildViewById(rootView, R.id.downButton);
                if (cloudDownButn1 != null) {
                    i10 = R.id.ll_author;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_author);
                    if (linearLayout != null) {
                        i10 = R.id.ll_info;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_info);
                        if (linearLayout2 != null) {
                            i10 = R.id.ll_vip;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_vip);
                            if (linearLayout3 != null) {
                                LinearLayout linearLayout4 = (LinearLayout) rootView;
                                i10 = R.id.shape;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shape);
                                if (textView3 != null) {
                                    i10 = R.id.simv;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.simv);
                                    if (simpleDraweeView != null) {
                                        i10 = R.id.tv_name;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                                        if (textView4 != null) {
                                            i10 = R.id.tvcouldnum;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvcouldnum);
                                            if (textView5 != null) {
                                                i10 = R.id.tvgoodpraisenum;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvgoodpraisenum);
                                                if (textView6 != null) {
                                                    return new ka(linearLayout4, textView, textView2, cloudDownButn1, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView3, simpleDraweeView, textView4, textView5, textView6);
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
    public static ka inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40682b;
    }

    @NonNull
    public static ka inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloud_list_item3, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
