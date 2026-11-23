package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class da implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f37336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37339f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37340g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37341h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f37342i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37343j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f37344k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f37345l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f37346m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f37347n;

    private da(@NonNull LinearLayout rootView, @NonNull Button deletbutn, @NonNull LinearLayout gameHostory, @NonNull TextView gameHostoryNumber, @NonNull LinearLayout gameKeySet, @NonNull TextView gameKeySetNumber, @NonNull LinearLayout gameList, @NonNull TextView gamelistnumber, @NonNull TextView phoneType, @NonNull Button recoder, @NonNull TextView textView, @NonNull TextView textView3, @NonNull TextView timeText) {
        this.f37335b = rootView;
        this.f37336c = deletbutn;
        this.f37337d = gameHostory;
        this.f37338e = gameHostoryNumber;
        this.f37339f = gameKeySet;
        this.f37340g = gameKeySetNumber;
        this.f37341h = gameList;
        this.f37342i = gamelistnumber;
        this.f37343j = phoneType;
        this.f37344k = recoder;
        this.f37345l = textView;
        this.f37346m = textView3;
        this.f37347n = timeText;
    }

    @NonNull
    public static da bind(@NonNull View rootView) {
        int i10 = R.id.deletbutn;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.deletbutn);
        if (button != null) {
            i10 = R.id.gameHostory;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameHostory);
            if (linearLayout != null) {
                i10 = R.id.gameHostoryNumber;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameHostoryNumber);
                if (textView != null) {
                    i10 = R.id.gameKeySet;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameKeySet);
                    if (linearLayout2 != null) {
                        i10 = R.id.gameKeySetNumber;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameKeySetNumber);
                        if (textView2 != null) {
                            i10 = R.id.gameList;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gameList);
                            if (linearLayout3 != null) {
                                i10 = R.id.gamelistnumber;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gamelistnumber);
                                if (textView3 != null) {
                                    i10 = R.id.phoneType;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.phoneType);
                                    if (textView4 != null) {
                                        i10 = R.id.recoder;
                                        Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.recoder);
                                        if (button2 != null) {
                                            i10 = R.id.textView;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                            if (textView5 != null) {
                                                i10 = R.id.textView3;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView3);
                                                if (textView6 != null) {
                                                    i10 = R.id.timeText;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.timeText);
                                                    if (textView7 != null) {
                                                        return new da((LinearLayout) rootView, button, linearLayout, textView, linearLayout2, textView2, linearLayout3, textView3, textView4, button2, textView5, textView6, textView7);
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
    public static da inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37335b;
    }

    @NonNull
    public static da inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloud_backups_detial_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
