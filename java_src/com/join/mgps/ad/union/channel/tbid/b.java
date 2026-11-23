package com.join.mgps.ad.union.channel.tbid;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class b implements WMNativeAdRender<WMNativeAdData> {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f58447t = "b";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f58448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<Integer, View> f58449b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SimpleDraweeView f58450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f58451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RelativeLayout f58452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f58453f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f58454g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f58455h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Button f58456i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Button f58457j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Button f58458k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private FrameLayout f58459l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ImageView f58460m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private LinearLayout f58461n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ImageView f58462o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ImageView f58463p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ImageView f58464q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextView f58465r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Button f58466s;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ WMNativeAdData f58467b;

        a(final WMNativeAdData val$adData) {
            this.f58467b = val$adData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (v10 == b.this.f58456i) {
                this.f58467b.startVideo();
            } else if (v10 == b.this.f58457j) {
                this.f58467b.pauseVideo();
            } else if (v10 == b.this.f58458k) {
                this.f58467b.stopVideo();
            }
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdRender
    public View createView(Context context, int adPatternType) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("---------createView----------");
        sb2.append(adPatternType);
        this.f58448a = context;
        View viewInflate = this.f58449b.get(Integer.valueOf(adPatternType));
        if (viewInflate == null) {
            viewInflate = adPatternType != 1 ? LayoutInflater.from(context).inflate(R.layout.native_ad_item_normal, (ViewGroup) null) : LayoutInflater.from(context).inflate(R.layout.native_ad_item_small, (ViewGroup) null);
            this.f58449b.put(Integer.valueOf(adPatternType), viewInflate);
        }
        if (viewInflate.getParent() != null) {
            ((ViewGroup) viewInflate.getParent()).removeView(viewInflate);
        }
        return viewInflate;
    }

    public void d(String ctaText) {
        if (TextUtils.isEmpty(ctaText)) {
            this.f58466s.setVisibility(4);
        } else {
            this.f58466s.setText(ctaText);
            this.f58466s.setVisibility(0);
        }
    }

    @Override // com.windmill.sdk.natives.WMNativeAdRender
    public void renderAdView(View view, final WMNativeAdData adData) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("renderAdView:");
        sb2.append(adData.getTitle());
        this.f58450c = (SimpleDraweeView) view.findViewById(R.id.img_logo);
        this.f58451d = (ImageView) view.findViewById(R.id.channel_ad_logo);
        this.f58452e = (RelativeLayout) view.findViewById(R.id.channel_ad_choice);
        this.f58453f = (ImageView) view.findViewById(R.id.iv_dislike);
        this.f58454g = (TextView) view.findViewById(R.id.text_desc);
        this.f58455h = view.findViewById(R.id.video_btn_container);
        this.f58456i = (Button) view.findViewById(R.id.btn_play);
        this.f58457j = (Button) view.findViewById(R.id.btn_pause);
        this.f58458k = (Button) view.findViewById(R.id.btn_stop);
        this.f58459l = (FrameLayout) view.findViewById(R.id.media_layout);
        this.f58460m = (ImageView) view.findViewById(R.id.img_poster);
        this.f58461n = (LinearLayout) view.findViewById(R.id.native_3img_ad_container);
        this.f58462o = (ImageView) view.findViewById(R.id.img_1);
        this.f58463p = (ImageView) view.findViewById(R.id.img_2);
        this.f58464q = (ImageView) view.findViewById(R.id.img_3);
        this.f58465r = (TextView) view.findViewById(R.id.text_title);
        this.f58466s = (Button) view.findViewById(R.id.btn_cta);
        if (!TextUtils.isEmpty(adData.getIconUrl())) {
            this.f58450c.setVisibility(0);
            l.h(this.f58450c, adData.getIconUrl());
        }
        if (TextUtils.isEmpty(adData.getTitle())) {
            this.f58465r.setText("点开有惊喜");
        } else {
            this.f58465r.setText(adData.getTitle());
        }
        if (TextUtils.isEmpty(adData.getDesc())) {
            this.f58454g.setText("听说点开它的人都交了好运!");
        } else {
            this.f58454g.setText(adData.getDesc());
        }
        if (adData.getAdLogo() != null) {
            this.f58451d.setVisibility(0);
            this.f58451d.setImageBitmap(adData.getAdLogo());
        } else {
            this.f58451d.setVisibility(8);
        }
        if (adData.getAdChoice() != null) {
            this.f58452e.setVisibility(0);
            this.f58452e.removeAllViews();
            this.f58452e.addView(adData.getAdChoice());
        } else {
            this.f58452e.setVisibility(8);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(view);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.f58466s);
        ArrayList arrayList3 = new ArrayList();
        int adPatternType = adData.getAdPatternType();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("patternType:");
        sb3.append(adPatternType);
        if (adPatternType == 1 || adPatternType == 2) {
            this.f58460m.setVisibility(0);
            this.f58455h.setVisibility(8);
            this.f58461n.setVisibility(8);
            this.f58459l.setVisibility(8);
            arrayList.add(this.f58460m);
            arrayList3.add(this.f58460m);
        } else if (adPatternType == 3) {
            this.f58461n.setVisibility(0);
            this.f58460m.setVisibility(8);
            this.f58455h.setVisibility(8);
            this.f58459l.setVisibility(8);
            arrayList.add(this.f58461n);
            arrayList3.add(this.f58462o);
            arrayList3.add(this.f58463p);
            arrayList3.add(this.f58464q);
        }
        adData.bindViewForInteraction(this.f58448a, view, arrayList, arrayList2, this.f58453f);
        if (!arrayList3.isEmpty()) {
            adData.bindImageViews(this.f58448a, arrayList3, 0);
        } else if (adPatternType == 4) {
            this.f58460m.setVisibility(8);
            this.f58461n.setVisibility(8);
            this.f58459l.setVisibility(0);
            adData.bindMediaView(this.f58448a, this.f58459l);
            this.f58455h.setVisibility(0);
            a aVar = new a(adData);
            this.f58456i.setOnClickListener(aVar);
            this.f58457j.setOnClickListener(aVar);
            this.f58458k.setOnClickListener(aVar);
        }
        String cTAText = adData.getCTAText();
        StringBuilder sb4 = new StringBuilder();
        sb4.append("ctaText:");
        sb4.append(cTAText);
        d(cTAText);
    }
}
