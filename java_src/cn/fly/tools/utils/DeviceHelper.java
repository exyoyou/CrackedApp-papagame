package cn.fly.tools.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.view.View;
import cn.fly.commons.C1293r;
import cn.fly.tools.proguard.PublicMemberKeeper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class DeviceHelper implements PublicMemberKeeper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static DeviceHelper f2133b = new DeviceHelper();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f2134a;

    public static Object currentActivityThread() {
        return C1293r.b();
    }

    public static synchronized DeviceHelper getInstance(Context context) {
        DeviceHelper deviceHelper = f2133b;
        if (deviceHelper.f2134a == null && context != null) {
            deviceHelper.f2134a = context.getApplicationContext();
        }
        return f2133b;
    }

    public String Base64AES(String str, String str2) {
        return Data.Base64AES(str, str2);
    }

    public boolean checkNetworkAvailable() {
        return cn.fly.tools.b.c.a(this.f2134a).d().j(false);
    }

    public boolean checkPad() {
        return cn.fly.tools.b.c.a(this.f2134a).d().c();
    }

    public boolean checkPermission(String str) {
        return cn.fly.tools.b.c.a(this.f2134a).d().e(str);
    }

    public boolean checkUA() {
        return cn.fly.tools.b.c.a(this.f2134a).d().f();
    }

    public boolean cx() {
        return cn.fly.tools.b.c.a(this.f2134a).d().b();
    }

    public boolean debugable() {
        return cn.fly.tools.b.c.a(this.f2134a).d().d();
    }

    public boolean devEnable() {
        return cn.fly.tools.b.c.a(this.f2134a).d().g();
    }

    public ApplicationInfo getAInfo() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ar();
    }

    public HashMap<String, Object> getALLD() {
        return cn.fly.tools.b.c.a(this.f2134a).d().aq();
    }

    public String getAdvertisingID() throws Throwable {
        return cn.fly.tools.b.c.a(this.f2134a).d().j();
    }

    public String getAppLanguage() {
        return cn.fly.tools.b.c.a(this.f2134a).d().I();
    }

    public long getAppLastUpdateTime() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ak();
    }

    public String getAppName() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ab();
    }

    public int getAppVersion() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ac();
    }

    public String getAppVersionName() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ad();
    }

    public Context getApplication() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ah();
    }

    public ArrayList<HashMap<String, Object>> getAvailableWifiListOneKey() {
        return cn.fly.tools.b.c.a(this.f2134a).d().as();
    }

    public String getBaseband() {
        return cn.fly.tools.b.c.a(this.f2134a).d().Q();
    }

    public String getBoardFromSysProperty() {
        return cn.fly.tools.b.c.a(this.f2134a).d().R();
    }

    public String getBoardPlatform() {
        return cn.fly.tools.b.c.a(this.f2134a).d().S();
    }

    public String getBrand() {
        return cn.fly.tools.b.c.a(this.f2134a).d().q();
    }

    public String getBssid() {
        return cn.fly.tools.b.c.a(this.f2134a).d().b(false);
    }

    public String getCInfo() {
        return cn.fly.tools.b.c.a(this.f2134a).d().an();
    }

    public HashMap<String, Object> getCPUInfo() {
        return cn.fly.tools.b.c.a(this.f2134a).d().C();
    }

    public String getCarrier() {
        return getCarrier(false);
    }

    public String getCarrierName() {
        return getCarrierName(false);
    }

    public String getCgroup() {
        return cn.fly.tools.b.c.a(this.f2134a).d().am();
    }

    public String getCurrentProcessName() {
        return cn.fly.tools.b.c.a(this.f2134a).d().af();
    }

    public HashMap<String, Object> getCurrentWifiInfo() {
        return cn.fly.tools.b.c.a(this.f2134a).d().v();
    }

    public int getDataNtType() {
        return cn.fly.tools.b.c.a(this.f2134a).d().M();
    }

    public String getDefaultIMPkg() {
        return null;
    }

    public String getDetailNetworkTypeForStatic() {
        return cn.fly.tools.b.c.a(this.f2134a).d().L();
    }

    public String getDeviceData() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ai();
    }

    public String getDeviceDataNotAES() {
        return cn.fly.tools.b.c.a(this.f2134a).d().aj();
    }

    public String getDeviceId() {
        return null;
    }

    public String getDeviceKey() {
        return cn.fly.tools.b.c.a(this.f2134a).d().X();
    }

    public String getDeviceName() {
        return cn.fly.tools.b.c.a(this.f2134a).d().al();
    }

    public String getDeviceType() {
        return cn.fly.tools.b.c.a(this.f2134a).d().s();
    }

    public String getFlavor() {
        return cn.fly.tools.b.c.a(this.f2134a).d().P();
    }

    public ArrayList<HashMap<String, String>> getIA(boolean z10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(z10, false);
    }

    public String getIMEI() {
        return null;
    }

    public String getIMSI() {
        return null;
    }

    public String getIPAddress() {
        return cn.fly.tools.b.c.a(this.f2134a).d().T();
    }

    public Location getLocation(int i10, int i11, boolean z10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(i10, i11, z10);
    }

    public String getMIUIVersion() {
        return cn.fly.tools.b.c.a(this.f2134a).d().k();
    }

    public String getManufacturer() {
        return cn.fly.tools.b.c.a(this.f2134a).d().o();
    }

    public HashMap<String, Long> getMemoryInfo() {
        return cn.fly.tools.b.c.a(this.f2134a).d().H();
    }

    public String getModel() {
        return cn.fly.tools.b.c.a(this.f2134a).d().m();
    }

    public ArrayList<HashMap<String, Object>> getNeighboringCellInfo() {
        return cn.fly.tools.b.c.a(this.f2134a).d().u();
    }

    public String getNetworkType() {
        return getNetworkType(false);
    }

    public String getNetworkTypeForStatic() {
        return cn.fly.tools.b.c.a(this.f2134a).d().K();
    }

    public String getOD() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ao();
    }

    public String getODH() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ap();
    }

    public String getOSCountry() {
        return cn.fly.tools.b.c.a(this.f2134a).d().B();
    }

    public String getOSLanguage() {
        return cn.fly.tools.b.c.a(this.f2134a).d().A();
    }

    public int getOSVersionInt() {
        return cn.fly.tools.b.c.a(this.f2134a).d().w();
    }

    public String getOSVersionName() {
        return cn.fly.tools.b.c.a(this.f2134a).d().y();
    }

    public PackageInfo getPInfo(String str, int i10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(false, 0, str, i10);
    }

    public String getPackageName() {
        return cn.fly.tools.b.c.a(this.f2134a).d().aa();
    }

    public int getPlatformCode() {
        return 1;
    }

    public String getQemuKernel() {
        return cn.fly.tools.b.c.a(this.f2134a).d().F();
    }

    public ArrayList<HashMap<String, String>> getSA() {
        return cn.fly.tools.b.c.a(this.f2134a).d().W();
    }

    public String getSSID() {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(false);
    }

    public String getScreenSize() {
        return cn.fly.tools.b.c.a(this.f2134a).d().J();
    }

    public String getSdcardPath() {
        return cn.fly.tools.b.c.a(this.f2134a).d().Y();
    }

    public boolean getSdcardState() {
        return false;
    }

    public String getSerialno() {
        return null;
    }

    public String getSignMD5() {
        return cn.fly.tools.b.c.a(this.f2134a).d().Z();
    }

    public String getSimSerialNumber() {
        return null;
    }

    public HashMap<String, HashMap<String, Long>> getSizeInfo() {
        return cn.fly.tools.b.c.a(this.f2134a).d().G();
    }

    public String getSystemProperties(String str) {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(str);
    }

    public Object getSystemServiceSafe(String str) {
        return C1293r.d(str);
    }

    public ArrayList<ArrayList<String>> getTTYDriversInfo() {
        return cn.fly.tools.b.c.a(this.f2134a).d().E();
    }

    public String getTimezone() {
        return cn.fly.tools.b.c.a(this.f2134a).d().O();
    }

    public Activity getTopActivity() {
        return null;
    }

    public void hideSoftInput(View view) {
        C1293r.a(view);
    }

    public <T> T invokeInstanceMethod(Object obj, String str, Object... objArr) {
        return (T) ReflectHelper.invokeInstanceMethodNoThrow(obj, str, null, objArr);
    }

    public boolean isInMainProcess() {
        return cn.fly.tools.b.c.a(this.f2134a).d().ae();
    }

    public boolean isPackageInstalled(String str) {
        return cn.fly.tools.b.c.a(this.f2134a).d().b(str);
    }

    public boolean isRooted() {
        return cn.fly.tools.b.c.a(this.f2134a).d().a();
    }

    public boolean isWifiProxy() {
        return cn.fly.tools.b.c.a(this.f2134a).d().i();
    }

    public String[] queryIMEI() {
        return null;
    }

    public String[] queryIMSI() {
        return null;
    }

    public List<ResolveInfo> queryIntentServices(Intent intent, int i10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(intent, i10);
    }

    public ResolveInfo resolveActivity(Intent intent, int i10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().b(intent, i10);
    }

    public void showSoftInput(View view) {
        C1293r.b(view);
    }

    public boolean usbEnable() {
        return cn.fly.tools.b.c.a(this.f2134a).d().h();
    }

    public boolean vpn() {
        return cn.fly.tools.b.c.a(this.f2134a).d().e();
    }

    public ApplicationInfo getAInfo(String str, int i10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(str, i10);
    }

    public String getAppName(String str) {
        return cn.fly.tools.b.c.a(this.f2134a).d().d(str);
    }

    public String getCarrier(boolean z10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().c(z10);
    }

    public String getCarrierName(boolean z10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().e(z10);
    }

    public String getDeviceKey(boolean z10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().l(z10);
    }

    public String getNetworkType(boolean z10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().h(z10);
    }

    public PackageInfo getPInfo(boolean z10, String str, int i10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(z10, 0, str, i10);
    }

    public String getSignMD5(String str) {
        return cn.fly.tools.b.c.a(this.f2134a).d().c(str);
    }

    public <T> T invokeInstanceMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr) {
        return (T) ReflectHelper.invokeInstanceMethod(obj, str, objArr, clsArr, null);
    }

    public ApplicationInfo getAInfo(boolean z10, String str, int i10) {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(z10, str, i10);
    }

    public PackageInfo getPInfo(int i10, String str, int i11) {
        return cn.fly.tools.b.c.a(this.f2134a).d().a(false, i10, str, i11);
    }
}
