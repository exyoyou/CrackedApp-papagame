package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;

/* JADX INFO: loaded from: classes4.dex */
public final class gb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f38777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MStarBar f38778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38779f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final CheckBox f38780g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f38782i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38783j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f38784k;

    private gb(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull EditText commentcreatEt, @NonNull MStarBar mstarBar, @NonNull TextView mstarBarTx, @NonNull CheckBox phoneModleCB, @NonNull LinearLayout starLl, @NonNull TextView textTopRight, @NonNull TextView titleTextview, @NonNull TextView tvTips) {
        this.f38775b = rootView;
        this.f38776c = backImage;
        this.f38777d = commentcreatEt;
        this.f38778e = mstarBar;
        this.f38779f = mstarBarTx;
        this.f38780g = phoneModleCB;
        this.f38781h = starLl;
        this.f38782i = textTopRight;
        this.f38783j = titleTextview;
        this.f38784k = tvTips;
    }

    @NonNull
    public static gb bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.commentcreat_et;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.commentcreat_et);
            if (editText != null) {
                i10 = R.id.mstarBar;
                MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.mstarBar);
                if (mStarBar != null) {
                    i10 = R.id.mstarBarTx;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.mstarBarTx);
                    if (textView != null) {
                        i10 = R.id.phoneModleCB;
                        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.phoneModleCB);
                        if (checkBox != null) {
                            i10 = R.id.starLl;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.starLl);
                            if (linearLayout != null) {
                                i10 = R.id.textTopRight;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textTopRight);
                                if (textView2 != null) {
                                    i10 = R.id.title_textview;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                    if (textView3 != null) {
                                        i10 = R.id.tvTips;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTips);
                                        if (textView4 != null) {
                                            return new gb((LinearLayout) rootView, imageView, editText, mStarBar, textView, checkBox, linearLayout, textView2, textView3, textView4);
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
    public static gb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38775b;
    }

    @NonNull
    public static gb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_creat_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
