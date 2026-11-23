package com.windmill.sdk.base;

import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.mta.PointType;
import com.sigmob.windad.WindAds;
import com.windmill.sdk.strategy.a;
import com.windmill.sdk.utils.MUtil;
import com.windmill.sdk.utils.l;
import com.windmill.xbid.Actor;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMBidUtil {
    public static String ADN = "adn";
    public static String AD_TIME = "ad_time";
    public static String AD_TITLE = "ad_title";
    public static String AD_USERNAME = "ad_username";
    private static String BIDDING_CHANNEL = "bidding_channel";
    private static String BIDDING_ECPM = "bidding_ecpm";
    public static String BID_TYPE = "bid_type";
    public static String CHANNEL_ID = "channel_id";
    public static String CURRENCY = "currency";
    public static String ECPM = "ecpm";
    public static String IS_CLICK = "is_click";
    public static String IS_SHOW = "is_show";
    public static String IS_WIN = "is_win";
    private static String LOSER_CHANNEL = "loser_channel";
    private static String LOSER_ECPM = "loser_ecpm";
    public static String LOSS_ECPM = "loss_ecpm";
    public static String MATERIAL_TYPE = "material_type";
    public static String REASON = "reason";
    private static String WATERFALL_CHANNEL = "waterfall_channel";
    private static String WATERFALL_ECPM = "waterfall_ecpm";
    public static String WINNER_BIDFLOOR = "winner_bid_floor";
    public static String WINNER_CHANNEL = "winner_channel";
    public static String WINNER_ECPM = "winner_ecpm";
    public static String WINNER_IDTYPE = "winner_idtype";
    public static String WIN_ECPM = "win_ecpm";
    private static String gdtChannelID = "16";
    private static String tag = "WMBidUtil";

    public static Map<String, String> getBidInfo() {
        try {
            Object xBiddingInfo = getXBiddingInfo();
            if (xBiddingInfo != null) {
                return (Map) Actor.XBiddingInfo.class.getMethod("getBidInfoFromYou", Integer.TYPE, Boolean.TYPE, Map.class, Map.class).invoke(xBiddingInfo, 0, Boolean.FALSE, null, new HashMap());
            }
        } catch (Exception e10) {
            WMLogUtil.d(WMLogUtil.TAG, "getBidInfoWithChannel:" + e10.getMessage());
        }
        return null;
    }

    public static Map<String, String> getBidInfoToOut(boolean isWin, Map<String, Object> referBidInfo) {
        HashMap map = new HashMap();
        try {
            String str = WINNER_CHANNEL;
            map.put(str, String.valueOf(referBidInfo.get(str)));
            map.put(MATERIAL_TYPE, "7");
            map.put(BID_TYPE, "3");
            map.put(CURRENCY, WindAds.CNY);
            map.put(AD_TIME, String.valueOf(System.currentTimeMillis() / 1000));
            if (referBidInfo.containsKey(AD_TITLE)) {
                String str2 = AD_TITLE;
                map.put(str2, String.valueOf(referBidInfo.get(str2)));
            }
            if (referBidInfo.containsKey(AD_USERNAME)) {
                String str3 = AD_USERNAME;
                map.put(str3, String.valueOf(referBidInfo.get(str3)));
            }
            if (isWin) {
                map.put(WIN_ECPM, String.valueOf(referBidInfo.get(WINNER_ECPM)));
                map.put(ADN, String.valueOf(referBidInfo.get(WATERFALL_CHANNEL)));
                map.put(LOSS_ECPM, String.valueOf(referBidInfo.get(WATERFALL_ECPM)));
            } else {
                map.put(ECPM, String.valueOf(referBidInfo.get(WINNER_ECPM)));
                map.put(ADN, String.valueOf(referBidInfo.get(WINNER_CHANNEL)));
                map.put(REASON, "203");
                map.put(IS_SHOW, "2");
                map.put(IS_CLICK, "2");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return map;
    }

    public static Map<String, String> getBidInfoWithChannel(int channelId, boolean isWin, Map<String, Object> referBidInfo, Map<String, String> resultBidInfo) {
        String string;
        Map<String, String> map;
        try {
            Object xBiddingInfo = getXBiddingInfo();
            if (isWin && referBidInfo.containsKey("isKS") && l.d(channelId)) {
                resultBidInfo.put(LOSS_ECPM, String.valueOf(referBidInfo.get(WINNER_ECPM)));
            }
            WMLogUtil.d("-----getBidInfoWithChannel---resultBidInfo: " + resultBidInfo);
            try {
                string = resultBidInfo.get(LOSS_ECPM).toString();
            } catch (Exception unused) {
                string = "";
            }
            if (xBiddingInfo != null) {
                Map<String, String> map2 = new HashMap<>();
                try {
                    map = (Map) Actor.XBiddingInfo.class.getMethod("getBidInfoFromYou", Integer.TYPE, Boolean.TYPE, Map.class, Map.class).invoke(xBiddingInfo, Integer.valueOf(channelId), Boolean.valueOf(isWin), referBidInfo, resultBidInfo);
                    try {
                        referBidInfo.putAll(map);
                    } catch (Exception unused2) {
                        map2 = map;
                        map = map2;
                    }
                } catch (Exception unused3) {
                }
                if (isKS(referBidInfo, resultBidInfo) > 0) {
                    String str = WIN_ECPM;
                    map.put(str, resultBidInfo.get(str));
                    return map;
                }
                referBidInfo.remove("AdInfo");
                WMLogUtil.d(WMLogUtil.TAG, "-----getBidInfoWithChannel---referBidInfo:  " + referBidInfo);
                return radomValueMap(string, resultBidInfo, referBidInfo, isWin);
            }
            WMLogUtil.d(WMLogUtil.TAG, "-----getBidInfoWithChannel-Actor--resultBidInfo:  " + resultBidInfo);
            HashMap map3 = new HashMap();
            if (isKS(referBidInfo, resultBidInfo) <= 0) {
                return radomValueMap(string, resultBidInfo, referBidInfo, isWin);
            }
            map3.put(ECPM, isKS(referBidInfo, resultBidInfo) + "");
            if (isWin) {
                String str2 = WIN_ECPM;
                map3.put(str2, resultBidInfo.get(str2));
                map3.put(LOSS_ECPM, resultBidInfo.get(WIN_ECPM));
            }
            return map3;
        } catch (Exception e10) {
            WMLogUtil.d(WMLogUtil.TAG, "getBidInfoWithChannel: Exception " + e10.getMessage());
            return null;
        }
    }

    public static Map<String, Object> getLossOriginalBidInfo(a winner_strategy, a bid_strategy, a loser_strategy) {
        HashMap map = new HashMap();
        try {
            if (winner_strategy != null) {
                map.put(WINNER_ECPM, winner_strategy.V());
                map.put(WINNER_CHANNEL, String.valueOf(winner_strategy.aN()));
                if (!l.c(winner_strategy.aN())) {
                    map.put(WINNER_IDTYPE, "2");
                } else if (winner_strategy.D() || winner_strategy.F()) {
                    map.put(WINNER_IDTYPE, "1");
                } else {
                    map.put(WINNER_IDTYPE, "0");
                }
            } else {
                map.put(WINNER_ECPM, "0");
                map.put(WINNER_CHANNEL, "0");
            }
            if (bid_strategy != null) {
                map.put(BIDDING_ECPM, bid_strategy.V());
                map.put(BIDDING_CHANNEL, String.valueOf(bid_strategy.aN()));
            } else {
                map.put(BIDDING_ECPM, "0");
                map.put(BIDDING_CHANNEL, "0");
            }
            if (loser_strategy != null) {
                map.put(LOSER_ECPM, loser_strategy.V());
                map.put(LOSER_CHANNEL, String.valueOf(loser_strategy.aN()));
                if (loser_strategy.ah() > 0) {
                    map.put(WINNER_BIDFLOOR, Integer.valueOf(loser_strategy.ah()));
                }
                if (l.c(loser_strategy.aN())) {
                    if (loser_strategy.D()) {
                        map.put(BiddingConstant.sBidType, "1");
                    } else {
                        map.put(BiddingConstant.sBidType, "0");
                    }
                }
            } else {
                map.put(LOSER_ECPM, "0");
                map.put(LOSER_CHANNEL, "0");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return map;
    }

    private static int getMaxPrice(Map<String, Object> referBidInfo) {
        try {
            int iIntValue = referBidInfo.containsKey(BIDDING_ECPM) ? parseInt(referBidInfo.get(BIDDING_ECPM).toString()).intValue() : 0;
            int iIntValue2 = referBidInfo.containsKey(WATERFALL_ECPM) ? parseInt(referBidInfo.get(WATERFALL_ECPM).toString()).intValue() : 0;
            return iIntValue2 < iIntValue ? iIntValue : iIntValue2;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static Map<String, Object> getWinOriginalBidInfo(a winner_strategy, a bid_strategy, a water_strategy) {
        HashMap map = new HashMap();
        try {
            if (winner_strategy != null) {
                map.put(WINNER_ECPM, winner_strategy.V());
                map.put(WINNER_BIDFLOOR, String.valueOf(winner_strategy.ah()));
                map.put(WINNER_CHANNEL, String.valueOf(winner_strategy.aN()));
            } else {
                map.put(WINNER_ECPM, "0");
                map.put(WINNER_CHANNEL, "0");
            }
            if (bid_strategy == null || winner_strategy == null || l.d(winner_strategy.aN())) {
                map.put(BIDDING_ECPM, "0");
                map.put(BIDDING_CHANNEL, "0");
            } else {
                map.put(BIDDING_CHANNEL, String.valueOf(bid_strategy.aN()));
                map.put(WINNER_BIDFLOOR, String.valueOf(bid_strategy.ah()));
                map.put(BIDDING_ECPM, bid_strategy.V());
            }
            if (winner_strategy != null && winner_strategy.ah() > 0) {
                map.put(WINNER_BIDFLOOR, String.valueOf(winner_strategy.ah()));
            }
            if (water_strategy != null) {
                map.put(WATERFALL_ECPM, water_strategy.V());
                map.put(WATERFALL_CHANNEL, String.valueOf(water_strategy.aN()));
            } else {
                map.put(WATERFALL_ECPM, "0");
                map.put(WATERFALL_CHANNEL, "0");
            }
        } catch (Exception e10) {
            WMLogUtil.i("-------getWinOriginalBidInfo Exception " + e10.getMessage());
            e10.printStackTrace();
        }
        return map;
    }

    public static Object getXBiddingInfo() {
        try {
            Object objInvoke = Actor.class.getMethod("getXBiddingInfo", new Class[0]).invoke(Actor.class.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]), new Object[0]);
            WMLogUtil.d(WMLogUtil.TAG, "----------getXBiddingInfo----------" + objInvoke);
            return objInvoke;
        } catch (Exception e10) {
            WMLogUtil.d(WMLogUtil.TAG, "getXBiddingInfo:" + e10.getMessage());
            return null;
        }
    }

    private static int isKS(Map<String, Object> referBidInfo, Map<String, String> resultBidInfo) {
        if (!referBidInfo.containsKey("isKS")) {
            return -1;
        }
        if (!TextUtils.isEmpty(resultBidInfo.get(ECPM))) {
            try {
                int random = (MUtil.getRandom() * parseInt(resultBidInfo.get(ECPM)).intValue()) / 100;
                resultBidInfo.put(ECPM, random + "");
                SigmobLog.i("---notifyBiddingResult-----getRandom: " + random);
                return random;
            } catch (Exception e10) {
                SigmobLog.e("---notifyBiddingResul  ecpm parse error" + e10.getMessage());
            }
        }
        String str = resultBidInfo.get(WIN_ECPM);
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            int random2 = (MUtil.getRandom() * parseInt(str).intValue()) / 100;
            resultBidInfo.put(ECPM, random2 + "");
            SigmobLog.i("---notifyBiddingResult-----getRandom: " + random2);
            return random2;
        } catch (Exception e11) {
            SigmobLog.e("---notifyBiddingResul  ecpm parse error" + e11.getMessage());
            return -1;
        }
    }

    public static Double parseDouble(Object number) {
        try {
            if (number instanceof String) {
                return Double.valueOf(Double.parseDouble((String) number));
            }
            if (number instanceof Number) {
                return Double.valueOf(((Number) number).doubleValue());
            }
            return Double.valueOf(0.0d);
        } catch (Throwable th) {
            if (WMLogUtil.isEnableLog) {
                WMLogUtil.e("parseDouble:" + th.getMessage());
            }
        }
    }

    public static Integer parseInt(Object number) {
        try {
            if (number instanceof String) {
                return Integer.valueOf(Double.valueOf(Double.parseDouble((String) number)).intValue());
            }
            if (number instanceof Number) {
                return Integer.valueOf(((Number) number).intValue());
            }
            return 0;
        } catch (Throwable th) {
            if (WMLogUtil.isEnableLog) {
                WMLogUtil.e("parseInt:" + th.getMessage());
            }
        }
    }

    public static Long parseLong(Object number) {
        try {
            if (number instanceof String) {
                return Long.valueOf(Double.valueOf(Double.parseDouble((String) number)).longValue());
            }
            if (number instanceof Number) {
                return Long.valueOf(((Number) number).longValue());
            }
            return 0L;
        } catch (Throwable th) {
            if (WMLogUtil.isEnableLog) {
                WMLogUtil.e("parseLong:" + th.getMessage());
            }
        }
    }

    private static Map<String, String> radomValueMap(String lossPrice, Map<String, String> resultBidInfo, Map<String, Object> referBidInfo, boolean isWin) {
        HashMap map = new HashMap();
        int maxPrice = getMaxPrice(referBidInfo);
        if (resultBidInfo.containsKey(ADN)) {
            String str = ADN;
            map.put(str, String.valueOf(resultBidInfo.get(str)));
        }
        if (!isWin && referBidInfo.containsKey(WINNER_CHANNEL)) {
            map.put(ADN, referBidInfo.get(WINNER_CHANNEL) + "");
            if (gdtChannelID.equals(referBidInfo.get(LOSER_CHANNEL))) {
                map.put(WINNER_IDTYPE, referBidInfo.get(WINNER_IDTYPE) + "");
            }
        }
        selectMap(referBidInfo, map);
        if (referBidInfo.containsKey(WINNER_ECPM) && !isWin) {
            try {
                int random = (int) Double.parseDouble(referBidInfo.get(WINNER_ECPM).toString());
                if (!referBidInfo.get(LOSER_CHANNEL).equals(referBidInfo.get(WINNER_CHANNEL))) {
                    random = (MUtil.getRandom() * random) / 100;
                }
                map.put(WIN_ECPM, String.valueOf(random));
            } catch (Exception unused) {
            }
        }
        if (lossPrice.equals(resultBidInfo.get(LOSS_ECPM)) || (resultBidInfo.get(LOSS_ECPM) == null && TextUtils.isEmpty(lossPrice))) {
            int iIntValue = 0;
            if (maxPrice == 0 && !"9".equals(referBidInfo.get(WINNER_CHANNEL))) {
                if (gdtChannelID.equals(referBidInfo.get(WINNER_CHANNEL))) {
                    map.put(LOSS_ECPM, "0");
                    if (referBidInfo.containsKey(WINNER_BIDFLOOR)) {
                        map.put(LOSS_ECPM, referBidInfo.get(WINNER_BIDFLOOR).toString());
                    }
                } else {
                    map.put(LOSS_ECPM, String.valueOf(referBidInfo.get(WINNER_ECPM)));
                }
                if ((PointType.SIGMOB_REPORT_TRACKING.equals(referBidInfo.get(WINNER_CHANNEL)) || "22".equals(referBidInfo.get(WINNER_CHANNEL)) || "21".equals(referBidInfo.get(WINNER_CHANNEL))) && "0".equals(referBidInfo.get(WATERFALL_CHANNEL)) && "0".equals(referBidInfo.get(BIDDING_CHANNEL))) {
                    int maxRandom = MUtil.getMaxRandom(parseInt(referBidInfo.get(WINNER_ECPM).toString()).intValue());
                    map.put(LOSS_ECPM, maxRandom + "");
                }
                if (gdtChannelID.equals(referBidInfo.get(LOSER_CHANNEL))) {
                    if (!gdtChannelID.equals(referBidInfo.get(WINNER_CHANNEL))) {
                        int random2 = (MUtil.getRandom() * parseInt(referBidInfo.get(WINNER_ECPM).toString()).intValue()) / 100;
                        map.put(ECPM, random2 + "");
                        if ("0".equals(referBidInfo.get(WINNER_CHANNEL)) && referBidInfo.containsKey(ECPM) && parseInt(referBidInfo.get(ECPM).toString()).intValue() > 0) {
                            map.put(ECPM, referBidInfo.get(ECPM) + "");
                        }
                    } else if (!referBidInfo.containsKey(WINNER_ECPM) || parseInt(referBidInfo.get(WINNER_ECPM).toString()).intValue() <= 0) {
                        map.put(ECPM, referBidInfo.get(WIN_ECPM) + "");
                    } else {
                        map.put(ECPM, referBidInfo.get(WINNER_ECPM) + "");
                    }
                    if (referBidInfo.get(LOSER_ECPM) != null && "0".equals(referBidInfo.get(LOSER_ECPM)) && referBidInfo.containsKey(WINNER_BIDFLOOR) && referBidInfo.get(WINNER_BIDFLOOR) != null) {
                        String str2 = WINNER_BIDFLOOR;
                        map.put(str2, referBidInfo.get(str2).toString());
                    }
                }
                map.put(WIN_ECPM, referBidInfo.get(WINNER_ECPM) + "");
                if (!isWin && "41".equals(referBidInfo.get(LOSER_CHANNEL))) {
                    try {
                        iIntValue = (int) ((Double.valueOf(referBidInfo.get(WINNER_ECPM).toString()).doubleValue() * ((double) MUtil.getRandom())) / 100.0d);
                    } catch (Exception unused2) {
                    }
                    map.put(WIN_ECPM, iIntValue + "");
                }
            } else if ("9".equals(referBidInfo.get(WINNER_CHANNEL).toString())) {
                map.put(LOSS_ECPM, maxPrice + "");
                if (referBidInfo.get(WIN_ECPM) != null) {
                    map.put(WIN_ECPM, referBidInfo.get(WIN_ECPM) + "");
                }
                if (referBidInfo.get(WINNER_ECPM) != null) {
                    map.put(WIN_ECPM, referBidInfo.get(WINNER_ECPM) + "");
                }
            } else {
                if (referBidInfo.containsKey(LOSER_CHANNEL) && gdtChannelID.equals(referBidInfo.get(LOSER_CHANNEL)) && referBidInfo.containsKey(WINNER_IDTYPE)) {
                    String str3 = WINNER_IDTYPE;
                    map.put(str3, (String) referBidInfo.get(str3));
                }
                if (!gdtChannelID.equals(referBidInfo.get(LOSER_CHANNEL))) {
                    try {
                        int iIntValue2 = referBidInfo.containsKey(WINNER_ECPM) ? parseInt(referBidInfo.get(WINNER_ECPM).toString()).intValue() : 0;
                        if (iIntValue2 > maxPrice) {
                            map.put(LOSS_ECPM, String.valueOf(MUtil.getRandom(maxPrice, iIntValue2 - maxPrice)));
                        } else {
                            map.put(LOSS_ECPM, String.valueOf(iIntValue2));
                        }
                        if (PointType.SIGMOB_REPORT_TRACKING.equals(referBidInfo.get(WINNER_CHANNEL)) || PointType.SIGMOB_REPORT_TRACKING.equals(referBidInfo.get(WINNER_CHANNEL))) {
                            int iIntValue3 = referBidInfo.containsKey(WINNER_ECPM) ? parseInt(referBidInfo.get(WINNER_ECPM).toString()).intValue() : 0;
                            int iIntValue4 = referBidInfo.containsKey(WATERFALL_ECPM) ? parseInt(referBidInfo.get(WATERFALL_ECPM).toString()).intValue() : 0;
                            int random3 = MUtil.getRandom(iIntValue4, iIntValue3 - iIntValue4);
                            map.put(LOSS_ECPM, random3 + "");
                        }
                    } catch (Exception unused3) {
                        map.put(LOSS_ECPM, String.valueOf(referBidInfo.get(WATERFALL_ECPM)));
                    }
                } else if (!gdtChannelID.equals(referBidInfo.get(WINNER_CHANNEL))) {
                    try {
                        map.put(ECPM, String.valueOf((parseInt(referBidInfo.get(WINNER_ECPM).toString()).intValue() * MUtil.getRandom()) / 100));
                    } catch (Exception unused4) {
                    }
                }
                if (gdtChannelID.equals(referBidInfo.get(WINNER_CHANNEL)) && !gdtChannelID.equals(referBidInfo.get(WATERFALL_CHANNEL))) {
                    try {
                        map.put(LOSS_ECPM, String.valueOf((parseInt(referBidInfo.get(WATERFALL_ECPM).toString()).intValue() * MUtil.getRandom95()) / 100));
                    } catch (Exception unused5) {
                    }
                }
                String str4 = resultBidInfo.get(ECPM);
                if (!TextUtils.isEmpty(str4) && !isWin) {
                    try {
                        if (gdtChannelID.equals(referBidInfo.get(LOSER_CHANNEL)) && gdtChannelID.equals(referBidInfo.get(WINNER_CHANNEL))) {
                            map.put(ECPM, str4);
                        } else {
                            int random4 = (MUtil.getRandom() * parseInt(str4).intValue()) / 100;
                            map.put(ECPM, random4 + "");
                        }
                    } catch (Exception unused6) {
                    }
                }
                if (isWin && gdtChannelID.equals(referBidInfo.get(WINNER_CHANNEL))) {
                    SigmobLog.i("---notifyBiddingResult-----GDT " + isWin + " " + referBidInfo);
                    String str5 = WIN_ECPM;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(referBidInfo.get(WINNER_ECPM));
                    sb2.append("");
                    map.put(str5, sb2.toString());
                    if (referBidInfo.containsKey(WINNER_BIDFLOOR)) {
                        String string = referBidInfo.containsKey(WATERFALL_CHANNEL) ? referBidInfo.get(WATERFALL_CHANNEL).toString() : "";
                        int iIntValue5 = referBidInfo.containsKey(WINNER_BIDFLOOR) ? parseInt(referBidInfo.get(WINNER_BIDFLOOR).toString()).intValue() : 0;
                        int iIntValue6 = referBidInfo.containsKey(WATERFALL_ECPM) ? parseInt(referBidInfo.get(WATERFALL_ECPM).toString()).intValue() : 0;
                        iIntValue = referBidInfo.containsKey(BIDDING_ECPM) ? parseInt(referBidInfo.get(BIDDING_ECPM).toString()).intValue() : 0;
                        if (iIntValue > iIntValue6 && iIntValue6 > 0) {
                            if (referBidInfo.containsKey(BIDDING_CHANNEL)) {
                                string = referBidInfo.get(BIDDING_CHANNEL).toString();
                            }
                            iIntValue6 = iIntValue;
                        }
                        if (iIntValue5 > iIntValue6) {
                            map.put(LOSS_ECPM, iIntValue5 + "");
                        } else {
                            SigmobLog.i("---notifyBiddingResult-----GDT channelId " + string);
                            if (!gdtChannelID.equals(string) && iIntValue6 != 0) {
                                iIntValue6 = (MUtil.getRandom95() * iIntValue6) / 100;
                            }
                            map.put(LOSS_ECPM, iIntValue6 + "");
                        }
                    } else if (gdtChannelID.equals("")) {
                        map.put(LOSS_ECPM, referBidInfo.get(WATERFALL_ECPM) + "");
                    } else if (referBidInfo.containsKey(WATERFALL_ECPM)) {
                        int iIntValue7 = parseInt(referBidInfo.get(WATERFALL_ECPM).toString()).intValue();
                        map.put(LOSS_ECPM, ((MUtil.getRandom95() * iIntValue7) / 100) + "");
                    }
                }
                if (isWin && "41".equals(referBidInfo.get(WINNER_CHANNEL))) {
                    map.put(WIN_ECPM, referBidInfo.get(WINNER_ECPM) + "");
                }
            }
        } else {
            SigmobLog.i(tag + "---notifyBiddingResult----自定义 " + resultBidInfo);
            map.putAll(resultBidInfo);
        }
        return map;
    }

    private static void selectMap(Map<String, Object> referBidInfo, Map<String, String> map) {
        if (referBidInfo.containsKey(MATERIAL_TYPE)) {
            map.put(MATERIAL_TYPE, referBidInfo.get(MATERIAL_TYPE) + "");
        }
        if (referBidInfo.containsKey(IS_SHOW)) {
            map.put(IS_SHOW, referBidInfo.get(IS_SHOW) + "");
        }
        if (referBidInfo.containsKey(IS_CLICK)) {
            map.put(IS_CLICK, referBidInfo.get(IS_CLICK) + "");
        }
        if (referBidInfo.containsKey(AD_TITLE)) {
            String str = AD_TITLE;
            map.put(str, String.valueOf(referBidInfo.get(str)));
        }
        if (referBidInfo.containsKey(AD_USERNAME)) {
            String str2 = AD_USERNAME;
            map.put(str2, String.valueOf(referBidInfo.get(str2)));
        }
    }
}
