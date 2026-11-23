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

/* JADX INFO: loaded from: classes4.dex */
public final class h70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39205d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39206e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39207f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39208g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39209h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39210i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39211j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f39212k;

    private h70(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView standAloneTagOneIv, @NonNull LinearLayout standAloneTagOneLl, @NonNull TextView standAloneTagOneTv, @NonNull SimpleDraweeView standAloneTagThreeIv, @NonNull LinearLayout standAloneTagThreeLl, @NonNull TextView standAloneTagThreeTv, @NonNull SimpleDraweeView standAloneTagTwoIv, @NonNull LinearLayout standAloneTagTwoLl, @NonNull TextView standAloneTagTwoTv) {
        this.f39203b = rootView;
        this.f39204c = standAloneTagOneIv;
        this.f39205d = standAloneTagOneLl;
        this.f39206e = standAloneTagOneTv;
        this.f39207f = standAloneTagThreeIv;
        this.f39208g = standAloneTagThreeLl;
        this.f39209h = standAloneTagThreeTv;
        this.f39210i = standAloneTagTwoIv;
        this.f39211j = standAloneTagTwoLl;
        this.f39212k = standAloneTagTwoTv;
    }

    @NonNull
    public static h70 bind(@NonNull View rootView) {
        int i10 = R.id.standAloneTagOneIv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.standAloneTagOneIv);
        if (simpleDraweeView != null) {
            i10 = R.id.standAloneTagOneLl;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.standAloneTagOneLl);
            if (linearLayout != null) {
                i10 = R.id.standAloneTagOneTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.standAloneTagOneTv);
                if (textView != null) {
                    i10 = R.id.standAloneTagThreeIv;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.standAloneTagThreeIv);
                    if (simpleDraweeView2 != null) {
                        i10 = R.id.standAloneTagThreeLl;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.standAloneTagThreeLl);
                        if (linearLayout2 != null) {
                            i10 = R.id.standAloneTagThreeTv;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.standAloneTagThreeTv);
                            if (textView2 != null) {
                                i10 = R.id.standAloneTagTwoIv;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.standAloneTagTwoIv);
                                if (simpleDraweeView3 != null) {
                                    i10 = R.id.standAloneTagTwoLl;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.standAloneTagTwoLl);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.standAloneTagTwoTv;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.standAloneTagTwoTv);
                                        if (textView3 != null) {
                                            return new h70((LinearLayout) rootView, simpleDraweeView, linearLayout, textView, simpleDraweeView2, linearLayout2, textView2, simpleDraweeView3, linearLayout3, textView3);
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
    public static h70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39203b;
    }

    @NonNull
    public static h70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_standalone_tag_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
