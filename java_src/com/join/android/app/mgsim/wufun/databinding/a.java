package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f35545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RecyclerView f35546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35548g;

    private a(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull RecyclerView rvMenuList, @NonNull RecyclerView rvSubMenuList, @NonNull TextView titleTextview, @NonNull TextView tvVersion) {
        this.f35543b = rootView;
        this.f35544c = backImage;
        this.f35545d = rvMenuList;
        this.f35546e = rvSubMenuList;
        this.f35547f = titleTextview;
        this.f35548g = tvVersion;
    }

    @NonNull
    public static a bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.rv_menu_list;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_menu_list);
            if (recyclerView != null) {
                i10 = R.id.rv_sub_menu_list;
                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_sub_menu_list);
                if (recyclerView2 != null) {
                    i10 = R.id.title_textview;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                    if (textView != null) {
                        i10 = R.id.tv_version;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_version);
                        if (textView2 != null) {
                            return new a((LinearLayout) rootView, imageView, recyclerView, recyclerView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static a inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35543b;
    }

    @NonNull
    public static a inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.about_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
