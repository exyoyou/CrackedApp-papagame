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
public final class l2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f41107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41108f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41109g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41110h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41111i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41112j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f41113k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41114l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41115m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41116n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RecyclerView f41117o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41118p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f41119q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f41120r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final View f41121s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final View f41122t;

    private l2(@NonNull RelativeLayout rootView, @NonNull TextView appName, @NonNull TextView back1, @NonNull ImageView closeImage1, @NonNull LinearLayout downFrom, @NonNull TextView downFromText, @NonNull LinearLayout forumData, @NonNull TextView goVow, @NonNull TextView goforumTagList, @NonNull ImageView imageView54, @NonNull RelativeLayout layoutq, @NonNull LinearLayout linearLayoutx, @NonNull RelativeLayout main, @NonNull RecyclerView recycleView, @NonNull LinearLayout showView, @NonNull TextView textView62, @NonNull TextView title1, @NonNull View topLayout, @NonNull View view6) {
        this.f41104b = rootView;
        this.f41105c = appName;
        this.f41106d = back1;
        this.f41107e = closeImage1;
        this.f41108f = downFrom;
        this.f41109g = downFromText;
        this.f41110h = forumData;
        this.f41111i = goVow;
        this.f41112j = goforumTagList;
        this.f41113k = imageView54;
        this.f41114l = layoutq;
        this.f41115m = linearLayoutx;
        this.f41116n = main;
        this.f41117o = recycleView;
        this.f41118p = showView;
        this.f41119q = textView62;
        this.f41120r = title1;
        this.f41121s = topLayout;
        this.f41122t = view6;
    }

    @NonNull
    public static l2 bind(@NonNull View rootView) {
        int i10 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
        if (textView != null) {
            i10 = R.id.back1;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.back1);
            if (textView2 != null) {
                i10 = R.id.closeImage1;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.closeImage1);
                if (imageView != null) {
                    i10 = R.id.downFrom;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.downFrom);
                    if (linearLayout != null) {
                        i10 = R.id.downFromText;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downFromText);
                        if (textView3 != null) {
                            i10 = R.id.forumData;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forumData);
                            if (linearLayout2 != null) {
                                i10 = R.id.goVow;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.goVow);
                                if (textView4 != null) {
                                    i10 = R.id.goforumTagList;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.goforumTagList);
                                    if (textView5 != null) {
                                        i10 = R.id.imageView54;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView54);
                                        if (imageView2 != null) {
                                            i10 = R.id.layoutq;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layoutq);
                                            if (relativeLayout != null) {
                                                i10 = R.id.linearLayoutx;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayoutx);
                                                if (linearLayout3 != null) {
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) rootView;
                                                    i10 = R.id.recycleView;
                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recycleView);
                                                    if (recyclerView != null) {
                                                        i10 = R.id.showView;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.showView);
                                                        if (linearLayout4 != null) {
                                                            i10 = R.id.textView62;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView62);
                                                            if (textView6 != null) {
                                                                i10 = R.id.title1;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title1);
                                                                if (textView7 != null) {
                                                                    i10 = R.id.topLayout;
                                                                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.topLayout);
                                                                    if (viewFindChildViewById != null) {
                                                                        i10 = R.id.view6;
                                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.view6);
                                                                        if (viewFindChildViewById2 != null) {
                                                                            return new l2(relativeLayout2, textView, textView2, imageView, linearLayout, textView3, linearLayout2, textView4, textView5, imageView2, relativeLayout, linearLayout3, relativeLayout2, recyclerView, linearLayout4, textView6, textView7, viewFindChildViewById, viewFindChildViewById2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static l2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41104b;
    }

    @NonNull
    public static l2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_haven_down, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
