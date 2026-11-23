package com.byazt.nk;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.tm.DynamicBaseWidget;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 234, 42})
public class i {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static sp c(Context context, DynamicBaseWidget dynamicBaseWidget, com.byazt.aq.sp spVar, com.byazt.aq.da daVar, com.byazt.xl.u uVar) {
        if (context == null || dynamicBaseWidget == null || spVar == null) {
            return null;
        }
        String strAw = spVar.aw();
        String strYv = uVar.yv();
        strAw.hashCode();
        byte b10 = -1;
        switch (strAw.hashCode()) {
            case 48:
                if (strAw.equals("0")) {
                    b10 = 0;
                }
                break;
            case 49:
                if (strAw.equals("1")) {
                    b10 = 1;
                }
                break;
            case 50:
                if (strAw.equals("2")) {
                    b10 = 2;
                }
                break;
            case 53:
                if (strAw.equals("5")) {
                    b10 = 3;
                }
                break;
            case 54:
                if (strAw.equals("6")) {
                    b10 = 4;
                }
                break;
            case 55:
                if (strAw.equals("7")) {
                    b10 = 5;
                }
                break;
            case 56:
                if (strAw.equals(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD)) {
                    b10 = 6;
                }
                break;
            case 57:
                if (strAw.equals("9")) {
                    b10 = 7;
                }
                break;
            case 1567:
                if (strAw.equals("10")) {
                    b10 = 8;
                }
                break;
            case 1568:
                if (strAw.equals("11")) {
                    b10 = 9;
                }
                break;
            case 1569:
                if (strAw.equals("12")) {
                    b10 = 10;
                }
                break;
            case 1570:
                if (strAw.equals(PointType.SIGMOB_REPORT_TRACKING)) {
                    b10 = 11;
                }
                break;
            case 1571:
                if (strAw.equals("14")) {
                    b10 = 12;
                }
                break;
            case 1573:
                if (strAw.equals("16")) {
                    b10 = 13;
                }
                break;
            case 1574:
                if (strAw.equals(PointType.LOAD_READY)) {
                    b10 = 14;
                }
                break;
            case 1575:
                if (strAw.equals("18")) {
                    b10 = 15;
                }
                break;
            case 1598:
                if (strAw.equals(com.windmill.sdk.point.PointType.WIND_ADAPTER)) {
                    b10 = 16;
                }
                break;
            case 1600:
                if (strAw.equals("22")) {
                    b10 = BinaryMemcacheOpcodes.SETQ;
                }
                break;
            case 1601:
                if (strAw.equals("23")) {
                    b10 = BinaryMemcacheOpcodes.ADDQ;
                }
                break;
            case 1602:
                if (strAw.equals("24")) {
                    b10 = BinaryMemcacheOpcodes.REPLACEQ;
                }
                break;
            case 1603:
                if (strAw.equals("25")) {
                    b10 = BinaryMemcacheOpcodes.DELETEQ;
                }
                break;
            case 1607:
                if (strAw.equals("29")) {
                    b10 = BinaryMemcacheOpcodes.INCREMENTQ;
                }
                break;
        }
        switch (b10) {
            case 0:
                return new n(context, dynamicBaseWidget, spVar);
            case 1:
                return new ve(context, dynamicBaseWidget, spVar);
            case 2:
                return new tt(context, dynamicBaseWidget, spVar);
            case 3:
                return spVar.hd() == 1 ? new nu(context, dynamicBaseWidget, spVar, spVar.kk()) : new m(context, dynamicBaseWidget, spVar);
            case 4:
            case 9:
                return new u(context, dynamicBaseWidget, spVar);
            case 5:
            case 12:
                return new sl(context, dynamicBaseWidget, spVar);
            case 6:
                return new t(context, dynamicBaseWidget, spVar);
            case 7:
            case 13:
                return new yp(context, dynamicBaseWidget, spVar, strAw, daVar, uVar.i(), uVar.md());
            case 8:
                return new uj(context, dynamicBaseWidget, spVar);
            case 10:
                return new m(context, dynamicBaseWidget, spVar);
            case 11:
                return new nu(context, dynamicBaseWidget, spVar);
            case 14:
            case 15:
                return new my(context, dynamicBaseWidget, spVar, strAw, daVar, uVar.i(), uVar.md());
            case 16:
                if (com.byazt.sr.uj.c()) {
                    return new da(context, dynamicBaseWidget, spVar, strYv + "static/lotties/glass-swipe/glass-swipe.json", com.windmill.sdk.point.PointType.WIND_ADAPTER);
                }
                return new da(context, dynamicBaseWidget, spVar, TextUtils.isEmpty(strYv) ? null : strYv + "brush_mask.json", com.windmill.sdk.point.PointType.WIND_ADAPTER);
            case 17:
                if (!com.byazt.sr.uj.c()) {
                    return new rh(context, dynamicBaseWidget, spVar);
                }
                return new da(context, dynamicBaseWidget, spVar, strYv + "static/lotties/202327swiper-up-star/index.json", "22");
            case 18:
                if (!com.byazt.sr.uj.c()) {
                    return null;
                }
                return new da(context, dynamicBaseWidget, spVar, strYv + "static/lotties/202327swiper-up-star/click.json", "23");
            case 19:
                if (com.byazt.sr.uj.c()) {
                    return new c(context, dynamicBaseWidget, spVar);
                }
                return new da(context, dynamicBaseWidget, spVar, TextUtils.isEmpty(strYv) ? null : strYv + "swiper_up_star.json", "24");
            case 20:
                if (!com.byazt.sr.uj.c()) {
                    return null;
                }
                return new da(context, dynamicBaseWidget, spVar, strYv + "static/lotties/gesture-slide.json", "25");
            case 21:
                return new a(context, dynamicBaseWidget, spVar, daVar, uVar.i(), uVar.md());
            default:
                return null;
        }
    }
}
