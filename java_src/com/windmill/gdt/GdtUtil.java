package com.windmill.gdt;

import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.pi.IBidding;
import com.windmill.sdk.base.BiddingConstant;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.strategy.WMGdtRequest;
import com.windmill.sdk.utils.EncodeUtil;
import com.windmill.sdk.utils.MUtil;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GdtUtil {
    public static LoadAdParams getLoadAdParams(Class cls, Map map) {
        try {
            if (map.containsKey("gdtRequestParam") && "1".equals(map.get("gdtRequestParam"))) {
                return null;
            }
            LoadAdParams loadAdParams = new LoadAdParams();
            HashMap map2 = new HashMap();
            map2.put("staln", cls.getName());
            map2.put("thrmei", getThrmei(map).toString());
            map2.put("meSrc", "499");
            loadAdParams.setDevExtra(map2);
            return loadAdParams;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getThrmei(Map map) {
        StringBuilder sb2 = new StringBuilder();
        if (map != null && map.containsKey(BiddingConstant.tobidId)) {
            sb2.append(map.get(BiddingConstant.tobidId));
        }
        if (map != null && map.containsKey(BiddingConstant.experimentId)) {
            sb2.append("_");
            sb2.append(map.get(BiddingConstant.experimentId));
        }
        if (map == null || !map.containsKey(BiddingConstant.strategyId)) {
            sb2.append("_0");
        } else {
            sb2.append("_");
            sb2.append(map.get(BiddingConstant.strategyId));
        }
        if (map != null && map.containsKey("loadId")) {
            sb2.append("_");
            sb2.append(map.get("loadId"));
        }
        return sb2.toString();
    }

    /* JADX WARN: Code duplicated, block: B:55:0x011c A[Catch: Exception -> 0x0161, TRY_ENTER, TryCatch #1 {Exception -> 0x0161, blocks: (B:3:0x0014, B:5:0x001a, B:46:0x00f8, B:49:0x0100, B:51:0x010c, B:52:0x0110, B:55:0x011c, B:56:0x0124, B:58:0x012c, B:60:0x0132, B:62:0x0138, B:63:0x0142, B:66:0x014a, B:68:0x0150, B:69:0x015d), top: B:75:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0129  */
    /* JADX WARN: Code duplicated, block: B:69:0x015d A[Catch: Exception -> 0x0161, TRY_LEAVE, TryCatch #1 {Exception -> 0x0161, blocks: (B:3:0x0014, B:5:0x001a, B:46:0x00f8, B:49:0x0100, B:51:0x010c, B:52:0x0110, B:55:0x011c, B:56:0x0124, B:58:0x012c, B:60:0x0132, B:62:0x0138, B:63:0x0142, B:66:0x014a, B:68:0x0150, B:69:0x015d), top: B:75:0x0014 }] */
    public static void noAdReplace(String str, HashMap<String, Object> map) {
        String encodePrice;
        String string;
        String strReplace;
        Object obj;
        int iIntValue;
        int random;
        try {
            if (map.containsKey("placementId")) {
                str = str.replace("__POSITION_ID__", map.get("placementId").toString());
            }
            try {
                if (!map.containsKey("winPrice") || WMBidUtil.parseInt(map.get("winPrice").toString()).intValue() <= 0) {
                    if (!map.containsKey("winner_ecpm") || WMBidUtil.parseInt(map.get("winner_ecpm").toString()).intValue() <= 0) {
                        if (map.containsKey("winner_bid_floor") && map.get("winner_bid_floor") != null) {
                            obj = map.get("winner_bid_floor");
                        } else if (map.containsKey(IBidding.EXPECT_COST_PRICE) && map.get(IBidding.EXPECT_COST_PRICE) != null) {
                            obj = map.get(IBidding.EXPECT_COST_PRICE);
                        } else if (!map.containsKey("ecpm") || map.get("ecpm") == null) {
                            encodePrice = "0";
                        } else if (!map.containsKey(WMBidUtil.WINNER_CHANNEL) || "16".equals(map.get(WMBidUtil.WINNER_CHANNEL))) {
                            obj = map.get("ecpm");
                        } else {
                            iIntValue = WMBidUtil.parseInt(map.get("ecpm").toString()).intValue();
                            random = MUtil.getRandom();
                            encodePrice = String.valueOf((random * iIntValue) / 100);
                        }
                    } else if (!map.containsKey(WMBidUtil.WINNER_CHANNEL) || "16".equals(map.get(WMBidUtil.WINNER_CHANNEL))) {
                        obj = map.get("winner_ecpm");
                    } else {
                        iIntValue = WMBidUtil.parseInt(map.get("winner_ecpm").toString()).intValue();
                        random = MUtil.getRandom();
                        encodePrice = String.valueOf((random * iIntValue) / 100);
                    }
                    if (map.containsKey(BiddingConstant.sBidType) && map.get(BiddingConstant.sBidType).equals("1")) {
                        encodePrice = EncodeUtil.getEncodePrice(encodePrice);
                    }
                    String strReplace2 = str.replace("__AUCTION_PRICE__", encodePrice);
                    if (map.containsKey("adnId")) {
                        string = map.get("adnId").toString();
                    } else {
                        string = "2";
                    }
                    strReplace = strReplace2.replace("__AUCTION_SEAT_ID__", string);
                    if (map.containsKey("loadId") && map.get("loadId") != null) {
                        strReplace = strReplace.replace("__THR_MEI__", getThrmei(map));
                    }
                    if (map.containsKey(BiddingConstant.sBidType) || map.get(BiddingConstant.sBidType) == null) {
                        str = strReplace.replace("__SERVER_BIDDING_TYPE__", "0");
                    } else {
                        str = strReplace.replace("__SERVER_BIDDING_TYPE__", map.get(BiddingConstant.sBidType).toString());
                    }
                    WMLogUtil.i("---------noAdReplace ".concat(String.valueOf(str)));
                    new WMGdtRequest(str).addRequest();
                }
                obj = map.get("winPrice");
                encodePrice = obj.toString();
            } catch (Exception unused) {
            }
            if (map.containsKey(BiddingConstant.sBidType)) {
                encodePrice = EncodeUtil.getEncodePrice(encodePrice);
            }
            String strReplace3 = str.replace("__AUCTION_PRICE__", encodePrice);
            if (map.containsKey("adnId")) {
                string = map.get("adnId").toString();
            } else {
                string = "2";
            }
            strReplace = strReplace3.replace("__AUCTION_SEAT_ID__", string);
            if (map.containsKey("loadId")) {
                strReplace = strReplace.replace("__THR_MEI__", getThrmei(map));
            }
            if (map.containsKey(BiddingConstant.sBidType)) {
                str = strReplace.replace("__SERVER_BIDDING_TYPE__", "0");
            } else {
                str = strReplace.replace("__SERVER_BIDDING_TYPE__", "0");
            }
        } catch (Exception unused2) {
        }
        WMLogUtil.i("---------noAdReplace ".concat(String.valueOf(str)));
        new WMGdtRequest(str).addRequest();
    }

    public static String s2sMacroReplace(String str, Map<String, Object> map) {
        if (map.containsKey("placementId")) {
            str = str.replace("__POSITION_ID__", map.get("placementId").toString());
        }
        if (map.containsKey(WMBidUtil.WINNER_ECPM)) {
            str = str.replace("__AUCTION_PRICE__", EncodeUtil.getEncodePrice(map.get(WMBidUtil.WINNER_ECPM).toString()));
        }
        if (map.containsKey("adnId")) {
            str = str.replace("__AUCTION_SEAT_ID__", map.get("adnId").toString());
        }
        if (map.containsKey("lossReason")) {
            str = str.replace("__AUCTION_LOSS__", map.get("lossReason").toString());
        }
        return map.containsKey("highest_loss_price") ? str.replace("__HIGHEST_LOSS_PRICE__", map.get("highest_loss_price").toString()) : str;
    }
}
