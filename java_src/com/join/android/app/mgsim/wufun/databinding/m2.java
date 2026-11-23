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
public final class m2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RecyclerView f41685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f41686g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41687h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41688i;

    private m2(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull RelativeLayout headview, @NonNull LinearLayout hideAppMask, @NonNull RecyclerView rvKeyBoard, @NonNull View statubar, @NonNull TextView titleTextview, @NonNull TextView tvCalResult) {
        this.f41681b = rootView;
        this.f41682c = backImage;
        this.f41683d = headview;
        this.f41684e = hideAppMask;
        this.f41685f = rvKeyBoard;
        this.f41686g = statubar;
        this.f41687h = titleTextview;
        this.f41688i = tvCalResult;
    }

    @NonNull
    public static m2 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.headview;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.headview);
            if (relativeLayout != null) {
                i10 = R.id.hideAppMask;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.hideAppMask);
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
                                i10 = R.id.tvCalResult;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvCalResult);
                                if (textView2 != null) {
                                    return new m2((LinearLayout) rootView, imageView, relativeLayout, linearLayout, recyclerView, viewFindChildViewById, textView, textView2);
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
    public static m2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41681b;
    }

    @NonNull
    public static m2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_hide_app_calculator, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
