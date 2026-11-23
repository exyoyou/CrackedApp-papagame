package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class e3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f37746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f37748g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final XListView2 f37749h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f37750i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37751j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f37752k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f37753l;

    private e3(@NonNull LinearLayout rootView, @NonNull TextView editAll, @NonNull TextView editCancel, @NonNull Button editGameNumber, @NonNull ImageView isSelector, @NonNull View lineTop, @NonNull XListView2 listView, @NonNull ImageView lodingBackImage, @NonNull LinearLayout noneLayout, @NonNull Button setNetwork, @NonNull TextView textView3) {
        this.f37743b = rootView;
        this.f37744c = editAll;
        this.f37745d = editCancel;
        this.f37746e = editGameNumber;
        this.f37747f = isSelector;
        this.f37748g = lineTop;
        this.f37749h = listView;
        this.f37750i = lodingBackImage;
        this.f37751j = noneLayout;
        this.f37752k = setNetwork;
        this.f37753l = textView3;
    }

    @NonNull
    public static e3 bind(@NonNull View rootView) {
        int i10 = R.id.editAll;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.editAll);
        if (textView != null) {
            i10 = R.id.editCancel;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.editCancel);
            if (textView2 != null) {
                i10 = R.id.editGameNumber;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.editGameNumber);
                if (button != null) {
                    i10 = R.id.isSelector;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.isSelector);
                    if (imageView != null) {
                        i10 = R.id.lineTop;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.lineTop);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.listView;
                            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.listView);
                            if (xListView2 != null) {
                                i10 = R.id.lodingBackImage;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
                                if (imageView2 != null) {
                                    i10 = R.id.noneLayout;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.noneLayout);
                                    if (linearLayout != null) {
                                        i10 = R.id.setNetwork;
                                        Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.setNetwork);
                                        if (button2 != null) {
                                            i10 = R.id.textView3;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                                            if (textView3 != null) {
                                                return new e3((LinearLayout) rootView, textView, textView2, button, imageView, viewFindChildViewById, xListView2, imageView2, linearLayout, button2, textView3);
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
    public static e3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37743b;
    }

    @NonNull
    public static e3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_mygame_edit, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
