package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class b10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36162d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36163e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f36164f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f36165g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f36166h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36167i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36168j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36169k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f36170l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f36171m;

    private b10(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull TextView button, @NonNull ImageView icLevel, @NonNull ImageView icLevel1, @NonNull ImageView icLevel1Bg, @NonNull ImageView icLoc, @NonNull TextView levelTxt, @NonNull TextView locTxt, @NonNull TextView name, @NonNull ImageView offlineOver, @NonNull TextView recommend) {
        this.f36160b = rootView;
        this.f36161c = avatar;
        this.f36162d = button;
        this.f36163e = icLevel;
        this.f36164f = icLevel1;
        this.f36165g = icLevel1Bg;
        this.f36166h = icLoc;
        this.f36167i = levelTxt;
        this.f36168j = locTxt;
        this.f36169k = name;
        this.f36170l = offlineOver;
        this.f36171m = recommend;
    }

    @NonNull
    public static b10 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.button;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.button);
            if (textView != null) {
                i10 = R.id.icLevel;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icLevel);
                if (imageView != null) {
                    i10 = R.id.icLevel1;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icLevel1);
                    if (imageView2 != null) {
                        i10 = R.id.icLevel1Bg;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icLevel1Bg);
                        if (imageView3 != null) {
                            i10 = R.id.icLoc;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icLoc);
                            if (imageView4 != null) {
                                i10 = R.id.levelTxt;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.levelTxt);
                                if (textView2 != null) {
                                    i10 = R.id.locTxt;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.locTxt);
                                    if (textView3 != null) {
                                        i10 = R.id.name;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                                        if (textView4 != null) {
                                            i10 = R.id.offlineOver;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.offlineOver);
                                            if (imageView5 != null) {
                                                i10 = R.id.recommend;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.recommend);
                                                if (textView5 != null) {
                                                    return new b10((ConstraintLayout) rootView, simpleDraweeView, textView, imageView, imageView2, imageView3, imageView4, textView2, textView3, textView4, imageView5, textView5);
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
    public static b10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36160b;
    }

    @NonNull
    public static b10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_friend_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
