package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class k90 implements ViewBinding {

    @NonNull
    public final TextView A;

    @NonNull
    public final TextView B;

    @NonNull
    public final Group C;

    @NonNull
    public final TextView D;

    @NonNull
    public final View E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40663h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final FlowLayout f40664i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40665j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40666k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40667l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ScrollView f40668m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final Group f40669n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f40670o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f40671p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f40672q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f40673r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f40674s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f40675t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f40676u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f40677v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f40678w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f40679x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f40680y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f40681z;

    private k90(@NonNull LinearLayout rootView, @NonNull TextView appSize, @NonNull TextView beian, @NonNull ImageView close, @NonNull TextView date, @NonNull TextView desc, @NonNull TextView downloadCount, @NonNull FlowLayout flowLayout, @NonNull TextView gameFrom, @NonNull TextView permission, @NonNull TextView privacy, @NonNull ScrollView scrollView, @NonNull Group sourceGroup, @NonNull TextView textView101, @NonNull TextView textView103, @NonNull TextView textView104, @NonNull TextView textView108, @NonNull TextView textView110, @NonNull TextView textView112, @NonNull TextView textView114, @NonNull TextView textView93, @NonNull TextView textViewBeian, @NonNull TextView textViewPrivacy, @NonNull TextView updateMessage, @NonNull TextView updateMessageTitle, @NonNull TextView uploadGame, @NonNull TextView vendor, @NonNull Group vendorGroup, @NonNull TextView versionName, @NonNull View view17) {
        this.f40657b = rootView;
        this.f40658c = appSize;
        this.f40659d = beian;
        this.f40660e = close;
        this.f40661f = date;
        this.f40662g = desc;
        this.f40663h = downloadCount;
        this.f40664i = flowLayout;
        this.f40665j = gameFrom;
        this.f40666k = permission;
        this.f40667l = privacy;
        this.f40668m = scrollView;
        this.f40669n = sourceGroup;
        this.f40670o = textView101;
        this.f40671p = textView103;
        this.f40672q = textView104;
        this.f40673r = textView108;
        this.f40674s = textView110;
        this.f40675t = textView112;
        this.f40676u = textView114;
        this.f40677v = textView93;
        this.f40678w = textViewBeian;
        this.f40679x = textViewPrivacy;
        this.f40680y = updateMessage;
        this.f40681z = updateMessageTitle;
        this.A = uploadGame;
        this.B = vendor;
        this.C = vendorGroup;
        this.D = versionName;
        this.E = view17;
    }

    @NonNull
    public static k90 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.beian;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.beian);
            if (textView2 != null) {
                i10 = R.id.close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
                if (imageView != null) {
                    i10 = R.id.date;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.date);
                    if (textView3 != null) {
                        i10 = R.id.desc;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.desc);
                        if (textView4 != null) {
                            i10 = R.id.downloadCount;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downloadCount);
                            if (textView5 != null) {
                                i10 = R.id.flowLayout;
                                FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.flowLayout);
                                if (flowLayout != null) {
                                    i10 = R.id.gameFrom;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameFrom);
                                    if (textView6 != null) {
                                        i10 = R.id.permission;
                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.permission);
                                        if (textView7 != null) {
                                            i10 = R.id.privacy;
                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.privacy);
                                            if (textView8 != null) {
                                                i10 = R.id.scrollView;
                                                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                                                if (scrollView != null) {
                                                    i10 = R.id.sourceGroup;
                                                    Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.sourceGroup);
                                                    if (group != null) {
                                                        i10 = R.id.textView101;
                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView101);
                                                        if (textView9 != null) {
                                                            i10 = R.id.textView103;
                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView103);
                                                            if (textView10 != null) {
                                                                i10 = R.id.textView104;
                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView104);
                                                                if (textView11 != null) {
                                                                    i10 = R.id.textView108;
                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView108);
                                                                    if (textView12 != null) {
                                                                        i10 = R.id.textView110;
                                                                        TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView110);
                                                                        if (textView13 != null) {
                                                                            i10 = R.id.textView112;
                                                                            TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView112);
                                                                            if (textView14 != null) {
                                                                                i10 = R.id.textView114;
                                                                                TextView textView15 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView114);
                                                                                if (textView15 != null) {
                                                                                    i10 = R.id.textView93;
                                                                                    TextView textView16 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView93);
                                                                                    if (textView16 != null) {
                                                                                        i10 = R.id.textViewBeian;
                                                                                        TextView textView17 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewBeian);
                                                                                        if (textView17 != null) {
                                                                                            i10 = R.id.textViewPrivacy;
                                                                                            TextView textView18 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewPrivacy);
                                                                                            if (textView18 != null) {
                                                                                                i10 = R.id.updateMessage;
                                                                                                TextView textView19 = (TextView) ViewBindings.findChildViewById(rootView, R.id.updateMessage);
                                                                                                if (textView19 != null) {
                                                                                                    i10 = R.id.updateMessageTitle;
                                                                                                    TextView textView20 = (TextView) ViewBindings.findChildViewById(rootView, R.id.updateMessageTitle);
                                                                                                    if (textView20 != null) {
                                                                                                        i10 = R.id.uploadGame;
                                                                                                        TextView textView21 = (TextView) ViewBindings.findChildViewById(rootView, R.id.uploadGame);
                                                                                                        if (textView21 != null) {
                                                                                                            i10 = R.id.vendor;
                                                                                                            TextView textView22 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vendor);
                                                                                                            if (textView22 != null) {
                                                                                                                i10 = R.id.vendorGroup;
                                                                                                                Group group2 = (Group) ViewBindings.findChildViewById(rootView, R.id.vendorGroup);
                                                                                                                if (group2 != null) {
                                                                                                                    i10 = R.id.versionName;
                                                                                                                    TextView textView23 = (TextView) ViewBindings.findChildViewById(rootView, R.id.versionName);
                                                                                                                    if (textView23 != null) {
                                                                                                                        i10 = R.id.view17;
                                                                                                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view17);
                                                                                                                        if (viewFindChildViewById != null) {
                                                                                                                            return new k90((LinearLayout) rootView, textView, textView2, imageView, textView3, textView4, textView5, flowLayout, textView6, textView7, textView8, scrollView, group, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, textView22, group2, textView23, viewFindChildViewById);
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
    public static k90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40657b;
    }

    @NonNull
    public static k90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_game_detail_sheet_profile, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
