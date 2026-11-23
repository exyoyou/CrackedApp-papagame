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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class n2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42156c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42157d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42159f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f42160g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42161h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f42162i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42163j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f42164k;

    private n2(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull RelativeLayout headview, @NonNull ImageView icFake, @NonNull ImageView icPretend, @NonNull ImageView icProtected, @NonNull ImageView icPwd, @NonNull View statubar, @NonNull TextView titleTextview, @NonNull ViewPager2 viewpager) {
        this.f42155b = rootView;
        this.f42156c = backImage;
        this.f42157d = headview;
        this.f42158e = icFake;
        this.f42159f = icPretend;
        this.f42160g = icProtected;
        this.f42161h = icPwd;
        this.f42162i = statubar;
        this.f42163j = titleTextview;
        this.f42164k = viewpager;
    }

    @NonNull
    public static n2 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.headview;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.headview);
            if (relativeLayout != null) {
                i10 = R.id.icFake;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icFake);
                if (imageView2 != null) {
                    i10 = R.id.icPretend;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icPretend);
                    if (imageView3 != null) {
                        i10 = R.id.icProtected;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icProtected);
                        if (imageView4 != null) {
                            i10 = R.id.icPwd;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icPwd);
                            if (imageView5 != null) {
                                i10 = R.id.statubar;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                if (viewFindChildViewById != null) {
                                    i10 = R.id.title_textview;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                    if (textView != null) {
                                        i10 = R.id.viewpager;
                                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                                        if (viewPager2 != null) {
                                            return new n2((LinearLayout) rootView, imageView, relativeLayout, imageView2, imageView3, imageView4, imageView5, viewFindChildViewById, textView, viewPager2);
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
    public static n2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42155b;
    }

    @NonNull
    public static n2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_hide_app_home, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
