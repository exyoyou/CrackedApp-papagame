package com.sigmob.sdk.newInterstitial;

import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.mta.PointCategory;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class b extends com.sigmob.sdk.base.common.l {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:61:0x00d5  */
    @Override // com.sigmob.sdk.base.common.u
    public boolean a(BaseAdUnit adUnit, String event, int currentPosition) {
        byte b10;
        String str;
        String str2;
        String str3 = event;
        try {
            switch (event.hashCode()) {
                case -2050793311:
                    if (!str3.equals(com.sigmob.sdk.base.common.a.f78877k)) {
                        b10 = -1;
                    } else {
                        b10 = 11;
                    }
                    break;
                case -1903355519:
                    if (!str3.equals("show_skip")) {
                        b10 = -1;
                    } else {
                        b10 = 4;
                    }
                    break;
                case -1618089666:
                    if (!str3.equals("video_link")) {
                        b10 = -1;
                    } else {
                        b10 = 7;
                    }
                    break;
                case -1361632588:
                    if (!str3.equals("charge")) {
                        b10 = -1;
                    } else {
                        b10 = 3;
                    }
                    break;
                case -1170756021:
                    if (!str3.equals("video_restart")) {
                        b10 = -1;
                    } else {
                        b10 = 8;
                    }
                    break;
                case -1152604194:
                    if (!str3.equals("ad_hide")) {
                        b10 = -1;
                    } else {
                        b10 = 2;
                    }
                    break;
                case -981662273:
                    if (!str3.equals(com.sigmob.sdk.base.common.a.f78872f)) {
                        b10 = -1;
                    } else {
                        b10 = 16;
                    }
                    break;
                case -599445191:
                    if (!str3.equals("complete")) {
                        b10 = -1;
                    } else {
                        b10 = 14;
                    }
                    break;
                case -381416586:
                    if (!str3.equals(com.sigmob.sdk.base.common.a.f78873g)) {
                        b10 = -1;
                    } else {
                        b10 = BinaryMemcacheOpcodes.SETQ;
                    }
                    break;
                case -236894925:
                    if (!str3.equals(com.sigmob.sdk.base.common.a.f78880n)) {
                        b10 = -1;
                    } else {
                        b10 = 13;
                    }
                    break;
                case 3532159:
                    if (!str3.equals("skip")) {
                        b10 = -1;
                    } else {
                        b10 = 5;
                    }
                    break;
                case 94750088:
                    if (!str3.equals("click")) {
                        b10 = -1;
                    } else {
                        b10 = 15;
                    }
                    break;
                case 109757538:
                    if (!str3.equals("start")) {
                        b10 = -1;
                    } else {
                        b10 = 0;
                    }
                    break;
                case 471706373:
                    if (!str3.equals(com.sigmob.sdk.base.common.a.f78879m)) {
                        b10 = -1;
                    } else {
                        b10 = 12;
                    }
                    break;
                case 844450526:
                    if (!str3.equals(com.sigmob.sdk.base.common.a.f78888v)) {
                        b10 = -1;
                    } else {
                        b10 = 1;
                    }
                    break;
                case 1110780470:
                    if (!str3.equals("show_close")) {
                        b10 = -1;
                    } else {
                        b10 = 6;
                    }
                    break;
                case 1382290738:
                    if (!str3.equals("video_pause")) {
                        b10 = -1;
                    } else {
                        b10 = 10;
                    }
                    break;
                case 1385608094:
                    if (!str3.equals("video_start")) {
                        b10 = -1;
                    } else {
                        b10 = 9;
                    }
                    break;
                default:
                    b10 = -1;
                    break;
            }
            switch (b10) {
                case 0:
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    a(adUnit, str3, (String) null, (HashMap<String, String>) null);
                    break;
                case 1:
                    str3 = PointCategory.VCLOSE;
                    a(adUnit, str3, (String) null, (HashMap<String, String>) null);
                    break;
                case 2:
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    a(adUnit, str3, (String) null, (HashMap<String, String>) null);
                    break;
                case 3:
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    a(adUnit, "charge", (String) null, (HashMap<String, String>) null);
                    break;
                case 4:
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    a(adUnit, "show_skip", (String) null, (HashMap<String, String>) null);
                    break;
                case 5:
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    a(adUnit, str3, (String) null, (HashMap<String, String>) null);
                    break;
                case 6:
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    a(adUnit, "show_close", (String) null, (HashMap<String, String>) null);
                    break;
                case 7:
                    a(adUnit, str3, true, "video_link");
                    break;
                case 8:
                    a(adUnit, str3, false, "video_restart");
                    break;
                case 9:
                    a(adUnit, str3, false, "video_start");
                    break;
                case 10:
                    a(adUnit, str3, true, "video_pause");
                    break;
                case 11:
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    str = "0.25";
                    a(adUnit, "play", str, (HashMap<String, String>) null);
                    break;
                case 12:
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    str = "0.50";
                    a(adUnit, "play", str, (HashMap<String, String>) null);
                    break;
                case 13:
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    str = "0.75";
                    a(adUnit, "play", str, (HashMap<String, String>) null);
                    break;
                case 14:
                    a(adUnit, str3, true, "complete");
                    break;
                case 15:
                    String str4 = adUnit.getClickCommon().is_final_click ? "1" : "0";
                    SigMacroCommon macroCommon = adUnit.getMacroCommon();
                    macroCommon.addMarcoKey(SigMacroCommon._TEMPLATE_, String.valueOf(adUnit.getTemplateId()));
                    macroCommon.addMarcoKey(SigMacroCommon._CLICKAREA_, String.valueOf(adUnit.getClickCommon().click_area));
                    macroCommon.addMarcoKey(SigMacroCommon._CLICKSCENE_, String.valueOf(adUnit.getClickCommon().click_scene));
                    macroCommon.addMarcoKey(SigMacroCommon._FINALCLICK_, str4);
                    com.sigmob.sdk.base.network.h.a(adUnit, event);
                    HashMap<String, String> map = new HashMap<>();
                    map.put(ClickCommon.CLICK_AREA, adUnit.getClickCommon().click_area);
                    map.put("click_scene", adUnit.getClickCommon().click_scene);
                    map.put("template_id", String.valueOf(adUnit.getTemplateId()));
                    map.put("cwidth", String.valueOf(ClientMetadata.getInstance().getDeviceScreenRealWidthDip()));
                    map.put("cheight", String.valueOf(ClientMetadata.getInstance().getDeviceScreenRealHeightDip()));
                    map.put("is_final_click", str4);
                    map.put("coordinate", macroCommon.getCoordinate());
                    a(adUnit, adUnit.getClickCommon().click_scene, "click", map);
                    break;
                case 16:
                    str2 = "show";
                    a(adUnit, PointCategory.FOURELEMENTS, str2, (HashMap<String, String>) null);
                    break;
                case 17:
                    str2 = "close";
                    a(adUnit, PointCategory.FOURELEMENTS, str2, (HashMap<String, String>) null);
                    break;
            }
        } catch (Throwable th) {
            SigmobLog.e(this.f79178a + "recordDisplayEvent: error = " + th.getMessage());
            return true;
        }
        return true;
    }

    @Override // com.sigmob.sdk.base.common.u
    public boolean b(BaseAdUnit adUnit) {
        com.sigmob.sdk.base.network.h.a(adUnit, com.sigmob.sdk.base.common.a.f78887u);
        a(adUnit, com.sigmob.sdk.base.common.a.f78887u, (String) null, (HashMap<String, String>) null);
        return true;
    }
}
