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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bs0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36558f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36559g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f36560h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f36561i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f36562j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f36563k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f36564l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f36565m;

    private bs0(@NonNull LinearLayout rootView, @NonNull TextView addShortcut, @NonNull TextView cancel, @NonNull TextView delete, @NonNull TextView deleteArchieve, @NonNull TextView detail, @NonNull View line, @NonNull View lineDeleteArchieve, @NonNull View lineDeleteGame, @NonNull View lineDetail, @NonNull TextView tvStandMode, @NonNull View vLine1) {
        this.f36554b = rootView;
        this.f36555c = addShortcut;
        this.f36556d = cancel;
        this.f36557e = delete;
        this.f36558f = deleteArchieve;
        this.f36559g = detail;
        this.f36560h = line;
        this.f36561i = lineDeleteArchieve;
        this.f36562j = lineDeleteGame;
        this.f36563k = lineDetail;
        this.f36564l = tvStandMode;
        this.f36565m = vLine1;
    }

    @NonNull
    public static bs0 bind(@NonNull View rootView) {
        int i10 = R.id.addShortcut;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.addShortcut);
        if (textView != null) {
            i10 = R.id.cancel;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancel);
            if (textView2 != null) {
                i10 = R.id.delete;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.delete);
                if (textView3 != null) {
                    i10 = R.id.deleteArchieve;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.deleteArchieve);
                    if (textView4 != null) {
                        i10 = R.id.detail;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.detail);
                        if (textView5 != null) {
                            i10 = R.id.line;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.lineDeleteArchieve;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.lineDeleteArchieve);
                                if (viewFindChildViewById2 != null) {
                                    i10 = R.id.lineDeleteGame;
                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.lineDeleteGame);
                                    if (viewFindChildViewById3 != null) {
                                        i10 = R.id.lineDetail;
                                        View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.lineDetail);
                                        if (viewFindChildViewById4 != null) {
                                            i10 = R.id.tv_stand_mode;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_stand_mode);
                                            if (textView6 != null) {
                                                i10 = R.id.v_line_1;
                                                View viewFindChildViewById5 = ViewBindings.findChildViewById(rootView, R.id.v_line_1);
                                                if (viewFindChildViewById5 != null) {
                                                    return new bs0((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4, textView6, viewFindChildViewById5);
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
    public static bs0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36554b;
    }

    @NonNull
    public static bs0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_my_game_operate, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
