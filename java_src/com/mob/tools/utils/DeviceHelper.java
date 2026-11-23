package com.mob.tools.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.view.View;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceHelper implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static DeviceHelper f75541a = new DeviceHelper();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Context f75542b;

    public static Object currentActivityThread() {
        return cn.fly.tools.utils.DeviceHelper.currentActivityThread();
    }

    public static synchronized DeviceHelper getInstance(Context context) {
        if (f75541a.f75542b == null && context != null) {
            f75541a.f75542b = context.getApplicationContext();
        }
        return f75541a;
    }

    public String Base64AES(String str, String str2) {
        return Data.Base64AES(str, str2);
    }

    public boolean checkNetworkAvailable() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).checkNetworkAvailable();
    }

    public boolean checkPad() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).checkPad();
    }

    public boolean checkPermission(String str) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).checkPermission(str);
    }

    public boolean checkUA() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).checkUA();
    }

    public boolean cx() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).cx();
    }

    public boolean debugable() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).debugable();
    }

    public boolean devEnable() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).devEnable();
    }

    public ApplicationInfo getAInfo() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAInfo();
    }

    public HashMap<String, Object> getALLD() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getALLD();
    }

    public String getAdvertisingID() throws Throwable {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAdvertisingID();
    }

    public String getAppLanguage() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAppLanguage();
    }

    public long getAppLastUpdateTime() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAppLastUpdateTime();
    }

    public String getAppName() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAppName();
    }

    public int getAppVersion() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAppVersion();
    }

    public String getAppVersionName() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAppVersionName();
    }

    public Context getApplication() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getApplication();
    }

    public ArrayList<HashMap<String, Object>> getAvailableWifiListOneKey() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAvailableWifiListOneKey();
    }

    public String getBaseband() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getBaseband();
    }

    public String getBoardFromSysProperty() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getBoardFromSysProperty();
    }

    public String getBoardPlatform() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getBoardPlatform();
    }

    public String getBrand() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getBrand();
    }

    public String getBssid() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getBssid();
    }

    public String getCInfo() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getCInfo();
    }

    public HashMap<String, Object> getCPUInfo() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getCPUInfo();
    }

    public String getCarrier() {
        return getCarrier(false);
    }

    public String getCarrierName() {
        return getCarrierName(false);
    }

    public String getCgroup() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getCgroup();
    }

    public String getCurrentProcessName() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getCurrentProcessName();
    }

    public HashMap<String, Object> getCurrentWifiInfo() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getCurrentWifiInfo();
    }

    public int getDataNtType() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getDataNtType();
    }

    public String getDefaultIMPkg() {
        return null;
    }

    public String getDetailNetworkTypeForStatic() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getDetailNetworkTypeForStatic();
    }

    public String getDeviceData() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getDeviceData();
    }

    public String getDeviceDataNotAES() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getDeviceDataNotAES();
    }

    public String getDeviceId() {
        return null;
    }

    public String getDeviceKey() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getDeviceKey();
    }

    public String getDeviceName() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getDeviceName();
    }

    public String getDeviceType() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getDeviceType();
    }

    public String getFlavor() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getFlavor();
    }

    public ArrayList<HashMap<String, String>> getIA(boolean z10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getIA(z10);
    }

    public String getIMEI() {
        return null;
    }

    public String getIMSI() {
        return null;
    }

    public String getIPAddress() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getIPAddress();
    }

    public Location getLocation(int i10, int i11, boolean z10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getLocation(i10, i11, z10);
    }

    public String getMIUIVersion() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getMIUIVersion();
    }

    public String getManufacturer() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getManufacturer();
    }

    public HashMap<String, Long> getMemoryInfo() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getMemoryInfo();
    }

    public String getModel() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getModel();
    }

    public ArrayList<HashMap<String, Object>> getNeighboringCellInfo() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getNeighboringCellInfo();
    }

    public String getNetworkType() {
        return getNetworkType(false);
    }

    public String getNetworkTypeForStatic() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getNetworkTypeForStatic();
    }

    public String getOD() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getOD();
    }

    public String getODH() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getODH();
    }

    public String getOSCountry() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getOSCountry();
    }

    public String getOSLanguage() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getOSLanguage();
    }

    public int getOSVersionInt() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getOSVersionInt();
    }

    public String getOSVersionName() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getOSVersionName();
    }

    public PackageInfo getPInfo(String str, int i10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getPInfo(str, i10);
    }

    public String getPackageName() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getPackageName();
    }

    public int getPlatformCode() {
        return 1;
    }

    public String getQemuKernel() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getQemuKernel();
    }

    public ArrayList<HashMap<String, String>> getSA() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getSA();
    }

    public String getSSID() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getSSID();
    }

    public String getScreenSize() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getScreenSize();
    }

    public String getSdcardPath() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getSdcardPath();
    }

    public boolean getSdcardState() {
        return false;
    }

    public String getSerialno() {
        return null;
    }

    public String getSignMD5() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getSignMD5();
    }

    public String getSimSerialNumber() {
        return null;
    }

    public HashMap<String, HashMap<String, Long>> getSizeInfo() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getSizeInfo();
    }

    public String getSystemProperties(String str) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getSystemProperties(str);
    }

    public Object getSystemServiceSafe(String str) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getSystemServiceSafe(str);
    }

    public ArrayList<ArrayList<String>> getTTYDriversInfo() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getTTYDriversInfo();
    }

    public String getTimezone() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getTimezone();
    }

    public Activity getTopActivity() {
        return null;
    }

    public void hideSoftInput(View view) {
        com.mob.commons.a.a(view);
    }

    public <T> T invokeInstanceMethod(Object obj, String str, Object... objArr) {
        return (T) ReflectHelper.invokeInstanceMethodNoThrow(obj, str, null, objArr);
    }

    public boolean isInMainProcess() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).isInMainProcess();
    }

    public boolean isPackageInstalled(String str) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).isPackageInstalled(str);
    }

    public boolean isRooted() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).isRooted();
    }

    public boolean isWifiProxy() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).isWifiProxy();
    }

    public String[] queryIMEI() {
        return null;
    }

    public String[] queryIMSI() {
        return null;
    }

    public List<ResolveInfo> queryIntentServices(Intent intent, int i10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).queryIntentServices(intent, i10);
    }

    public ResolveInfo resolveActivity(Intent intent, int i10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).resolveActivity(intent, i10);
    }

    public void showSoftInput(View view) {
        com.mob.commons.a.b(view);
    }

    public boolean usbEnable() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).usbEnable();
    }

    public boolean vpn() {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).vpn();
    }

    public ApplicationInfo getAInfo(String str, int i10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAInfo(str, i10);
    }

    public String getAppName(String str) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAppName(str);
    }

    public String getCarrier(boolean z10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getCarrier(z10);
    }

    public String getCarrierName(boolean z10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getCarrierName(z10);
    }

    public String getDeviceKey(boolean z10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getDeviceKey(z10);
    }

    public String getNetworkType(boolean z10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getNetworkType(z10);
    }

    public PackageInfo getPInfo(boolean z10, String str, int i10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getPInfo(z10, str, i10);
    }

    public String getSignMD5(String str) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getSignMD5(str);
    }

    public <T> T invokeInstanceMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr) {
        return (T) ReflectHelper.invokeInstanceMethod(obj, str, objArr, clsArr, null);
    }

    public ApplicationInfo getAInfo(boolean z10, String str, int i10) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getAInfo(z10, str, i10);
    }

    public PackageInfo getPInfo(int i10, String str, int i11) {
        return cn.fly.tools.utils.DeviceHelper.getInstance(this.f75542b).getPInfo(i10, str, i11);
    }
}
