package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentListView;

/* JADX INFO: loaded from: classes4.dex */
public final class zk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f48285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f48286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48287d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48288e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48289f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48290g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48291h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48292i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48293j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48294k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48295l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48296m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48297n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f48298o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final WrapContentListView f48299p;

    private zk0(@NonNull View rootView, @NonNull ImageView arrow, @NonNull RelativeLayout arrowParent, @NonNull TextView count, @NonNull TextView desc, @NonNull TextView follow, @NonNull SimpleDraweeView icon, @NonNull SimpleDraweeView img1, @NonNull SimpleDraweeView img2, @NonNull SimpleDraweeView img3, @NonNull SimpleDraweeView img4, @NonNull SimpleDraweeView img5, @NonNull LinearLayout memberLL, @NonNull TextView name, @NonNull WrapContentListView wrapListView) {
        this.f48285b = rootView;
        this.f48286c = arrow;
        this.f48287d = arrowParent;
        this.f48288e = count;
        this.f48289f = desc;
        this.f48290g = follow;
        this.f48291h = icon;
        this.f48292i = img1;
        this.f48293j = img2;
        this.f48294k = img3;
        this.f48295l = img4;
        this.f48296m = img5;
        this.f48297n = memberLL;
        this.f48298o = name;
        this.f48299p = wrapListView;
    }

    @NonNull
    public static zk0 a(@NonNull LayoutInflater inflater, @NonNull ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.mg_view_forum_group_header, parent);
        return bind(parent);
    }

    @NonNull
    public static zk0 bind(@NonNull View rootView) {
        int i10 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrow);
        if (imageView != null) {
            i10 = R.id.arrowParent;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.arrowParent);
            if (relativeLayout != null) {
                i10 = R.id.count;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.count);
                if (textView != null) {
                    i10 = R.id.desc;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
                    if (textView2 != null) {
                        i10 = R.id.follow;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.follow);
                        if (textView3 != null) {
                            i10 = R.id.icon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                            if (simpleDraweeView != null) {
                                i10 = R.id.img1;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img1);
                                if (simpleDraweeView2 != null) {
                                    i10 = R.id.img2;
                                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img2);
                                    if (simpleDraweeView3 != null) {
                                        i10 = R.id.img3;
                                        SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img3);
                                        if (simpleDraweeView4 != null) {
                                            i10 = R.id.img4;
                                            SimpleDraweeView simpleDraweeView5 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img4);
                                            if (simpleDraweeView5 != null) {
                                                i10 = R.id.img5;
                                                SimpleDraweeView simpleDraweeView6 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img5);
                                                if (simpleDraweeView6 != null) {
                                                    i10 = R.id.memberLL;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.memberLL);
                                                    if (linearLayout != null) {
                                                        i10 = R.id.name;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                                        if (textView4 != null) {
                                                            i10 = R.id.wrapListView;
                                                            WrapContentListView wrapContentListView = (WrapContentListView) ViewBindings.findChildViewById(rootView, R.id.wrapListView);
                                                            if (wrapContentListView != null) {
                                                                return new zk0(rootView, imageView, relativeLayout, textView, textView2, textView3, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, simpleDraweeView5, simpleDraweeView6, linearLayout, textView4, wrapContentListView);
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

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f48285b;
    }
}
