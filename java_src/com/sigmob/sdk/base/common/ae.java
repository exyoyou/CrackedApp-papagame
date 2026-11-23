package com.sigmob.sdk.base.common;

import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.Constants;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
class ae implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78909a = "RewardVideoViewAbilitySession";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f78911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78912d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f78910b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f78913e = 0;

    ae() {
    }

    private String a(int millis) {
        return millis == 0 ? "0" : String.valueOf(millis / 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i10, String str, BaseAdUnit baseAdUnit, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setVtime(b(this.f78910b));
            pointEntitySigmob.setSkip_show_time(b(this.f78912d));
            pointEntitySigmob.setCurrent_time(b(i10));
            pointEntitySigmob.setPlay_process(String.valueOf((((double) i10) * 1.0d) / ((double) b())));
            if (str.equals("start")) {
                pointEntitySigmob.setScene_id(baseAdUnit.getAd_scene_id());
                pointEntitySigmob.setScene_desc(baseAdUnit.getAd_scene_desc());
                pointEntitySigmob.setBid_token(baseAdUnit.getBid_token());
            }
            pointEntitySigmob.setPlay_time(a(i10));
            pointEntitySigmob.setSet_close_time(String.format(Locale.getDefault(), "%d", Integer.valueOf(this.f78913e)));
            pointEntitySigmob.setIs_truncation(a() ? "1" : "0");
            pointEntitySigmob.setIs_force(this.f78911c ? "1" : "0");
        }
    }

    private int b() {
        int i10 = this.f78913e;
        return (i10 <= 0 || i10 * 1000 >= this.f78910b) ? this.f78910b : i10 * 1000;
    }

    private void a(BaseAdUnit adUnit, int playHeadMillis, String sub, String number, String event) {
        a(adUnit, "play", playHeadMillis, sub);
        SigMacroCommon macroCommon = adUnit.getMacroCommon();
        macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, a(playHeadMillis));
        macroCommon.addMarcoKey(SigMacroCommon._PROGRESS_, number);
        com.sigmob.sdk.base.network.h.a(adUnit, event);
    }

    private String b(int millis) {
        return millis == 0 ? "0" : String.format(Locale.getDefault(), "%.2f", Float.valueOf(millis / 1000.0f));
    }

    private void a(final BaseAdUnit adUnit, final String event, final int playHeadMillis, String sub) {
        ad.a(event, sub, adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.n0
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f79208a.a(playHeadMillis, event, adUnit, obj);
            }
        });
    }

    private void b(BaseAdUnit adUnit, String event, int playHeadMillis) {
        a(adUnit, event, playHeadMillis, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(HashMap map, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            if (com.sigmob.sdk.base.utils.e.b(map)) {
                pointEntitySigmob.getOptions().putAll(map);
            }
        }
    }

    @Override // com.sigmob.sdk.base.common.u
    public boolean b(BaseAdUnit adUnit) {
        com.sigmob.sdk.base.network.h.a(adUnit, a.f78887u);
        a(adUnit, a.f78887u, b(), (String) null);
        return true;
    }

    private boolean a() {
        int i10 = this.f78913e;
        return i10 > 0 && i10 * 1000 < this.f78910b;
    }

    @Override // com.sigmob.sdk.base.common.u
    public boolean a(BaseAdUnit adUnit) {
        return true;
    }

    @Override // com.sigmob.sdk.base.common.u
    public boolean a(BaseAdUnit adUnit, int duration, int end_time) {
        this.f78910b = duration;
        this.f78913e = adUnit.getEndTime();
        adUnit.getMacroCommon().addMarcoKey(SigMacroCommon._VIDEOTIME_, a(this.f78910b));
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:82:0x012c  */
    @Override // com.sigmob.sdk.base.common.u
    public boolean a(BaseAdUnit adUnit, String event, int playheadMillis) {
        byte b10;
        String str;
        String str2;
        int iB;
        ClientMetadata clientMetadata;
        String str3;
        String str4;
        String str5;
        String str6;
        int iB2 = playheadMillis;
        try {
            switch (event) {
                case "closecard_show":
                    b10 = 2;
                    break;
                case "play_quarter":
                    b10 = BinaryMemcacheOpcodes.DELETEQ;
                    break;
                case "ad_motion_click":
                    b10 = 8;
                    break;
                case "show_skip":
                    b10 = 11;
                    break;
                case "finish":
                    b10 = 14;
                    break;
                case "fourElements_show":
                    b10 = 4;
                    break;
                case "reward":
                    b10 = 13;
                    break;
                case "unmute":
                    b10 = BinaryMemcacheOpcodes.SETQ;
                    break;
                case "click_skip":
                    b10 = BinaryMemcacheOpcodes.FLUSHQ;
                    break;
                case "complete":
                    b10 = 12;
                    break;
                case "closecard_close":
                    b10 = 3;
                    break;
                case "fourElements_close":
                    b10 = 5;
                    break;
                case "ad_video_start":
                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                    break;
                case "play_three_quarters":
                    b10 = BinaryMemcacheOpcodes.DECREMENTQ;
                    break;
                case "rotation":
                    b10 = BinaryMemcacheOpcodes.ADDQ;
                    break;
                case "mute":
                    b10 = 16;
                    break;
                case "show":
                    b10 = 6;
                    break;
                case "skip":
                    b10 = 1;
                    break;
                case "click":
                    b10 = 7;
                    break;
                case "start":
                    b10 = 0;
                    break;
                case "full_video_click":
                    b10 = 10;
                    break;
                case "play_two_quarters":
                    b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                    break;
                case "ad_vclose":
                    b10 = 15;
                    break;
                case "companion_click":
                    b10 = 9;
                    break;
                case "play_complete":
                    b10 = BinaryMemcacheOpcodes.QUITQ;
                    break;
                default:
                    b10 = -1;
                    break;
            }
            String str7 = "1";
            switch (b10) {
                case 0:
                    a(adUnit, event, iB2, (String) null);
                    SigMacroCommon macroCommon = adUnit.getMacroCommon();
                    macroCommon.addMarcoKey(SigMacroCommon._SETCLOSETIME_, String.valueOf(this.f78913e));
                    macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, "0");
                    macroCommon.addMarcoKey(SigMacroCommon._VIDEOTIME_, a(this.f78910b));
                    macroCommon.addMarcoKey(SigMacroCommon._COMPLETED_, "0");
                    macroCommon.addMarcoKey(SigMacroCommon._PLAYFIRSTFRAME_, "0");
                    macroCommon.addMarcoKey(SigMacroCommon._IS_TRUNCATION_, a() ? "1" : "0");
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
                case 1:
                    b(adUnit, event, playheadMillis);
                    SigMacroCommon macroCommon2 = adUnit.getMacroCommon();
                    macroCommon2.addMarcoKey(SigMacroCommon._ENDTIME_, a(iB2));
                    if (this.f78910b <= 0 || iB2 <= 0) {
                        macroCommon2.addMarcoKey(SigMacroCommon._PROGRESS_, "0");
                    } else {
                        macroCommon2.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf((iB2 * 100) / b()));
                    }
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
                case 2:
                    str = PointCategory.CLOSECARD;
                    str2 = "show";
                    iB = iB2 == 0 ? b() : iB2;
                    a(adUnit, str, iB, str2);
                    break;
                case 3:
                    str2 = "close";
                    iB = iB2 == 0 ? b() : iB2;
                    str = PointCategory.CLOSECARD;
                    a(adUnit, str, iB, str2);
                    break;
                case 4:
                    str = PointCategory.FOURELEMENTS;
                    iB = iB2 == 0 ? b() : iB2;
                    str2 = "show";
                    a(adUnit, str, iB, str2);
                    break;
                case 5:
                    iB = iB2 == 0 ? b() : iB2;
                    str2 = "close";
                    str = PointCategory.FOURELEMENTS;
                    a(adUnit, str, iB, str2);
                    break;
                case 6:
                    int iB3 = iB2 == 0 ? b() : iB2;
                    a(adUnit, "endcard", iB3, event);
                    SigMacroCommon macroCommon3 = adUnit.getMacroCommon();
                    macroCommon3.addMarcoKey(SigMacroCommon._ENDTIME_, a(iB3));
                    if (this.f78910b <= 0 || iB3 <= 0) {
                        macroCommon3.addMarcoKey(SigMacroCommon._PROGRESS_, "0");
                    } else {
                        macroCommon3.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf((iB3 * 100) / b()));
                    }
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
                case 7:
                    if (iB2 == 0) {
                        iB2 = b();
                    }
                    String str8 = adUnit.getClickCommon().is_final_click ? "1" : "0";
                    SigMacroCommon macroCommon4 = adUnit.getMacroCommon();
                    macroCommon4.addMarcoKey("_AX_", "0");
                    macroCommon4.addMarcoKey("_AY_", "0");
                    ClientMetadata clientMetadata2 = ClientMetadata.getInstance();
                    macroCommon4.addMarcoKey("_AW_", String.valueOf(clientMetadata2.getDeviceScreenRealWidthDip()));
                    macroCommon4.addMarcoKey("_AH_", String.valueOf(clientMetadata2.getDeviceScreenRealHeightDip()));
                    if (adUnit.getTemplateId() > 0) {
                        macroCommon4.addMarcoKey(SigMacroCommon._TEMPLATE_, String.valueOf(adUnit.getTemplateId()));
                    }
                    if (com.sigmob.sdk.base.utils.t.b(adUnit.getClickCommon().click_area)) {
                        macroCommon4.addMarcoKey(SigMacroCommon._CLICKAREA_, String.valueOf(adUnit.getClickCommon().click_area));
                    }
                    if (com.sigmob.sdk.base.utils.t.b(adUnit.getClickCommon().click_scene)) {
                        macroCommon4.addMarcoKey(SigMacroCommon._CLICKSCENE_, String.valueOf(adUnit.getClickCommon().click_scene));
                    }
                    macroCommon4.addMarcoKey(SigMacroCommon._FINALCLICK_, str8);
                    macroCommon4.addMarcoKey(SigMacroCommon._ENDTIME_, a(iB2));
                    if (this.f78910b <= 0 || iB2 <= 0) {
                        macroCommon4.addMarcoKey(SigMacroCommon._PROGRESS_, "0");
                    } else {
                        macroCommon4.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf((iB2 * 100) / b()));
                    }
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
                case 8:
                    if (iB2 == 0) {
                        iB2 = b();
                    }
                    ClickCommon clickCommon = adUnit.getClickCommon();
                    String str9 = clickCommon.is_final_click ? "1" : "0";
                    SigMacroCommon macroCommon5 = adUnit.getMacroCommon();
                    macroCommon5.addMarcoKey("_AX_", "0");
                    macroCommon5.addMarcoKey("_AY_", "0");
                    ClientMetadata clientMetadata3 = ClientMetadata.getInstance();
                    macroCommon5.addMarcoKey("_AW_", String.valueOf(clientMetadata3.getDeviceScreenRealWidthDip()));
                    macroCommon5.addMarcoKey("_AH_", String.valueOf(clientMetadata3.getDeviceScreenRealHeightDip()));
                    if ("5".equals(clickCommon.sld)) {
                        macroCommon5.updateClickMarco(SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY);
                        macroCommon5.addMarcoKey(SigMacroCommon._SLD_, clickCommon.sld);
                        macroCommon5.addMarcoKey("_TURNX_", clickCommon.turn_x);
                        macroCommon5.addMarcoKey("_TURNY_", clickCommon.turn_y);
                        macroCommon5.addMarcoKey("_TURNZ_", clickCommon.turn_z);
                        macroCommon5.addMarcoKey("_TURNTIME_", clickCommon.turn_time);
                        clientMetadata = clientMetadata3;
                    } else {
                        clientMetadata = clientMetadata3;
                        if ("2".equals(clickCommon.sld)) {
                            macroCommon5.updateClickMarco(SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY, SigMacroCommon.DEFAULT_XY);
                            macroCommon5.addMarcoKey(SigMacroCommon._SLD_, clickCommon.sld);
                            macroCommon5.addMarcoKey("_XMAXACC_", clickCommon.x_max_acc);
                            macroCommon5.addMarcoKey("_YMAXACC_", clickCommon.y_max_acc);
                            macroCommon5.addMarcoKey("_ZMAXACC_", clickCommon.z_max_acc);
                        } else {
                            macroCommon5.updateClickMarco(clickCommon.down, clickCommon.up);
                            macroCommon5.addMarcoKey(SigMacroCommon._SLD_, "0");
                        }
                    }
                    if (adUnit.getTemplateId() > 0) {
                        macroCommon5.addMarcoKey(SigMacroCommon._TEMPLATE_, String.valueOf(adUnit.getTemplateId()));
                    }
                    if (com.sigmob.sdk.base.utils.t.b(clickCommon.click_area)) {
                        macroCommon5.addMarcoKey(SigMacroCommon._CLICKAREA_, String.valueOf(clickCommon.click_area));
                    }
                    if (com.sigmob.sdk.base.utils.t.b(clickCommon.click_scene)) {
                        macroCommon5.addMarcoKey(SigMacroCommon._CLICKSCENE_, String.valueOf(clickCommon.click_scene));
                    }
                    macroCommon5.addMarcoKey(SigMacroCommon._FINALCLICK_, str9);
                    macroCommon5.addMarcoKey(SigMacroCommon._ENDTIME_, a(iB2));
                    if (this.f78910b <= 0 || iB2 <= 0) {
                        macroCommon5.addMarcoKey(SigMacroCommon._PROGRESS_, "0");
                    } else {
                        macroCommon5.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf((iB2 * 100) / b()));
                    }
                    com.sigmob.sdk.base.network.h.a(adUnit, "click");
                    final HashMap map = new HashMap();
                    map.put("template_id", clickCommon.template_id);
                    map.put("sld", clickCommon.sld);
                    map.put("adarea_x", "0");
                    map.put("adarea_y", "0");
                    map.put("adarea_w", String.valueOf(clientMetadata.getDeviceScreenRealWidthDip()));
                    map.put("adarea_h", String.valueOf(clientMetadata.getDeviceScreenRealHeightDip()));
                    if (!"5".equals(clickCommon.sld)) {
                        if ("2".equals(clickCommon.sld)) {
                            map.put("x_max_acc", clickCommon.x_max_acc);
                            map.put("y_max_acc", clickCommon.y_max_acc);
                            str3 = "z_max_acc";
                            str4 = clickCommon.z_max_acc;
                        }
                        map.put(ClickCommon.CLICK_AREA, clickCommon.click_area);
                        map.put("click_scene", clickCommon.click_scene);
                        map.put("cwidth", String.valueOf(clientMetadata.getDeviceScreenRealWidthDip()));
                        map.put("cheight", String.valueOf(clientMetadata.getDeviceScreenRealHeightDip()));
                        map.put("is_final_click", str9);
                        map.put("coordinate", macroCommon5.getCoordinate());
                        ad.a(clickCommon.click_scene, "click", adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.o0
                            @Override // com.sigmob.sdk.base.common.ad.a
                            public final void onAddExtra(Object obj) {
                                ae.a(map, obj);
                            }
                        });
                    } else {
                        map.put("turn_x", clickCommon.turn_x);
                        map.put("turn_y", clickCommon.turn_y);
                        map.put("turn_z", clickCommon.turn_z);
                        str3 = "turn_time";
                        str4 = clickCommon.turn_time;
                    }
                    map.put(str3, str4);
                    map.put(ClickCommon.CLICK_AREA, clickCommon.click_area);
                    map.put("click_scene", clickCommon.click_scene);
                    map.put("cwidth", String.valueOf(clientMetadata.getDeviceScreenRealWidthDip()));
                    map.put("cheight", String.valueOf(clientMetadata.getDeviceScreenRealHeightDip()));
                    map.put("is_final_click", str9);
                    map.put("coordinate", macroCommon5.getCoordinate());
                    ad.a(clickCommon.click_scene, "click", adUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.o0
                        @Override // com.sigmob.sdk.base.common.ad.a
                        public final void onAddExtra(Object obj) {
                            ae.a(map, obj);
                        }
                    });
                    break;
                case 9:
                    if (iB2 == 0) {
                        iB2 = b();
                    }
                    String str10 = adUnit.getClickCommon().is_final_click ? "1" : "0";
                    SigMacroCommon macroCommon6 = adUnit.getMacroCommon();
                    macroCommon6.addMarcoKey("_AX_", "0");
                    macroCommon6.addMarcoKey("_AY_", "0");
                    ClientMetadata clientMetadata4 = ClientMetadata.getInstance();
                    macroCommon6.addMarcoKey("_AW_", String.valueOf(clientMetadata4.getDeviceScreenRealWidthDip()));
                    macroCommon6.addMarcoKey("_AH_", String.valueOf(clientMetadata4.getDeviceScreenRealHeightDip()));
                    if (adUnit.getTemplateId() > 0) {
                        macroCommon6.addMarcoKey(SigMacroCommon._TEMPLATE_, String.valueOf(adUnit.getTemplateId()));
                    }
                    if (com.sigmob.sdk.base.utils.t.b(adUnit.getClickCommon().click_area)) {
                        macroCommon6.addMarcoKey(SigMacroCommon._CLICKAREA_, String.valueOf(adUnit.getClickCommon().click_area));
                    }
                    if (com.sigmob.sdk.base.utils.t.b(adUnit.getClickCommon().click_scene)) {
                        macroCommon6.addMarcoKey(SigMacroCommon._CLICKSCENE_, String.valueOf(adUnit.getClickCommon().click_scene));
                    }
                    macroCommon6.addMarcoKey(SigMacroCommon._FINALCLICK_, str10);
                    macroCommon6.addMarcoKey(SigMacroCommon._ENDTIME_, a(iB2));
                    if (this.f78910b <= 0 || iB2 <= 0) {
                        macroCommon6.addMarcoKey(SigMacroCommon._PROGRESS_, "0");
                    } else {
                        macroCommon6.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf((iB2 * 100) / b()));
                    }
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
                case 10:
                    int iB4 = iB2 == 0 ? b() : iB2;
                    SigMacroCommon macroCommon7 = adUnit.getMacroCommon();
                    if (!adUnit.getClickCommon().is_final_click) {
                        str7 = "0";
                    }
                    macroCommon7.addMarcoKey("_AX_", "0");
                    macroCommon7.addMarcoKey("_AY_", "0");
                    ClientMetadata clientMetadata5 = ClientMetadata.getInstance();
                    macroCommon7.addMarcoKey("_AW_", String.valueOf(clientMetadata5.getDeviceScreenRealWidthDip()));
                    macroCommon7.addMarcoKey("_AH_", String.valueOf(clientMetadata5.getDeviceScreenRealHeightDip()));
                    if (adUnit.getTemplateId() > 0) {
                        macroCommon7.addMarcoKey(SigMacroCommon._TEMPLATE_, String.valueOf(adUnit.getTemplateId()));
                    }
                    if (com.sigmob.sdk.base.utils.t.b(adUnit.getClickCommon().click_area)) {
                        macroCommon7.addMarcoKey(SigMacroCommon._CLICKAREA_, String.valueOf(adUnit.getClickCommon().click_area));
                    }
                    if (com.sigmob.sdk.base.utils.t.b(adUnit.getClickCommon().click_scene)) {
                        macroCommon7.addMarcoKey(SigMacroCommon._CLICKSCENE_, String.valueOf(adUnit.getClickCommon().click_scene));
                    }
                    macroCommon7.addMarcoKey(SigMacroCommon._FINALCLICK_, str7);
                    macroCommon7.addMarcoKey(SigMacroCommon._ENDTIME_, a(iB4));
                    if (this.f78910b <= 0 || iB4 <= 0) {
                        macroCommon7.addMarcoKey(SigMacroCommon._PROGRESS_, "0");
                    } else {
                        macroCommon7.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf((iB4 * 100) / b()));
                    }
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
                case 11:
                    SigMacroCommon macroCommon8 = adUnit.getMacroCommon();
                    macroCommon8.addMarcoKey(SigMacroCommon._SHOWSKIPTIME_, a(iB2));
                    if (this.f78910b <= 0 || iB2 <= 0) {
                        macroCommon8.addMarcoKey(SigMacroCommon._PROGRESS_, "0");
                    } else {
                        macroCommon8.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf((iB2 * 100) / b()));
                    }
                    macroCommon8.addMarcoKey(SigMacroCommon._ENDTIME_, a(iB2));
                    macroCommon8.addMarcoKey(SigMacroCommon._VIDEOTIME_, a(this.f78910b));
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
                case 12:
                    int iB5 = iB2 == 0 ? b() : iB2;
                    b(adUnit, event, iB5);
                    SigMacroCommon macroCommon9 = adUnit.getMacroCommon();
                    macroCommon9.addMarcoKey(SigMacroCommon._ENDTIME_, a(iB5));
                    macroCommon9.addMarcoKey(SigMacroCommon._PROGRESS_, Constants.ERRORCODE_SDK_PREFIX);
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
                case 13:
                    b(adUnit, event, iB2 == 0 ? b() : iB2);
                    break;
                case 14:
                    int iB6 = iB2 == 0 ? b() : iB2;
                    b(adUnit, event, iB6);
                    SigMacroCommon macroCommon10 = adUnit.getMacroCommon();
                    if (this.f78910b <= 0 || iB6 <= 0) {
                        macroCommon10.addMarcoKey(SigMacroCommon._PROGRESS_, "0");
                    } else {
                        macroCommon10.addMarcoKey(SigMacroCommon._PROGRESS_, String.valueOf((iB6 * 100) / b()));
                    }
                    macroCommon10.addMarcoKey(SigMacroCommon._COMPLETED_, "1");
                    macroCommon10.addMarcoKey(SigMacroCommon._PLAYLASTFRAME_, "1");
                    macroCommon10.addMarcoKey(SigMacroCommon._ENDTIME_, a(iB6));
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
                case 15:
                    a(adUnit, PointCategory.VCLOSE, iB2, (String) null);
                    break;
                case 16:
                    a(adUnit, "silent", iB2, "1");
                    break;
                case 17:
                    a(adUnit, "silent", iB2, "0");
                    break;
                case 18:
                    ClientMetadata clientMetadata6 = ClientMetadata.getInstance();
                    if (com.sigmob.sdk.base.utils.w.b(clientMetadata6)) {
                        a(adUnit, PointCategory.SCREENSWITCH, iB2, clientMetadata6.getRotation());
                    }
                    break;
                case 19:
                    a(adUnit, "play", iB2, "0");
                    break;
                case 20:
                    str5 = "0.25";
                    str6 = "25";
                    a(adUnit, playheadMillis, str5, str6, event);
                    break;
                case 21:
                    str5 = "0.50";
                    str6 = "50";
                    a(adUnit, playheadMillis, str5, str6, event);
                    break;
                case 22:
                    str5 = "0.75";
                    str6 = "75";
                    a(adUnit, playheadMillis, str5, str6, event);
                    break;
                case 23:
                    str5 = "0.85";
                    str6 = "85";
                    a(adUnit, playheadMillis, str5, str6, event);
                    break;
                case 24:
                    b(adUnit, event, playheadMillis);
                    break;
                default:
                    b(adUnit, event, playheadMillis);
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    break;
            }
        } catch (Throwable th) {
            SigmobLog.e("RewardVideoViewAbilitySessionrecordDisplayEvent: error = " + th.getMessage());
            return true;
        }
        return true;
    }

    @Override // com.sigmob.sdk.base.common.u
    public boolean a(BaseAdUnit adUnit, boolean isForceShow, int playHeadMillis) {
        this.f78911c = isForceShow;
        this.f78912d = playHeadMillis;
        return true;
    }
}
