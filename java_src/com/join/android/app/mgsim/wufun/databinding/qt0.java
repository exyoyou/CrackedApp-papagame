package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.screenshot.SlidingTabLayoutScreenShort;

/* JADX INFO: loaded from: classes4.dex */
public final class qt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f44018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44019e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44020f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayoutScreenShort f44021g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ViewPager f44022h;

    private qt0(@NonNull LinearLayout rootView, @NonNull ImageView back, @NonNull EditText commitMessage, @NonNull TextView finishButn, @NonNull SimpleDraweeView imgUpload, @NonNull SlidingTabLayoutScreenShort selecter, @NonNull ViewPager viewPager) {
        this.f44016b = rootView;
        this.f44017c = back;
        this.f44018d = commitMessage;
        this.f44019e = finishButn;
        this.f44020f = imgUpload;
        this.f44021g = selecter;
        this.f44022h = viewPager;
    }

    @NonNull
    public static qt0 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (imageView != null) {
            i10 = R.id.commitMessage;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.commitMessage);
            if (editText != null) {
                i10 = R.id.finishButn;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.finishButn);
                if (textView != null) {
                    i10 = R.id.imgUpload;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imgUpload);
                    if (simpleDraweeView != null) {
                        i10 = R.id.selecter;
                        SlidingTabLayoutScreenShort slidingTabLayoutScreenShort = (SlidingTabLayoutScreenShort) ViewBindings.findChildViewById(rootView, R.id.selecter);
                        if (slidingTabLayoutScreenShort != null) {
                            i10 = R.id.viewPager;
                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                            if (viewPager != null) {
                                return new qt0((LinearLayout) rootView, imageView, editText, textView, simpleDraweeView, slidingTabLayoutScreenShort, viewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44016b;
    }

    @NonNull
    public static qt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.screenshort_upload_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
