package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class p2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43183e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RecyclerView f43184f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f43185g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43186h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43187i;

    private p2(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull RelativeLayout headview, @NonNull LinearLayout llPwd, @NonNull RecyclerView rvKeyBoard, @NonNull View statubar, @NonNull TextView titleTextview, @NonNull TextView tvDesc) {
        this.f43180b = rootView;
        this.f43181c = backImage;
        this.f43182d = headview;
        this.f43183e = llPwd;
        this.f43184f = rvKeyBoard;
        this.f43185g = statubar;
        this.f43186h = titleTextview;
        this.f43187i = tvDesc;
    }

    @NonNull
    public static p2 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.headview;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.headview);
            if (relativeLayout != null) {
                i10 = R.id.llPwd;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llPwd);
                if (linearLayout != null) {
                    i10 = R.id.rvKeyBoard;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvKeyBoard);
                    if (recyclerView != null) {
                        i10 = R.id.statubar;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.title_textview;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                            if (textView != null) {
                                i10 = R.id.tvDesc;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
                                if (textView2 != null) {
                                    return new p2((LinearLayout) rootView, imageView, relativeLayout, linearLayout, recyclerView, viewFindChildViewById, textView, textView2);
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
    public static p2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43180b;
    }

    @NonNull
    public static p2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_hide_app_set_pwd, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
