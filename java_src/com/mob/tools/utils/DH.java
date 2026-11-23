package com.mob.tools.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.view.View;
import com.mob.tools.MobLog;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class DH {

    public interface DHResponder {
        void onResponse(DHResponse dHResponse) throws Throwable;
    }

    public static class RequestBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final cn.fly.tools.utils.DH.RequestBuilder f75538a;

        public RequestBuilder checkDebbing() {
            this.f75538a.checkDebbing();
            return this;
        }

        public RequestBuilder checkNetworkAvailable() {
            this.f75538a.checkNetworkAvailable();
            return this;
        }

        public RequestBuilder checkPad() {
            this.f75538a.checkPad();
            return this;
        }

        public RequestBuilder checkUA() {
            this.f75538a.checkUA();
            return this;
        }

        public RequestBuilder cx() {
            this.f75538a.cx();
            return this;
        }

        public RequestBuilder debugable() {
            this.f75538a.debugable();
            return this;
        }

        public RequestBuilder devEnable() {
            this.f75538a.devEnable();
            return this;
        }

        public RequestBuilder getACIfo() {
            this.f75538a.getACIfo();
            return this;
        }

        public RequestBuilder getAInfo() {
            this.f75538a.getAInfo();
            return this;
        }

        public RequestBuilder getAInfoForPkg(String str, int i10) {
            this.f75538a.getAInfoForPkg(str, i10);
            return this;
        }

        public RequestBuilder getAInfoForPkgForce(boolean z10, String str, int i10) {
            this.f75538a.getAInfoForPkgForce(z10, str, i10);
            return this;
        }

        public RequestBuilder getALLD() {
            this.f75538a.getALLD();
            return this;
        }

        public RequestBuilder getAbis() {
            this.f75538a.getAbis();
            return this;
        }

        public RequestBuilder getAdvertisingID() {
            this.f75538a.getAdvertisingID();
            return this;
        }

        public RequestBuilder getAppLastUpdateTime() {
            this.f75538a.getAppLastUpdateTime();
            return this;
        }

        public RequestBuilder getAppName() {
            this.f75538a.getAppName();
            return this;
        }

        public RequestBuilder getAppNameForPkg(String str) {
            this.f75538a.getAppNameForPkg(str);
            return this;
        }

        public RequestBuilder getBaseband() {
            this.f75538a.getBaseband();
            return this;
        }

        public RequestBuilder getBdT() {
            this.f75538a.getBdT();
            return this;
        }

        public RequestBuilder getBoardFromSysProperty() {
            this.f75538a.getBoardFromSysProperty();
            return this;
        }

        public RequestBuilder getBoardPlatform() {
            this.f75538a.getBoardPlatform();
            return this;
        }

        public RequestBuilder getBssid() {
            this.f75538a.getBssid();
            return this;
        }

        public RequestBuilder getBssidForce(boolean z10) {
            this.f75538a.getBssidForce(z10);
            return this;
        }

        public RequestBuilder getBtM() {
            return this;
        }

        public RequestBuilder getCInfo() {
            this.f75538a.getCInfo();
            return this;
        }

        public RequestBuilder getCLoc() {
            this.f75538a.getCLoc();
            return this;
        }

        public RequestBuilder getCPUInfo() {
            this.f75538a.getCPUInfo();
            return this;
        }

        public RequestBuilder getCarrier() {
            this.f75538a.getCarrier();
            return this;
        }

        public RequestBuilder getCarrierForce(boolean z10) {
            this.f75538a.getCarrierForce(z10);
            return this;
        }

        public RequestBuilder getCarrierName() {
            this.f75538a.getCarrierName();
            return this;
        }

        public RequestBuilder getCarrierNameForce(boolean z10) {
            this.f75538a.getCarrierNameForce(z10);
            return this;
        }

        public RequestBuilder getCarrierNameStrict(boolean z10) {
            this.f75538a.getCarrierNameStrict(z10);
            return this;
        }

        public RequestBuilder getCarrierStrict(boolean z10) {
            this.f75538a.getCarrierStrict(z10);
            return this;
        }

        public RequestBuilder getCgroup() {
            this.f75538a.getCgroup();
            return this;
        }

        public RequestBuilder getCurrentWifiInfo() {
            this.f75538a.getCurrentWifiInfo();
            return this;
        }

        public RequestBuilder getDM(boolean z10) {
            this.f75538a.getDM(z10);
            return this;
        }

        public RequestBuilder getDataNtType() {
            this.f75538a.getDataNtType();
            return this;
        }

        public RequestBuilder getDataNtTypeStrict() {
            this.f75538a.getDataNtTypeStrict();
            return this;
        }

        public RequestBuilder getDetailNetworkTypeForStatic() {
            this.f75538a.getDetailNetworkTypeForStatic();
            return this;
        }

        public RequestBuilder getDeviceData() {
            this.f75538a.getDeviceData();
            return this;
        }

        public RequestBuilder getDeviceDataNotAES() {
            this.f75538a.getDeviceDataNotAES();
            return this;
        }

        public RequestBuilder getDeviceId() {
            return this;
        }

        public RequestBuilder getDeviceKey() {
            this.f75538a.getDeviceKey();
            return this;
        }

        public RequestBuilder getDeviceKeyFromCache(boolean z10) {
            this.f75538a.getDeviceKeyFromCache(z10);
            return this;
        }

        public RequestBuilder getDeviceName() {
            this.f75538a.getDeviceName();
            return this;
        }

        public RequestBuilder getDeviceType() {
            this.f75538a.getDeviceType();
            return this;
        }

        public RequestBuilder getDrID() {
            this.f75538a.getDrID();
            return this;
        }

        public RequestBuilder getFlavor() {
            this.f75538a.getFlavor();
            return this;
        }

        public RequestBuilder getGrammaticalGender() {
            this.f75538a.getGrammaticalGender();
            return this;
        }

        public RequestBuilder getHmEPMState() {
            this.f75538a.getHmEPMState();
            return this;
        }

        public RequestBuilder getHmOsDetailedVer() {
            this.f75538a.getHmOsDetailedVer();
            return this;
        }

        public RequestBuilder getHmOsVer() {
            this.f75538a.getHmOsVer();
            return this;
        }

        public RequestBuilder getHmPMState() {
            this.f75538a.getHmPMState();
            return this;
        }

        public RequestBuilder getIA(boolean z10) {
            this.f75538a.getIA(z10);
            return this;
        }

        public RequestBuilder getIAForce(boolean z10, boolean z11) {
            this.f75538a.getIAForce(z10, z11);
            return this;
        }

        public RequestBuilder getIMEI() {
            return this;
        }

        public RequestBuilder getIMSI() {
            return this;
        }

        public RequestBuilder getIPAddress() {
            this.f75538a.getIPAddress();
            return this;
        }

        public RequestBuilder getIPAddressStrict() {
            this.f75538a.getIPAddressStrict();
            return this;
        }

        public RequestBuilder getInnerAppLanguage() {
            this.f75538a.getInnerAppLanguage();
            return this;
        }

        public RequestBuilder getLATime(String str) {
            this.f75538a.getLATime(str);
            return this;
        }

        public RequestBuilder getLocation(int i10, int i11, boolean z10) {
            this.f75538a.getLocation(i10, i11, z10);
            return this;
        }

        public RequestBuilder getMIUIVersion() {
            this.f75538a.getMIUIVersion();
            return this;
        }

        public RequestBuilder getMbcdi() {
            this.f75538a.getMbcdi();
            return this;
        }

        public RequestBuilder getMbcdiForce(boolean z10) {
            this.f75538a.getMbcdiForce(z10);
            return this;
        }

        public RequestBuilder getMcdi() {
            this.f75538a.getMcdi();
            return this;
        }

        public RequestBuilder getMcdiForce(boolean z10) {
            this.f75538a.getMcdiForce(z10);
            return this;
        }

        public RequestBuilder getMemoryInfo() {
            this.f75538a.getMemoryInfo();
            return this;
        }

        public RequestBuilder getMnbclfo() {
            this.f75538a.getMnbclfo();
            return this;
        }

        public RequestBuilder getMpfo(String str, int i10) {
            this.f75538a.getMpfo(str, i10);
            return this;
        }

        public RequestBuilder getMpfof(boolean z10, String str, int i10) {
            this.f75538a.getMpfof(z10, str, i10);
            return this;
        }

        public RequestBuilder getMpfos(int i10, String str, int i11) {
            this.f75538a.getMpfos(i10, str, i11);
            return this;
        }

        public RequestBuilder getMwfo() {
            this.f75538a.getMwfo();
            return this;
        }

        public RequestBuilder getMwfoForce(boolean z10) {
            this.f75538a.getMwfoForce(z10);
            return this;
        }

        public RequestBuilder getMwlfo() {
            this.f75538a.getMwlfo();
            return this;
        }

        public RequestBuilder getNeighboringCellInfo() {
            this.f75538a.getNeighboringCellInfo();
            return this;
        }

        @Deprecated
        public RequestBuilder getNetworkType() {
            this.f75538a.getNetworkType();
            return this;
        }

        public RequestBuilder getNetworkTypeForStatic() {
            this.f75538a.getNetworkTypeForStatic();
            return this;
        }

        public RequestBuilder getNetworkTypeForce(boolean z10) {
            this.f75538a.getNetworkTypeForce(z10);
            return this;
        }

        public RequestBuilder getNetworkTypeNew() {
            this.f75538a.getNetworkTypeNew();
            return this;
        }

        public RequestBuilder getOD() {
            this.f75538a.getOD();
            return this;
        }

        public RequestBuilder getODH() {
            this.f75538a.getODH();
            return this;
        }

        public RequestBuilder getPInfo(String str, int i10) {
            this.f75538a.getPInfo(str, i10);
            return this;
        }

        public RequestBuilder getPInfoForce(boolean z10, String str, int i10) {
            this.f75538a.getPInfoForce(z10, str, i10);
            return this;
        }

        public RequestBuilder getPInfoStrategy(int i10, String str, int i11) {
            this.f75538a.getPInfoStrategy(i10, str, i11);
            return this;
        }

        public RequestBuilder getPPL(boolean z10) {
            this.f75538a.getPPL(z10);
            return this;
        }

        public RequestBuilder getPosCommForce(int i10, int i11, boolean z10, boolean z11) {
            this.f75538a.getPosCommForce(i10, i11, z10, z11);
            return this;
        }

        public RequestBuilder getQemuKernel() {
            this.f75538a.getQemuKernel();
            return this;
        }

        public RequestBuilder getRd() {
            this.f75538a.getRd();
            return this;
        }

        public RequestBuilder getSA() {
            this.f75538a.getSA();
            return this;
        }

        public RequestBuilder getSSID() {
            this.f75538a.getSSID();
            return this;
        }

        public RequestBuilder getSSIDForce(boolean z10) {
            this.f75538a.getSSIDForce(z10);
            return this;
        }

        public RequestBuilder getScreenInch() {
            this.f75538a.getScreenInch();
            return this;
        }

        public RequestBuilder getScreenPpi() {
            this.f75538a.getScreenPpi();
            return this;
        }

        public RequestBuilder getScreenSize() {
            this.f75538a.getScreenSize();
            return this;
        }

        public RequestBuilder getSdcardState() {
            return this;
        }

        public RequestBuilder getSecurePch() {
            this.f75538a.getSecurePch();
            return this;
        }

        public RequestBuilder getSerialno() {
            return this;
        }

        public RequestBuilder getSignMD5() {
            this.f75538a.getSignMD5();
            return this;
        }

        public RequestBuilder getSignMD5ForPkg(String str) {
            this.f75538a.getSignMD5ForPkg(str);
            return this;
        }

        public RequestBuilder getSimSerialNumber() {
            return this;
        }

        public RequestBuilder getSizeInfo() {
            this.f75538a.getSizeInfo();
            return this;
        }

        public RequestBuilder getSystemProperties(String str) {
            this.f75538a.getSystemProperties(str);
            return this;
        }

        public RequestBuilder getTTYDriversInfo() {
            this.f75538a.getTTYDriversInfo();
            return this;
        }

        public RequestBuilder getTopActivity() {
            return this;
        }

        public RequestBuilder getUpM() {
            return this;
        }

        public RequestBuilder isHmOs() {
            this.f75538a.isHmOs();
            return this;
        }

        public RequestBuilder isMwpy() {
            this.f75538a.isMwpy();
            return this;
        }

        public RequestBuilder isPackageInstalled(String str) {
            this.f75538a.isPackageInstalled(str);
            return this;
        }

        public RequestBuilder isRooted() {
            this.f75538a.isRooted();
            return this;
        }

        public RequestBuilder isWifiProxy() {
            this.f75538a.isWifiProxy();
            return this;
        }

        public RequestBuilder queryIMEI() {
            return this;
        }

        public RequestBuilder queryIMSI() {
            return this;
        }

        public RequestBuilder queryIntentServices(Intent intent, int i10) {
            this.f75538a.queryIntentServices(intent, i10);
            return this;
        }

        public void request(final DHResponder dHResponder) {
            this.f75538a.request(new cn.fly.tools.utils.DH.DHResponder() { // from class: com.mob.tools.utils.DH.RequestBuilder.1
                @Override // cn.fly.tools.utils.DH.DHResponder
                public void onResponse(cn.fly.tools.utils.DH.DHResponse dHResponse) throws Throwable {
                    dHResponder.onResponse(DHResponse.a(dHResponse));
                }
            });
        }

        public RequestBuilder resolveActivity(Intent intent, int i10) {
            this.f75538a.resolveActivity(intent, i10);
            return this;
        }

        public RequestBuilder usbEnable() {
            this.f75538a.usbEnable();
            return this;
        }

        public RequestBuilder vpn() {
            this.f75538a.vpn();
            return this;
        }

        private RequestBuilder(Context context) {
            this.f75538a = cn.fly.tools.utils.DH.requester(context);
        }
    }

    public static final class SyncMtd {
        public static String Base64AES(String str, String str2) {
            return Data.Base64AES(str, str2);
        }

        public static boolean checkPermission(String str) {
            return cn.fly.tools.utils.DH.SyncMtd.checkPermission(str);
        }

        public static Object currentActivityThread() {
            return cn.fly.tools.utils.DH.SyncMtd.currentActivityThread();
        }

        public static String getAppLanguage() {
            return cn.fly.tools.utils.DH.SyncMtd.getAppLanguage();
        }

        public static int getAppVersion() {
            return cn.fly.tools.utils.DH.SyncMtd.getAppVersion();
        }

        public static String getAppVersionName() {
            return cn.fly.tools.utils.DH.SyncMtd.getAppVersionName();
        }

        public static Context getApplication() {
            return cn.fly.tools.utils.DH.SyncMtd.getApplication();
        }

        public static String getBrand() {
            return cn.fly.tools.utils.DH.SyncMtd.getBrand();
        }

        public static String getCurrentProcessName() {
            return cn.fly.tools.utils.DH.SyncMtd.getCurrentProcessName();
        }

        public static String getManufacturer() {
            return cn.fly.tools.utils.DH.SyncMtd.getManufacturer();
        }

        public static String getModel() {
            return cn.fly.tools.utils.DH.SyncMtd.getModel();
        }

        public static String getOSCountry() {
            return cn.fly.tools.utils.DH.SyncMtd.getOSCountry();
        }

        public static String getOSLanguage() {
            return cn.fly.tools.utils.DH.SyncMtd.getOSLanguage();
        }

        public static int getOSVersionInt() {
            return cn.fly.tools.utils.DH.SyncMtd.getOSVersionInt();
        }

        public static String getOSVersionName() {
            return cn.fly.tools.utils.DH.SyncMtd.getOSVersionName();
        }

        public static String getPackageName() {
            return cn.fly.tools.utils.DH.SyncMtd.getPackageName();
        }

        public static int getPlatformCode() {
            return 1;
        }

        public static String getSandboxPath() {
            return cn.fly.tools.utils.DH.SyncMtd.getSandboxPath();
        }

        public static String getSystemProperties(String str) {
            return cn.fly.tools.utils.DH.SyncMtd.getSystemProperties(str);
        }

        public static Object getSystemServiceSafe(String str) {
            return cn.fly.tools.utils.DH.SyncMtd.getSystemServiceSafe(str);
        }

        public static String getTimezone() {
            return cn.fly.tools.utils.DH.SyncMtd.getTimezone();
        }

        public static void hideSoftInput(View view) {
            cn.fly.tools.utils.DH.SyncMtd.hideSoftInput(view);
        }

        public static <T> T invokeInstanceMethod(Object obj, String str, Object... objArr) {
            return (T) ReflectHelper.invokeInstanceMethodNoThrow(obj, str, null, objArr);
        }

        public static boolean isAut() {
            return cn.fly.tools.utils.DH.SyncMtd.isAut();
        }

        public static boolean isInMainProcess() {
            return cn.fly.tools.utils.DH.SyncMtd.isInMainProcess();
        }

        public static boolean isSupportPushRid() {
            return true;
        }

        public static void showSoftInput(View view) {
            cn.fly.tools.utils.DH.SyncMtd.showSoftInput(view);
        }

        public static <T> T invokeInstanceMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr) {
            try {
                return (T) ReflectHelper.invokeInstanceMethod(obj, str, objArr, clsArr);
            } catch (Throwable th) {
                if (!(th instanceof InvocationTargetException)) {
                    if (!(th instanceof PackageManager.NameNotFoundException)) {
                        MobLog.getInstance().d(th);
                        return null;
                    }
                    MobLog.getInstance().d("Exception: " + th.getClass().getName() + ": " + th.getMessage(), new Object[0]);
                    return null;
                }
                String name = th.getClass().getName();
                String message = th.getMessage();
                Throwable cause = th.getCause();
                if (cause != null) {
                    name = cause.getClass().getName();
                    message = cause.getMessage();
                }
                MobLog.getInstance().d("Exception: " + name + ": " + message, new Object[0]);
                return null;
            }
        }
    }

    public static RequestBuilder requester(Context context) {
        return new RequestBuilder(context);
    }

    public static class DHResponse {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final cn.fly.tools.utils.DH.DHResponse f75537a;

        public DHResponse() {
            this.f75537a = new cn.fly.tools.utils.DH.DHResponse();
        }

        static DHResponse a(cn.fly.tools.utils.DH.DHResponse dHResponse) {
            return new DHResponse(dHResponse);
        }

        public boolean checkDebbing() {
            return this.f75537a.checkDebbing();
        }

        public boolean checkNetworkAvailable() {
            return this.f75537a.checkNetworkAvailable();
        }

        public boolean checkPad() {
            return this.f75537a.checkPad();
        }

        public boolean checkUA() {
            return this.f75537a.checkUA();
        }

        public boolean cx() {
            return this.f75537a.cx();
        }

        public boolean debugable() {
            return this.f75537a.debugable();
        }

        public boolean devEnable() {
            return this.f75537a.devEnable();
        }

        public ArrayList<HashMap<String, Object>> getACIfo() {
            return this.f75537a.getACIfo();
        }

        public ApplicationInfo getAInfo() {
            return this.f75537a.getAInfo();
        }

        public ApplicationInfo getAInfoForPkg(int... iArr) {
            return this.f75537a.getAInfoForPkg(iArr);
        }

        public ApplicationInfo getAInfoForPkgForce(int... iArr) {
            return this.f75537a.getAInfoForPkgForce(iArr);
        }

        public HashMap<String, Object> getALLD() {
            return this.f75537a.getALLD();
        }

        public String getAbis() {
            return this.f75537a.getAbis();
        }

        public String getAdvertisingID() {
            return this.f75537a.getAdvertisingID();
        }

        public long getAppLastUpdateTime() {
            return this.f75537a.getAppLastUpdateTime();
        }

        public String getAppName() {
            return this.f75537a.getAppName();
        }

        public String getAppNameForPkg(int... iArr) {
            return this.f75537a.getAppNameForPkg(iArr);
        }

        public String getBaseband() {
            return this.f75537a.getBaseband();
        }

        public long getBdT() {
            return this.f75537a.getBdT();
        }

        public String getBoardFromSysProperty() {
            return this.f75537a.getBoardFromSysProperty();
        }

        public String getBoardPlatform() {
            return this.f75537a.getBoardPlatform();
        }

        public String getBssid() {
            return this.f75537a.getBssid();
        }

        public String getBssidForce(int... iArr) {
            return this.f75537a.getBssidForce(iArr);
        }

        public String getBtM() {
            return this.f75537a.getBtM();
        }

        public String getCInfo() {
            return this.f75537a.getCInfo();
        }

        public Object getCLoc() {
            return this.f75537a.getCLoc();
        }

        public HashMap<String, Object> getCPUInfo() {
            return this.f75537a.getCPUInfo();
        }

        public String getCarrier() {
            return this.f75537a.getCarrier();
        }

        public String getCarrierForce(int... iArr) {
            return this.f75537a.getCarrierForce(iArr);
        }

        public String getCarrierName() {
            return this.f75537a.getCarrierName();
        }

        public String getCarrierNameForce(int... iArr) {
            return this.f75537a.getCarrierNameForce(iArr);
        }

        public String getCarrierNameStrict(int... iArr) {
            return this.f75537a.getCarrierNameStrict(iArr);
        }

        public String getCarrierStrict(int... iArr) {
            return this.f75537a.getCarrierStrict(iArr);
        }

        public String getCgroup() {
            return this.f75537a.getCgroup();
        }

        public HashMap<String, Object> getCurrentWifiInfo() {
            return this.f75537a.getCurrentWifiInfo();
        }

        public String getDM() {
            return this.f75537a.getDM();
        }

        public int getDataNtType() {
            return this.f75537a.getDataNtType();
        }

        public int getDataNtTypeStrict() {
            return this.f75537a.getDataNtTypeStrict();
        }

        public String getDetailNetworkTypeForStatic() {
            return this.f75537a.getDetailNetworkTypeForStatic();
        }

        public String getDeviceData() {
            return this.f75537a.getDeviceData();
        }

        public String getDeviceDataNotAES() {
            return this.f75537a.getDeviceDataNotAES();
        }

        public String getDeviceId() {
            return null;
        }

        public String getDeviceKey() {
            return this.f75537a.getDeviceKey();
        }

        public String getDeviceKeyFromCache(int... iArr) {
            return this.f75537a.getDeviceKeyFromCache(iArr);
        }

        public String getDeviceName() {
            return this.f75537a.getDeviceName();
        }

        public String getDeviceType() {
            return this.f75537a.getDeviceType();
        }

        public String getDrID() {
            return this.f75537a.getDrID();
        }

        public String getFlavor() {
            return this.f75537a.getFlavor();
        }

        public int getGrammaticalGender() {
            return this.f75537a.getGrammaticalGender();
        }

        public int getHmEPMState() {
            return this.f75537a.getHmEPMState();
        }

        public String getHmOsDetailedVer() {
            return this.f75537a.getHmOsDetailedVer();
        }

        public String getHmOsVer() {
            return this.f75537a.getHmOsVer();
        }

        public int getHmPMState() {
            return this.f75537a.getHmPMState();
        }

        public ArrayList<HashMap<String, String>> getIA(int... iArr) {
            return this.f75537a.getIA(iArr);
        }

        public ArrayList<HashMap<String, String>> getIAForce(int... iArr) {
            return this.f75537a.getIAForce(iArr);
        }

        public String getIMEI() {
            return null;
        }

        public String getIMSI() {
            return null;
        }

        public String getIPAddress() {
            return this.f75537a.getIPAddress();
        }

        public String getIPAddressStrict() {
            return this.f75537a.getIPAddressStrict();
        }

        public String getInnerAppLanguage() {
            return this.f75537a.getInnerAppLanguage();
        }

        public long getLATime(int... iArr) {
            return this.f75537a.getLATime(iArr);
        }

        public Location getLocation(int... iArr) {
            return this.f75537a.getLocation(iArr);
        }

        public String getMIUIVersion() {
            return this.f75537a.getMIUIVersion();
        }

        public String getMbcdi() {
            return this.f75537a.getMbcdi();
        }

        public String getMbcdiForce(int... iArr) {
            return this.f75537a.getMbcdiForce(iArr);
        }

        public String getMcdi() {
            return this.f75537a.getMcdi();
        }

        public String getMcdiForce(int... iArr) {
            return this.f75537a.getMcdiForce(iArr);
        }

        public HashMap<String, Long> getMemoryInfo() {
            return this.f75537a.getMemoryInfo();
        }

        public ArrayList<HashMap<String, Object>> getMnbclfo() {
            return this.f75537a.getMnbclfo();
        }

        public Object getMpfo(int... iArr) {
            return this.f75537a.getMpfo(iArr);
        }

        public Object getMpfof(int... iArr) {
            return this.f75537a.getMpfof(iArr);
        }

        public Object getMpfos(int... iArr) {
            return this.f75537a.getMpfos(iArr);
        }

        public HashMap<String, Object> getMwfo() {
            return this.f75537a.getMwfo();
        }

        public HashMap<String, Object> getMwfoForce(int... iArr) {
            return this.f75537a.getMwfoForce(iArr);
        }

        public ArrayList<HashMap<String, Object>> getMwlfo() {
            return this.f75537a.getMwlfo();
        }

        public ArrayList<HashMap<String, Object>> getNeighboringCellInfo() {
            return this.f75537a.getNeighboringCellInfo();
        }

        public String getNetworkType() {
            return this.f75537a.getNetworkType();
        }

        public String getNetworkTypeForStatic() {
            return this.f75537a.getNetworkTypeForStatic();
        }

        public String getNetworkTypeForce(int... iArr) {
            return this.f75537a.getNetworkTypeForce(iArr);
        }

        public String getNetworkTypeNew() {
            return this.f75537a.getNetworkTypeNew();
        }

        public String getOD() {
            return this.f75537a.getOD();
        }

        public String getODH() {
            return this.f75537a.getODH();
        }

        public PackageInfo getPInfo(int... iArr) {
            return this.f75537a.getPInfo(iArr);
        }

        public PackageInfo getPInfoForce(int... iArr) {
            return this.f75537a.getPInfoForce(iArr);
        }

        public PackageInfo getPInfoStrategy(int... iArr) {
            return this.f75537a.getPInfoStrategy(iArr);
        }

        public Set<String> getPPL(int... iArr) {
            return this.f75537a.getPPL(iArr);
        }

        public List<HashMap<String, Object>> getPosCommForce(int... iArr) {
            return this.f75537a.getPosCommForce(iArr);
        }

        public String getQemuKernel() {
            return this.f75537a.getQemuKernel();
        }

        public String getRd() {
            return this.f75537a.getRd();
        }

        public ArrayList<HashMap<String, String>> getSA() {
            return this.f75537a.getSA();
        }

        public String getSSID() {
            return this.f75537a.getSSID();
        }

        public String getSSIDForce(int... iArr) {
            return this.f75537a.getSSIDForce(iArr);
        }

        public double getScreenInch() {
            return this.f75537a.getScreenInch();
        }

        public int getScreenPpi() {
            return this.f75537a.getScreenPpi();
        }

        public String getScreenSize() {
            return this.f75537a.getScreenSize();
        }

        public boolean getSdcardState() {
            return false;
        }

        public String getSecurePch() {
            return this.f75537a.getSecurePch();
        }

        public String getSerialno() {
            return null;
        }

        public String getSignMD5() {
            return this.f75537a.getSignMD5();
        }

        public String getSignMD5ForPkg(int... iArr) {
            return this.f75537a.getSignMD5ForPkg(iArr);
        }

        public String getSimSerialNumber() {
            return null;
        }

        public HashMap<String, HashMap<String, Long>> getSizeInfo() {
            return this.f75537a.getSizeInfo();
        }

        public String getSystemProperties(int... iArr) {
            return this.f75537a.getSystemProperties(iArr);
        }

        public ArrayList<ArrayList<String>> getTTYDriversInfo() {
            return this.f75537a.getTTYDriversInfo();
        }

        public Activity getTopActivity() {
            return null;
        }

        public String getUpM() {
            return this.f75537a.getUpM();
        }

        public boolean isHmOs() {
            return this.f75537a.isHmOs();
        }

        public boolean isMwpy() {
            return this.f75537a.isMwpy();
        }

        public boolean isPackageInstalled(int... iArr) {
            return this.f75537a.isPackageInstalled(iArr);
        }

        public boolean isRooted() {
            return this.f75537a.isRooted();
        }

        public boolean isWifiProxy() {
            return this.f75537a.isWifiProxy();
        }

        public String[] queryIMEI() {
            return null;
        }

        public String[] queryIMSI() {
            return null;
        }

        public List<ResolveInfo> queryIntentServices(int... iArr) {
            return this.f75537a.queryIntentServices(iArr);
        }

        public ResolveInfo resolveActivity(int... iArr) {
            return this.f75537a.resolveActivity(iArr);
        }

        public boolean usbEnable() {
            return this.f75537a.usbEnable();
        }

        public boolean vpn() {
            return this.f75537a.vpn();
        }

        private DHResponse(cn.fly.tools.utils.DH.DHResponse dHResponse) {
            this.f75537a = dHResponse;
        }
    }
}
