package com.beizi.fusion.e;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.beizi.fusion.BeiZiBiddingConstant;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.at;
import com.beizi.fusion.tool.u;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class b {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static List<AdSpacesBean.ForwardBean> a(AdSpacesBean.ComponentBean componentBean, List<AdSpacesBean.BuyerBean> list, String str) {
        String content;
        ArrayList arrayList = new ArrayList();
        if (componentBean != null && list != null && list.size() != 0 && (content = componentBean.getContent()) != null) {
            switch (content) {
                case "random":
                    a(componentBean, arrayList);
                    break;
                case "fail":
                    a(componentBean, list, str, arrayList, "280.500");
                    break;
                case "show":
                    a(componentBean, list, str, arrayList, "280.300");
                    break;
                case "click":
                    a(componentBean, list, str, arrayList, "290.300");
                    break;
                case "request":
                    a(componentBean, list, str, arrayList, "200.000");
                    break;
            }
        } else {
            return arrayList;
        }
    }

    private static boolean b(List<AdSpacesBean.RulesBean> list, int i10) {
        boolean z10;
        if (list == null) {
            return false;
        }
        if (list.size() == 0) {
            ac.c("BeiZis", "enter rulesBeanList.size() == 0");
            z10 = true;
        } else {
            z10 = false;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (a(list.get(i11), i10)) {
                return true;
            }
        }
        return z10;
    }

    private static String c(String str) {
        ac.a("BeiZis", "enter convertSelfChannel buyerId = " + str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return at.b().equals(str) ? "BEIZI" : str;
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        if (at.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) {
            return BeiZiBiddingConstant.Adn.ADN_BZ;
        }
        if (str.equals("ADSCOPE")) {
            return "8888";
        }
        return null;
    }

    private static void a(AdSpacesBean.ComponentBean componentBean, List<AdSpacesBean.BuyerBean> list, String str, List<AdSpacesBean.ForwardBean> list2, String str2) {
        ac.c("BeiZis", "enter handleSpaceStrategyByEvent eventCode = " + str2);
        List<AdSpacesBean.ForwardBean> forward = componentBean.getForward();
        if (forward == null || forward.size() <= 0) {
            return;
        }
        int iA = u.a(str, str2);
        if (!str2.equalsIgnoreCase("200.000")) {
            iA++;
        }
        for (int i10 = 0; i10 < forward.size(); i10++) {
            AdSpacesBean.ForwardBean forwardBean = forward.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                AdSpacesBean.BuyerBean buyerBean = list.get(i11);
                if (buyerBean.getId() != null && buyerBean.getId().equalsIgnoreCase(forwardBean.getBuyerId()) && buyerBean.getBuyerSpaceUuId() != null && buyerBean.getBuyerSpaceUuId().equalsIgnoreCase(forwardBean.getBuyerSpaceUuId())) {
                    ac.c("BeiZis", forwardBean.getBuyerId() + " handleSpaceRequestStrategy buyerBean match");
                    if (b(forwardBean.getRules(), iA)) {
                        ac.c("BeiZis", forwardBean.getBuyerId() + " enter rulesMatch");
                        list2.add(forwardBean);
                    }
                }
            }
        }
    }

    protected static void a(AdSpacesBean.ComponentBean componentBean, List<AdSpacesBean.ForwardBean> list) {
        List<AdSpacesBean.ForwardBean> forward = componentBean.getForward();
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        ac.a("BeiZis", "AdForward random:" + iRandom);
        if (forward == null || forward.size() <= 0) {
            return;
        }
        int size = forward.size();
        for (int i10 = 0; i10 < size; i10++) {
            AdSpacesBean.ForwardBean forwardBean = forward.get(i10);
            List<AdSpacesBean.RulesBean> rules = forwardBean.getRules();
            if (rules != null && rules.size() > 0) {
                int size2 = rules.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    Integer[] results = rules.get(i11).getResults();
                    if (results != null && results.length >= 2) {
                        int iIntValue = results[0].intValue();
                        int iIntValue2 = results[1].intValue();
                        if (iIntValue <= iRandom && iRandom <= iIntValue2) {
                            list.add(forwardBean);
                        }
                    }
                }
            }
        }
    }

    private static boolean a(AdSpacesBean.RulesBean rulesBean, int i10) {
        boolean z10 = false;
        if (rulesBean == null) {
            return false;
        }
        try {
            String strReplace = rulesBean.getFormula().replace("x", i10 + "");
            int iA = c.a(strReplace);
            Integer[] results = rulesBean.getResults();
            ac.c("BeiZis", "formulaOrig = " + strReplace + ",isOneRuleMatch holderNum = " + i10);
            if (results != null && results.length >= 2) {
                ac.c("BeiZis", "formulaResult = " + iA + ",results[0] = " + results[0] + ",results[1] = " + results[1]);
                if (iA >= results[0].intValue() && iA <= results[1].intValue()) {
                    z10 = true;
                }
            }
            return rulesBean.getRules() != null ? z10 & b(rulesBean.getRules(), i10) : z10;
        } catch (Exception unused) {
            ac.c("BeiZis", "execute formula error!");
            return z10;
        }
    }

    public static void a(Context context, long j10, AdSpacesBean.FilterBean filterBean, com.beizi.fusion.events.b bVar, String str, String str2, String str3, com.beizi.fusion.c.a aVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        if (bVar != null) {
            ac.a("BeiZis", "channel = " + str2 + ",observer.mPlatformFilterStatus.getStatus() = " + bVar.f10268c.a() + ",observer.mChannelFilterStatus.getStatus(channelId) = " + bVar.f10270e.a(str2));
        }
        boolean zA = true;
        boolean z13 = !TextUtils.isEmpty(str2);
        if (bVar == null || !(bVar.f10268c.a() == 1 || bVar.f10270e.a(str2) == 2)) {
            if (bVar != null) {
                if (z13) {
                    bVar.f10270e.a(str2, -2);
                    return;
                } else {
                    bVar.f10268c.a(-2);
                    return;
                }
            }
            if (aVar == null || z13) {
                return;
            }
            aVar.a("status not PlatformFilterStatus.kPlatformFilterStatusBegin");
            return;
        }
        if (filterBean != null) {
            List<String> privilege = filterBean.getPrivilege();
            boolean zA2 = (privilege == null || privilege.size() <= 0) ? true : a(context, privilege);
            z12 = false;
            z11 = j10 > ((long) filterBean.getMinAdLoadTime());
            try {
                zA = u.a(filterBean.getFrequency(), str, c(str2), str3);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            z10 = zA;
            zA = zA2;
        } else {
            if (z13) {
                bVar.f10270e.a(str2, 3);
            } else {
                bVar.f10268c.a(2);
            }
            z10 = true;
            z11 = true;
            z12 = true;
        }
        if (!zA) {
            if (z13) {
                bVar.f10270e.a(str2, 5);
            } else {
                bVar.f10268c.a(4);
            }
        }
        if (!z11) {
            if (z13) {
                bVar.f10270e.a(str2, 6);
            } else {
                bVar.f10268c.a(5);
            }
        }
        if (!z10) {
            if (z13) {
                bVar.f10270e.a(str2, 7);
            } else {
                bVar.f10268c.a(6);
            }
        }
        if (!z12 && zA && z11 && z10) {
            if (z13) {
                bVar.f10270e.a(str2, 3);
            } else {
                bVar.f10268c.a(2);
            }
        }
    }

    public static int a(String str) {
        String strB;
        if (str == null || (strB = b(str)) == null) {
            return -1;
        }
        return Integer.parseInt(strB);
    }

    private static boolean a(Context context, List<String> list) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        for (String str : list) {
            if (-1 == packageManager.checkPermission(str, packageName)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("required permission not granted . permission = ");
                sb2.append(str);
                return false;
            }
        }
        return true;
    }

    public static AdSpacesBean.BuyerBean a(String str, List<AdSpacesBean.BuyerBean> list, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("buyerBeans != null ? ");
        sb2.append(list != null);
        ac.c("BeiZis", sb2.toString());
        if (list != null) {
            ac.c("BeiZis", "buyerBeans.size() = " + list.size());
        }
        if (list == null || list.size() <= 0) {
            return null;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            AdSpacesBean.BuyerBean buyerBean = list.get(i10);
            ac.c("BeiZis", "AdBuyer buyerBean.getUuid() = " + buyerBean.getBuyerSpaceUuId());
            if (buyerBean.getId() != null && buyerBean.getId().equals(str) && str2 != null && str2.equalsIgnoreCase(buyerBean.getBuyerSpaceUuId())) {
                return buyerBean;
            }
        }
        return null;
    }

    public static String a(List<AdSpacesBean.BuyerBean.RenderRulesBean> list, int i10) {
        Integer[] results;
        if (list == null) {
            return null;
        }
        try {
            if (list.size() == 0) {
                return null;
            }
            for (int i11 = 0; i11 < list.size(); i11++) {
                AdSpacesBean.BuyerBean.RenderRulesBean renderRulesBean = list.get(i11);
                if (renderRulesBean != null && (results = renderRulesBean.getResults()) != null && results.length >= 2 && i10 >= results[0].intValue() && i10 <= results[1].intValue()) {
                    String type = renderRulesBean.getType();
                    ac.c("BeiZis", "type = " + type + ";holderNum:" + i10);
                    return type;
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
