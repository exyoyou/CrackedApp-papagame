package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TableLayout f36954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f36955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36956e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36957f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36958g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36959h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f36960i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36961j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36962k;

    private cj0(@NonNull LinearLayout rootView, @NonNull TableLayout content, @NonNull View dividerTop, @NonNull RelativeLayout forumExtFunc, @NonNull SimpleDraweeView img1, @NonNull SimpleDraweeView img2, @NonNull SimpleDraweeView img3, @NonNull ImageView moreFunc, @NonNull TextView sectionSubTitle, @NonNull TextView sectionTitle) {
        this.f36953b = rootView;
        this.f36954c = content;
        this.f36955d = dividerTop;
        this.f36956e = forumExtFunc;
        this.f36957f = img1;
        this.f36958g = img2;
        this.f36959h = img3;
        this.f36960i = moreFunc;
        this.f36961j = sectionSubTitle;
        this.f36962k = sectionTitle;
    }

    @NonNull
    public static cj0 bind(@NonNull View rootView) {
        int i10 = R.id.content;
        TableLayout tableLayout = (TableLayout) ViewBindings.findChildViewById(rootView, R.id.content);
        if (tableLayout != null) {
            i10 = R.id.dividerTop;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.dividerTop);
            if (viewFindChildViewById != null) {
                i10 = R.id.forumExtFunc;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.forumExtFunc);
                if (relativeLayout != null) {
                    i10 = R.id.img_1;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_1);
                    if (simpleDraweeView != null) {
                        i10 = R.id.img_2;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_2);
                        if (simpleDraweeView2 != null) {
                            i10 = R.id.img_3;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img_3);
                            if (simpleDraweeView3 != null) {
                                i10 = R.id.moreFunc;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFunc);
                                if (imageView != null) {
                                    i10 = R.id.sectionSubTitle;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.sectionSubTitle);
                                    if (textView != null) {
                                        i10 = R.id.sectionTitle;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sectionTitle);
                                        if (textView2 != null) {
                                            return new cj0((LinearLayout) rootView, tableLayout, viewFindChildViewById, relativeLayout, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, imageView, textView, textView2);
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
    public static cj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36953b;
    }

    @NonNull
    public static cj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_welcome_item_ad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
