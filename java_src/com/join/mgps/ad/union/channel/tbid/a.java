package com.join.mgps.ad.union.channel.tbid;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a implements WMNativeAdRender<WMNativeAdData> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f58436k = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f58437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<Integer, View> f58438b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f58439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FrameLayout f58440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f58441e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinearLayout f58442f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f58443g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f58444h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ImageView f58445i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f58446j;

    @Override // com.windmill.sdk.natives.WMNativeAdRender
    public View createView(Context context, int adPatternType) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("---------createView----------");
        sb2.append(adPatternType);
        this.f58437a = context;
        View viewInflate = this.f58438b.get(Integer.valueOf(adPatternType));
        if (viewInflate == null) {
            viewInflate = LayoutInflater.from(context).inflate(R.layout.native_ad_item_exit, (ViewGroup) null);
            this.f58438b.put(Integer.valueOf(adPatternType), viewInflate);
        }
        if (viewInflate.getParent() != null) {
            ((ViewGroup) viewInflate.getParent()).removeView(viewInflate);
        }
        return viewInflate;
    }

    @Override // com.windmill.sdk.natives.WMNativeAdRender
    public void renderAdView(View view, final WMNativeAdData adData) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("renderAdView:");
        sb2.append(adData.getTitle());
        this.f58439c = (TextView) view.findViewById(R.id.text_desc);
        this.f58440d = (FrameLayout) view.findViewById(R.id.media_layout);
        this.f58441e = (ImageView) view.findViewById(R.id.img_poster);
        this.f58442f = (LinearLayout) view.findViewById(R.id.native_3img_ad_container);
        this.f58443g = (ImageView) view.findViewById(R.id.img_1);
        this.f58444h = (ImageView) view.findViewById(R.id.img_2);
        this.f58445i = (ImageView) view.findViewById(R.id.img_3);
        this.f58446j = (TextView) view.findViewById(R.id.text_title);
        if (TextUtils.isEmpty(adData.getTitle())) {
            this.f58446j.setText("点开有惊喜");
        } else {
            this.f58446j.setText(adData.getTitle());
        }
        if (TextUtils.isEmpty(adData.getDesc())) {
            this.f58439c.setText("听说点开它的人都交了好运!");
        } else {
            this.f58439c.setText(adData.getDesc());
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(view);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int adPatternType = adData.getAdPatternType();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("patternType:");
        sb3.append(adPatternType);
        if (adPatternType == 1 || adPatternType == 2) {
            this.f58441e.setVisibility(0);
            this.f58442f.setVisibility(8);
            this.f58440d.setVisibility(8);
            arrayList.add(this.f58441e);
            arrayList3.add(this.f58441e);
        } else if (adPatternType == 3) {
            this.f58442f.setVisibility(0);
            this.f58441e.setVisibility(8);
            this.f58440d.setVisibility(8);
            arrayList.add(this.f58442f);
            arrayList3.add(this.f58443g);
            arrayList3.add(this.f58444h);
            arrayList3.add(this.f58445i);
        }
        adData.bindViewForInteraction(this.f58437a, view, arrayList, arrayList2, null);
        if (!arrayList3.isEmpty()) {
            adData.bindImageViews(this.f58437a, arrayList3, 0);
        } else if (adPatternType == 4) {
            this.f58441e.setVisibility(8);
            this.f58442f.setVisibility(8);
            this.f58440d.setVisibility(0);
            adData.bindMediaView(this.f58437a, this.f58440d);
        }
    }
}
