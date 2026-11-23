package com.netease.nis.quicklogin.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.widget.TextView;
import com.cmic.gen.sdk.auth.GenAuthnHelper;
import com.google.gson.GsonBuilder;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.entity.CMPrefetchNumber;
import com.netease.nis.quicklogin.entity.CTLoginAuth;
import com.netease.nis.quicklogin.entity.CTPrefetchNumber;
import com.netease.nis.quicklogin.entity.PreCheckEntity;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    /* JADX WARN: Code duplicated, block: B:19:0x0057  */
    public static int a(Context context) throws JSONException {
        boolean z10;
        JSONObject networkType = GenAuthnHelper.getInstance(context).getNetworkType(context);
        Logger.d("checkNetWork [callback]" + networkType.toString());
        if (networkType.has("networktype")) {
            String string = networkType.getString("networktype");
            if (!"1".equals(string) && !"3".equals(string)) {
                if (!string.equals("2")) {
                    z10 = false;
                } else if (!d(context)) {
                    return 4;
                }
            }
            z10 = true;
        } else if (d(context)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return 5;
        }
        if (!networkType.has("operatortype")) {
            return c(context);
        }
        String string2 = networkType.getString("operatortype");
        if ("1".equals(string2)) {
            return 2;
        }
        if ("2".equals(string2)) {
            return 3;
        }
        return "3".equals(string2) ? 1 : 5;
    }

    public static int b(Context context) throws JSONException {
        JSONObject networkType = GenAuthnHelper.getInstance(context).getNetworkType(context);
        if (!networkType.has("operatortype")) {
            return 5;
        }
        String string = networkType.getString("operatortype");
        if ("1".equals(string)) {
            return 2;
        }
        if ("2".equals(string)) {
            return 3;
        }
        return "3".equals(string) ? 1 : 5;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0096  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static int c(Context context) {
        byte b10;
        try {
            String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
            if (!TextUtils.isEmpty(simOperator)) {
                int iHashCode = simOperator.hashCode();
                if (iHashCode != 49679502) {
                    switch (iHashCode) {
                        case 49679470:
                            if (!simOperator.equals("46000")) {
                                b10 = -1;
                            } else {
                                b10 = 6;
                            }
                            break;
                        case 49679471:
                            if (!simOperator.equals("46001")) {
                                b10 = -1;
                            } else {
                                b10 = 3;
                            }
                            break;
                        case 49679472:
                            if (!simOperator.equals("46002")) {
                                b10 = -1;
                            } else {
                                b10 = 7;
                            }
                            break;
                        case 49679473:
                            if (!simOperator.equals("46003")) {
                                b10 = -1;
                            } else {
                                b10 = 0;
                            }
                            break;
                        case 49679474:
                            if (!simOperator.equals("46004")) {
                                b10 = -1;
                            } else {
                                b10 = 8;
                            }
                            break;
                        case 49679475:
                            if (!simOperator.equals("46005")) {
                                b10 = -1;
                            } else {
                                b10 = 1;
                            }
                            break;
                        case 49679476:
                            if (!simOperator.equals("46006")) {
                                b10 = -1;
                            } else {
                                b10 = 4;
                            }
                            break;
                        case 49679477:
                            if (!simOperator.equals("46007")) {
                                b10 = -1;
                            } else {
                                b10 = 9;
                            }
                            break;
                        case 49679478:
                            if (!simOperator.equals("46008")) {
                                b10 = -1;
                            } else {
                                b10 = 10;
                            }
                            break;
                        case 49679479:
                            if (!simOperator.equals("46009")) {
                                b10 = -1;
                            } else {
                                b10 = 5;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                } else if (simOperator.equals("46011")) {
                    b10 = 2;
                } else {
                    b10 = -1;
                }
                switch (b10) {
                    case 0:
                    case 1:
                    case 2:
                        return 1;
                    case 3:
                    case 4:
                    case 5:
                        return 3;
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        return 2;
                    default:
                        return 5;
                }
            }
        } catch (Exception e10) {
            Logger.e(e10.getMessage());
        }
        return 5;
    }

    private static boolean d(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Exception e10) {
            Logger.e(e10.getMessage());
            return false;
        }
    }

    public static int b(String str) {
        return a(str, -1);
    }

    public static String a(String str) {
        byte[] bytes = str.getBytes();
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bytes) {
            int i10 = b10 & 255;
            if (Integer.toHexString(i10).length() == 1) {
                sb2.append("0");
                sb2.append(Integer.toHexString(i10));
            } else {
                sb2.append(Integer.toHexString(i10));
            }
        }
        return sb2.toString();
    }

    public static Object a(String str, Class cls) {
        try {
            Object objNewInstance = cls.newInstance();
            if (objNewInstance instanceof PreCheckEntity) {
                return new GsonBuilder().create().fromJson(str, PreCheckEntity.class);
            }
            if (objNewInstance instanceof PreCheckEntity.Data) {
                return new GsonBuilder().create().fromJson(str, PreCheckEntity.Data.class);
            }
            if (objNewInstance instanceof CTPrefetchNumber) {
                return new GsonBuilder().create().fromJson(str, CTPrefetchNumber.class);
            }
            if (objNewInstance instanceof CMPrefetchNumber) {
                return new GsonBuilder().create().fromJson(str, CMPrefetchNumber.class);
            }
            if (objNewInstance instanceof CTLoginAuth) {
                return new GsonBuilder().create().fromJson(str, CTLoginAuth.class);
            }
            return null;
        } catch (Exception e10) {
            Logger.e(e10.getMessage());
            return null;
        }
    }

    private static int a(String str, int i10) {
        if (str == null) {
            return i10;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public static void a(int i10, UnifyUiConfig unifyUiConfig, TextView textView) {
        SpannableString spannableStringA = a(i10, unifyUiConfig, unifyUiConfig.getPrivacyTextStart(), unifyUiConfig.getPrivacyTextEnd());
        if (unifyUiConfig.getPrivacyTextStartSize() != 0.0f) {
            spannableStringA.setSpan(new AbsoluteSizeSpan(i.b(textView.getContext(), unifyUiConfig.getPrivacyTextStartSize())), 0, unifyUiConfig.getPrivacyTextStart().length(), 33);
        }
        textView.setHighlightColor(0);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableStringA);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x01ff  */
    public static SpannableString a(int i10, UnifyUiConfig unifyUiConfig, String str, String str2) {
        String str3;
        String str4;
        String cuProtocolNavTitle;
        int i11;
        com.netease.nis.quicklogin.ui.a aVar;
        com.netease.nis.quicklogin.ui.a aVar2;
        com.netease.nis.quicklogin.ui.a aVar3;
        boolean zIsHidePrivacySmh = unifyUiConfig.isHidePrivacySmh();
        String str5 = "";
        if (!zIsHidePrivacySmh) {
            str5 = "《";
        }
        if (i10 == 1) {
            str3 = str5 + e.f76143e;
            str4 = e.f76144f;
            cuProtocolNavTitle = unifyUiConfig.getCuProtocolNavTitle();
        } else if (i10 != 2) {
            str3 = str5 + e.f76140b;
            str4 = e.f76141c;
            cuProtocolNavTitle = unifyUiConfig.getCmProtocolNavTitle();
        } else {
            str3 = str5 + e.f76146h;
            str4 = e.f76147i;
            cuProtocolNavTitle = unifyUiConfig.getCtProtocolNavTitle();
        }
        if (TextUtils.isEmpty(cuProtocolNavTitle)) {
            cuProtocolNavTitle = unifyUiConfig.getProtocolNavTitle();
        }
        if (!zIsHidePrivacySmh) {
            str3 = str3 + "》";
        }
        String protocolText = unifyUiConfig.getProtocolText();
        String protocol2Text = unifyUiConfig.getProtocol2Text();
        String protocol3Text = unifyUiConfig.getProtocol3Text();
        String protocolConnect = unifyUiConfig.getProtocolConnect();
        String userProtocolConnect = unifyUiConfig.getUserProtocolConnect();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str3);
        if (!TextUtils.isEmpty(protocolText)) {
            sb2.append(protocolConnect);
            sb2.append(protocolText);
        }
        if (!TextUtils.isEmpty(protocol2Text)) {
            sb2.append(userProtocolConnect);
            sb2.append(protocol2Text);
        }
        if (!TextUtils.isEmpty(protocol3Text)) {
            sb2.append(userProtocolConnect);
            sb2.append(protocol3Text);
        }
        sb2.append(str2);
        String string = sb2.toString();
        SpannableString spannableString = new SpannableString(string);
        int i12 = 33;
        spannableString.setSpan(new com.netease.nis.quicklogin.ui.a(unifyUiConfig.getClickEventListener(), str4, cuProtocolNavTitle, 1), string.indexOf(str3), string.indexOf(str3) + str3.length(), 33);
        int iIndexOf = string.indexOf(str3);
        int privacyProtocolColor = unifyUiConfig.getPrivacyProtocolColor();
        if (privacyProtocolColor != 0) {
            spannableString.setSpan(new ForegroundColorSpan(privacyProtocolColor), string.indexOf(str3), iIndexOf + str3.length(), 33);
            if (!TextUtils.isEmpty(protocolText)) {
                int iIndexOf2 = string.indexOf(protocolText, iIndexOf + str3.length());
                spannableString.setSpan(new ForegroundColorSpan(privacyProtocolColor), iIndexOf2, protocolText.length() + iIndexOf2, 33);
                if (!TextUtils.isEmpty(unifyUiConfig.getCustomProtocolNavTitle())) {
                    aVar3 = new com.netease.nis.quicklogin.ui.a(unifyUiConfig.getClickEventListener(), unifyUiConfig.getProtocolLink(), unifyUiConfig.getCustomProtocolNavTitle(), 2);
                } else {
                    aVar3 = new com.netease.nis.quicklogin.ui.a(unifyUiConfig.getClickEventListener(), unifyUiConfig.getProtocolLink(), protocolText, 2);
                }
                i12 = 33;
                spannableString.setSpan(aVar3, iIndexOf2, protocolText.length() + iIndexOf2, 33);
            }
            if (!TextUtils.isEmpty(protocol2Text)) {
                int iIndexOf3 = string.indexOf(protocol2Text, string.indexOf(userProtocolConnect));
                spannableString.setSpan(new ForegroundColorSpan(privacyProtocolColor), iIndexOf3, protocol2Text.length() + iIndexOf3, i12);
                if (!TextUtils.isEmpty(unifyUiConfig.getCustomProtocol2NavTitle())) {
                    aVar2 = new com.netease.nis.quicklogin.ui.a(unifyUiConfig.getClickEventListener(), unifyUiConfig.getProtocol2Link(), unifyUiConfig.getCustomProtocol2NavTitle(), 3);
                } else {
                    aVar2 = new com.netease.nis.quicklogin.ui.a(unifyUiConfig.getClickEventListener(), unifyUiConfig.getProtocol2Link(), protocol2Text, 3);
                }
                i12 = 33;
                spannableString.setSpan(aVar2, iIndexOf3, protocol2Text.length() + iIndexOf3, 33);
            }
            if (TextUtils.isEmpty(protocol3Text)) {
                i11 = 33;
            } else {
                int iIndexOf4 = string.indexOf(protocol3Text, string.indexOf(userProtocolConnect));
                spannableString.setSpan(new ForegroundColorSpan(privacyProtocolColor), iIndexOf4, protocol3Text.length() + iIndexOf4, i12);
                if (!TextUtils.isEmpty(unifyUiConfig.getCustomProtocol3NavTitle())) {
                    aVar = new com.netease.nis.quicklogin.ui.a(unifyUiConfig.getClickEventListener(), unifyUiConfig.getProtocol3Link(), unifyUiConfig.getCustomProtocol3NavTitle(), 4);
                } else {
                    aVar = new com.netease.nis.quicklogin.ui.a(unifyUiConfig.getClickEventListener(), unifyUiConfig.getProtocol3Link(), protocol3Text, 4);
                }
                i11 = 33;
                spannableString.setSpan(aVar, iIndexOf4, protocol3Text.length() + iIndexOf4, 33);
            }
        } else {
            i11 = 33;
        }
        int privacyTextColor = unifyUiConfig.getPrivacyTextColor();
        if (privacyTextColor != 0) {
            spannableString.setSpan(new ForegroundColorSpan(privacyTextColor), string.indexOf(str), string.indexOf(str3), i11);
            if (!TextUtils.isEmpty(protocolText)) {
                int iIndexOf5 = string.indexOf(protocolConnect);
                spannableString.setSpan(new ForegroundColorSpan(privacyTextColor), iIndexOf5, protocolConnect.length() + iIndexOf5, i11);
            }
            if (!TextUtils.isEmpty(protocol2Text)) {
                int iIndexOf6 = string.indexOf(userProtocolConnect);
                spannableString.setSpan(new ForegroundColorSpan(privacyTextColor), iIndexOf6, userProtocolConnect.length() + iIndexOf6, i11);
            }
            if (!TextUtils.isEmpty(protocol3Text)) {
                int iLastIndexOf = string.lastIndexOf(userProtocolConnect);
                spannableString.setSpan(new ForegroundColorSpan(privacyTextColor), iLastIndexOf, userProtocolConnect.length() + iLastIndexOf, i11);
            }
            if (!TextUtils.isEmpty(str2)) {
                spannableString.setSpan(new ForegroundColorSpan(privacyTextColor), string.indexOf(str2), string.length(), i11);
            }
        }
        return spannableString;
    }

    public static boolean a(WeakReference weakReference) {
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }
}
