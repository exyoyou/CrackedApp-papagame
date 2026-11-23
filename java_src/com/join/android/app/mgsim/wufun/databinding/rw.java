package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f44527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f44528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44530f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44531g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44532h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44533i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44534j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RecyclerView f44535k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44536l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44537m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f44538n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f44539o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f44540p;

    private rw(@NonNull LinearLayout rootView, @NonNull Button btnArchiveDown, @NonNull Button btnCancel, @NonNull ImageView ivAllSelect, @NonNull ImageView ivRedbroadcast, @NonNull LinearLayout llAllSelect, @NonNull LinearLayout llLookdetail, @NonNull LinearLayout llNodata, @NonNull LinearLayout llRight, @NonNull RecyclerView rcy, @NonNull RelativeLayout rlShowtitleBc, @NonNull RelativeLayout rlTitlebar, @NonNull TextView tvSelectarchiveSize, @NonNull TextView tvShowNodata, @NonNull TextView tvShowtitleBc) {
        this.f44526b = rootView;
        this.f44527c = btnArchiveDown;
        this.f44528d = btnCancel;
        this.f44529e = ivAllSelect;
        this.f44530f = ivRedbroadcast;
        this.f44531g = llAllSelect;
        this.f44532h = llLookdetail;
        this.f44533i = llNodata;
        this.f44534j = llRight;
        this.f44535k = rcy;
        this.f44536l = rlShowtitleBc;
        this.f44537m = rlTitlebar;
        this.f44538n = tvSelectarchiveSize;
        this.f44539o = tvShowNodata;
        this.f44540p = tvShowtitleBc;
    }

    @NonNull
    public static rw bind(@NonNull View rootView) {
        int i10 = R.id.btn_archive_down;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_archive_down);
        if (button != null) {
            i10 = R.id.btn_cancel;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_cancel);
            if (button2 != null) {
                i10 = R.id.iv_all_select;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_all_select);
                if (imageView != null) {
                    i10 = R.id.iv_redbroadcast;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_redbroadcast);
                    if (imageView2 != null) {
                        i10 = R.id.ll_all_select;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_all_select);
                        if (linearLayout != null) {
                            i10 = R.id.ll_lookdetail;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_lookdetail);
                            if (linearLayout2 != null) {
                                i10 = R.id.ll_nodata;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_nodata);
                                if (linearLayout3 != null) {
                                    i10 = R.id.ll_right;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_right);
                                    if (linearLayout4 != null) {
                                        i10 = R.id.rcy;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rcy);
                                        if (recyclerView != null) {
                                            i10 = R.id.rl_showtitle_bc;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_showtitle_bc);
                                            if (relativeLayout != null) {
                                                i10 = R.id.rl_titlebar;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_titlebar);
                                                if (relativeLayout2 != null) {
                                                    i10 = R.id.tv_selectarchive_size;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_selectarchive_size);
                                                    if (textView != null) {
                                                        i10 = R.id.tv_show_nodata;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_show_nodata);
                                                        if (textView2 != null) {
                                                            i10 = R.id.tv_showtitle_bc;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_showtitle_bc);
                                                            if (textView3 != null) {
                                                                return new rw((LinearLayout) rootView, button, button2, imageView, imageView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, recyclerView, relativeLayout, relativeLayout2, textView, textView2, textView3);
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
    public static rw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44526b;
    }

    @NonNull
    public static rw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_archive, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
