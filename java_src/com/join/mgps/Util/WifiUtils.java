package com.join.mgps.Util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class WifiUtils {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static Context mContext;
    private static WifiUtils mWifiUtils;
    private DhcpInfo dhcpInfo;
    public boolean isConnectToHotSpotRunning = false;
    private DhcpInfo mDhcpInfo;
    private NetworkInfo mNetworkInfo;
    private List<WifiConfiguration> mWifiConfiguration;
    private WifiInfo mWifiInfo;
    private List<ScanResult> mWifiList;
    private WifiManager.WifiLock mWifiLock;
    public WifiManager mWifiManager;

    private WifiUtils(Context paramContext) {
        WifiManager wifiManager = (WifiManager) paramContext.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        this.mWifiManager = wifiManager;
        this.mDhcpInfo = wifiManager.getDhcpInfo();
        this.mWifiInfo = this.mWifiManager.getConnectionInfo();
        this.mNetworkInfo = ((ConnectivityManager) paramContext.getSystemService("connectivity")).getNetworkInfo(1);
        mContext = paramContext;
    }

    private Method connectWifiByReflectMethod(int netId) {
        Class<?>[] parameterTypes;
        Method method = null;
        for (Method method2 : this.mWifiManager.getClass().getDeclaredMethods()) {
            if ("connect".equalsIgnoreCase(method2.getName()) && (parameterTypes = method2.getParameterTypes()) != null && parameterTypes.length > 0 && "int".equalsIgnoreCase(parameterTypes[0].getName())) {
                method = method2;
            }
        }
        if (method != null) {
            try {
                method.invoke(this.mWifiManager, Integer.valueOf(netId), null);
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        return method;
    }

    public static WifiUtils getInstance(Context paramContext) {
        if (mWifiUtils == null) {
            mWifiUtils = new WifiUtils(paramContext);
        }
        return mWifiUtils;
    }

    private WifiConfiguration isExsits(String paramString) {
        WifiManager wifiManager = this.mWifiManager;
        if (wifiManager == null || wifiManager.getConfiguredNetworks() == null) {
            return null;
        }
        for (WifiConfiguration wifiConfiguration : this.mWifiManager.getConfiguredNetworks()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("isExsits: ");
            sb2.append(wifiConfiguration.SSID);
            if (wifiConfiguration.SSID.equals(x.a.f97579g + paramString + x.a.f97579g)) {
                return wifiConfiguration;
            }
        }
        return null;
    }

    public void AcquireWifiLock() {
        this.mWifiLock.acquire();
    }

    public void CreatWifiLock() {
        this.mWifiLock = this.mWifiManager.createWifiLock("Test");
    }

    public void OpenWifi() {
        try {
            WifiManager wifiManager = (WifiManager) mContext.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
            this.mWifiManager = wifiManager;
            if (wifiManager.isWifiEnabled()) {
                return;
            }
            this.mWifiManager.setWifiEnabled(true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void ReleaseWifiLock() {
        if (this.mWifiLock.isHeld()) {
            this.mWifiLock.release();
        }
    }

    public void addNetwork(Context context, WifiConfiguration paramWifiConfiguration) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        this.mWifiManager = wifiManager;
        this.mWifiManager.enableNetwork(wifiManager.addNetwork(paramWifiConfiguration), true);
    }

    public void closeWifi() {
        if (this.mWifiManager.isWifiEnabled()) {
            this.mWifiManager.setWifiEnabled(false);
        }
    }

    public void connectConfiguration(int paramInt) {
        if (paramInt > this.mWifiConfiguration.size()) {
            return;
        }
        this.mWifiManager.enableNetwork(this.mWifiConfiguration.get(paramInt).networkId, true);
    }

    public boolean connectToHotspot(String netSSID, String netPass) {
        this.isConnectToHotSpotRunning = true;
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        List<ScanResult> scanResults = this.mWifiManager.getScanResults();
        if (this.mWifiManager.isWifiEnabled()) {
            for (ScanResult scanResult : scanResults) {
                if (scanResult.SSID.equals(netSSID)) {
                    removeWifiNetwork(scanResult.SSID);
                    String securityMode = getSecurityMode(scanResult);
                    if (securityMode.equalsIgnoreCase("OPEN")) {
                        wifiConfiguration.SSID = x.a.f97579g + netSSID + x.a.f97579g;
                        wifiConfiguration.allowedKeyManagement.set(0);
                        int iAddNetwork = this.mWifiManager.addNetwork(wifiConfiguration);
                        this.mWifiManager.disconnect();
                        this.mWifiManager.enableNetwork(iAddNetwork, true);
                        this.mWifiManager.reconnect();
                        this.mWifiManager.setWifiEnabled(true);
                        this.isConnectToHotSpotRunning = false;
                        return true;
                    }
                    if (securityMode.equalsIgnoreCase("WEP")) {
                        wifiConfiguration.SSID = x.a.f97579g + netSSID + x.a.f97579g;
                        wifiConfiguration.wepKeys[0] = x.a.f97579g + netPass + x.a.f97579g;
                        wifiConfiguration.wepTxKeyIndex = 0;
                        wifiConfiguration.allowedKeyManagement.set(0);
                        wifiConfiguration.allowedGroupCiphers.set(0);
                        int iAddNetwork2 = this.mWifiManager.addNetwork(wifiConfiguration);
                        this.mWifiManager.disconnect();
                        this.mWifiManager.enableNetwork(iAddNetwork2, true);
                        this.mWifiManager.reconnect();
                        this.mWifiManager.setWifiEnabled(true);
                        this.isConnectToHotSpotRunning = false;
                        return true;
                    }
                    wifiConfiguration.SSID = x.a.f97579g + netSSID + x.a.f97579g;
                    wifiConfiguration.preSharedKey = x.a.f97579g + netPass + x.a.f97579g;
                    wifiConfiguration.hiddenSSID = false;
                    wifiConfiguration.status = 2;
                    wifiConfiguration.allowedGroupCiphers.set(2);
                    wifiConfiguration.allowedGroupCiphers.set(3);
                    wifiConfiguration.allowedKeyManagement.set(1);
                    wifiConfiguration.allowedPairwiseCiphers.set(1);
                    wifiConfiguration.allowedPairwiseCiphers.set(2);
                    wifiConfiguration.allowedProtocols.set(1);
                    wifiConfiguration.allowedProtocols.set(0);
                    int iAddNetwork3 = this.mWifiManager.addNetwork(wifiConfiguration);
                    this.mWifiManager.disconnect();
                    if (connectWifiByReflectMethod(iAddNetwork3) == null) {
                        this.mWifiManager.enableNetwork(iAddNetwork3, true);
                    }
                    this.mWifiManager.saveConfiguration();
                    this.mWifiManager.reconnect();
                    this.isConnectToHotSpotRunning = false;
                    return true;
                }
            }
        }
        this.isConnectToHotSpotRunning = false;
        return false;
    }

    public WifiConfiguration createAPInfo(String ssid, String password) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = ssid;
        wifiConfiguration.allowedAuthAlgorithms.set(0);
        wifiConfiguration.allowedProtocols.set(1);
        wifiConfiguration.allowedProtocols.set(0);
        wifiConfiguration.allowedPairwiseCiphers.set(2);
        wifiConfiguration.allowedPairwiseCiphers.set(1);
        wifiConfiguration.allowedGroupCiphers.set(3);
        wifiConfiguration.allowedGroupCiphers.set(2);
        if (password != null) {
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.preSharedKey = password;
        }
        return wifiConfiguration;
    }

    public void createWiFiAP(WifiConfiguration paramWifiConfiguration, boolean paramBoolean) {
        try {
            this.mWifiManager.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(this.mWifiManager, paramWifiConfiguration, Boolean.valueOf(paramBoolean));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public WifiConfiguration createWifiInfo(String ssid, String paramString2, int paramInt, String paramString3) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.allowedAuthAlgorithms.clear();
        wifiConfiguration.allowedGroupCiphers.clear();
        wifiConfiguration.allowedKeyManagement.clear();
        wifiConfiguration.allowedPairwiseCiphers.clear();
        wifiConfiguration.allowedProtocols.clear();
        if ("wt".equals(paramString3)) {
            wifiConfiguration.SSID = x.a.f97579g + ssid + x.a.f97579g;
            WifiConfiguration wifiConfigurationIsExsits = isExsits(ssid);
            if (wifiConfigurationIsExsits != null) {
                removeNetwork(mContext, wifiConfigurationIsExsits.networkId);
            }
            if (paramInt == 1) {
                wifiConfiguration.wepKeys[0] = "";
                wifiConfiguration.allowedKeyManagement.set(0);
                wifiConfiguration.wepTxKeyIndex = 0;
            } else if (paramInt == 2) {
                wifiConfiguration.hiddenSSID = false;
                wifiConfiguration.wepKeys[0] = x.a.f97579g + paramString2 + x.a.f97579g;
            } else {
                wifiConfiguration.preSharedKey = x.a.f97579g + paramString2 + x.a.f97579g;
                wifiConfiguration.hiddenSSID = false;
                wifiConfiguration.allowedAuthAlgorithms.set(0);
                wifiConfiguration.allowedGroupCiphers.set(2);
                wifiConfiguration.allowedKeyManagement.set(1);
                wifiConfiguration.allowedPairwiseCiphers.set(1);
                wifiConfiguration.allowedGroupCiphers.set(3);
                wifiConfiguration.allowedPairwiseCiphers.set(2);
                wifiConfiguration.status = 2;
            }
        } else {
            wifiConfiguration.SSID = ssid;
            wifiConfiguration.allowedAuthAlgorithms.set(1);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedGroupCiphers.set(0);
            wifiConfiguration.allowedGroupCiphers.set(1);
            wifiConfiguration.allowedKeyManagement.set(0);
            wifiConfiguration.wepTxKeyIndex = 0;
            if (paramInt == 1) {
                wifiConfiguration.wepKeys[0] = "";
                wifiConfiguration.allowedKeyManagement.set(0);
                wifiConfiguration.wepTxKeyIndex = 0;
            } else if (paramInt == 2) {
                wifiConfiguration.hiddenSSID = false;
                wifiConfiguration.wepKeys[0] = paramString2;
            } else if (paramInt == 3) {
                wifiConfiguration.preSharedKey = paramString2;
                wifiConfiguration.allowedAuthAlgorithms.set(0);
                wifiConfiguration.allowedProtocols.set(1);
                wifiConfiguration.allowedProtocols.set(0);
                wifiConfiguration.allowedKeyManagement.set(1);
                wifiConfiguration.allowedPairwiseCiphers.set(2);
                wifiConfiguration.allowedPairwiseCiphers.set(1);
            }
        }
        return wifiConfiguration;
    }

    public void disableNetwork(Context context, int netId) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        this.mWifiManager = wifiManager;
        wifiManager.disableNetwork(netId);
        this.mWifiManager.saveConfiguration();
    }

    public void disconnectWifi(int paramInt) {
        this.mWifiManager.disableNetwork(paramInt);
    }

    public String getApSSID() {
        Object objInvoke;
        try {
            Method declaredMethod = this.mWifiManager.getClass().getDeclaredMethod("getWifiApConfiguration", new Class[0]);
            if (declaredMethod == null || (objInvoke = declaredMethod.invoke(this.mWifiManager, new Object[0])) == null) {
                return null;
            }
            WifiConfiguration wifiConfiguration = (WifiConfiguration) objInvoke;
            String str = wifiConfiguration.SSID;
            if (str != null) {
                return str;
            }
            Field declaredField = WifiConfiguration.class.getDeclaredField("mWifiApProfile");
            if (declaredField == null) {
                return null;
            }
            declaredField.setAccessible(true);
            Object obj = declaredField.get(wifiConfiguration);
            declaredField.setAccessible(false);
            if (obj == null) {
                return null;
            }
            Field declaredField2 = obj.getClass().getDeclaredField("SSID");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            if (obj2 == null) {
                return null;
            }
            declaredField2.setAccessible(false);
            return (String) obj2;
        } catch (Exception unused) {
            return null;
        }
    }

    public String getApSSIDAll(Context activity) {
        try {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 <= 26 || i10 >= 28) {
                return ((WifiManager) activity.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getSSID().replace(x.a.f97579g, "");
            }
            if (i10 == 27) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) activity.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    return q3.h(activity).l().getSSID();
                }
                if (activeNetworkInfo.getExtraInfo() != null) {
                    return activeNetworkInfo.getExtraInfo().replace(x.a.f97579g, "");
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ssid:");
            sb2.append("unknown id");
            return "unknown id";
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("e:");
            sb3.append(e10.getMessage());
        }
    }

    public String getBSSID() {
        WifiInfo wifiInfo = this.mWifiInfo;
        return wifiInfo == null ? "NULL" : wifiInfo.getBSSID();
    }

    public List<WifiConfiguration> getConfiguration() {
        return this.mWifiConfiguration;
    }

    public int getDhcpInfo() {
        return this.mWifiManager.getDhcpInfo().gateway;
    }

    public String getLocalIPAddress() {
        WifiInfo wifiInfo = this.mWifiInfo;
        return wifiInfo == null ? "NULL" : intToIp(wifiInfo.getIpAddress());
    }

    public String getMacAddress() {
        WifiInfo wifiInfo = this.mWifiInfo;
        return wifiInfo == null ? "NULL" : wifiInfo.getMacAddress();
    }

    public int getNetworkId() {
        WifiInfo wifiInfo = this.mWifiInfo;
        if (wifiInfo == null) {
            return 0;
        }
        return wifiInfo.getNetworkId();
    }

    public String getSSID() {
        WifiInfo wifiInfo = this.mWifiInfo;
        if (wifiInfo == null) {
            return "NULL";
        }
        String ssid = wifiInfo.getSSID();
        return (ssid == null || ssid.trim().equals("")) ? "" : ssid.replaceAll(x.a.f97579g, "");
    }

    public String getSecurityMode(ScanResult scanResult) {
        String str = scanResult.capabilities;
        String[] strArr = {"WPA", "EAP", "WEP"};
        for (int i10 = 2; i10 >= 0; i10--) {
            if (str.contains(strArr[i10])) {
                return strArr[i10];
            }
        }
        return "OPEN";
    }

    public String getServerIPAddress() {
        DhcpInfo dhcpInfo = this.mDhcpInfo;
        return dhcpInfo == null ? "NULL" : intToIp(dhcpInfo.serverAddress);
    }

    public int getSignalStrength() {
        if (this.mWifiManager != null) {
            return WifiManager.calculateSignalLevel(this.mWifiInfo.getRssi(), 100);
        }
        return 0;
    }

    public boolean getWifiApState() {
        try {
            int iIntValue = ((Integer) this.mWifiManager.getClass().getMethod("getWifiApState", new Class[0]).invoke(this.mWifiManager, new Object[0])).intValue();
            return 3 == iIntValue || 13 == iIntValue;
        } catch (Exception unused) {
            return false;
        }
    }

    public int getWifiApStateInt() {
        try {
            return ((Integer) this.mWifiManager.getClass().getMethod("getWifiApState", new Class[0]).invoke(this.mWifiManager, new Object[0])).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 4;
        }
    }

    public WifiInfo getWifiInfo() {
        return this.mWifiManager.getConnectionInfo();
    }

    public List<ScanResult> getWifiList() {
        return this.mWifiList;
    }

    public WifiInfo getmWifiInfo() {
        return this.mWifiInfo;
    }

    public String intToIp(int paramIntip) {
        return (paramIntip & 255) + o0.f49827a + ((paramIntip >> 8) & 255) + o0.f49827a + ((paramIntip >> 16) & 255) + o0.f49827a + ((paramIntip >> 24) & 255);
    }

    public boolean isWifiConnect() {
        return this.mNetworkInfo.isConnected();
    }

    public boolean isWifiEnable() {
        return this.mWifiManager.isWifiEnabled();
    }

    public StringBuilder lookUpScan() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (i10 < 2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Index_");
            int i11 = i10 + 1;
            sb3.append(Integer.valueOf(i11).toString());
            sb3.append(":");
            sb2.append(sb3.toString());
            sb2.append(this.mWifiList.get(i10).toString());
            sb2.append("/n");
            i10 = i11;
        }
        return sb2;
    }

    public void openWifi(Context context) {
        this.mWifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        if (isWifiEnable()) {
            return;
        }
        this.mWifiManager.setWifiEnabled(true);
    }

    public boolean pingCmd(String addr) {
        try {
            Process processExec = Runtime.getRuntime().exec("ping  -c 1 -W 3 " + addr);
            try {
                processExec.waitFor();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
            return processExec.exitValue() == 0;
        } catch (IOException unused) {
            return false;
        }
    }

    public void removeNetwork(Context context, int netId) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        this.mWifiManager = wifiManager;
        wifiManager.removeNetwork(netId);
        this.mWifiManager.saveConfiguration();
    }

    public void removeWifiNetwork(String ssid) {
        List<WifiConfiguration> configuredNetworks = this.mWifiManager.getConfiguredNetworks();
        if (configuredNetworks != null) {
            for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                if (wifiConfiguration.SSID.contains(ssid)) {
                    this.mWifiManager.disableNetwork(wifiConfiguration.networkId);
                    this.mWifiManager.removeNetwork(wifiConfiguration.networkId);
                }
            }
        }
        this.mWifiManager.saveConfiguration();
    }

    public boolean setHotSpot(String SSID, String passWord, boolean open) {
        for (Method method : this.mWifiManager.getClass().getDeclaredMethods()) {
            if (method.getName().equals("setWifiApEnabled")) {
                WifiConfiguration wifiConfiguration = new WifiConfiguration();
                if (passWord == "") {
                    wifiConfiguration.SSID = SSID;
                    wifiConfiguration.allowedAuthAlgorithms.set(0);
                    wifiConfiguration.allowedProtocols.set(1);
                    wifiConfiguration.allowedProtocols.set(0);
                    wifiConfiguration.allowedKeyManagement.set(0);
                } else {
                    wifiConfiguration.SSID = SSID;
                    wifiConfiguration.preSharedKey = passWord;
                    wifiConfiguration.hiddenSSID = false;
                    wifiConfiguration.status = 2;
                    wifiConfiguration.allowedGroupCiphers.set(2);
                    wifiConfiguration.allowedGroupCiphers.set(3);
                    wifiConfiguration.allowedKeyManagement.set(1);
                    wifiConfiguration.allowedPairwiseCiphers.set(1);
                    wifiConfiguration.allowedPairwiseCiphers.set(2);
                    wifiConfiguration.allowedProtocols.set(1);
                    wifiConfiguration.allowedProtocols.set(0);
                }
                try {
                    method.invoke(this.mWifiManager, wifiConfiguration, Boolean.valueOf(open));
                    this.mWifiManager.saveConfiguration();
                    return true;
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return false;
    }

    public void setNewWifiManagerInfo() {
        this.mWifiInfo = this.mWifiManager.getConnectionInfo();
        this.mDhcpInfo = this.mWifiManager.getDhcpInfo();
    }

    public void setWifiList() {
        this.mWifiList = this.mWifiManager.getScanResults();
    }

    public void startScan(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        this.mWifiManager = wifiManager;
        wifiManager.startScan();
        this.mWifiConfiguration = this.mWifiManager.getConfiguredNetworks();
    }

    public boolean isWifiConnect(Context context) {
        NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1);
        this.mNetworkInfo = networkInfo;
        boolean zIsConnected = networkInfo.isConnected();
        return zIsConnected ? zIsConnected : this.mNetworkInfo.isAvailable();
    }

    public void closeWifi(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        this.mWifiManager = wifiManager;
        wifiManager.setWifiEnabled(false);
    }

    public String getSSID(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        this.mWifiManager = wifiManager;
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        this.mWifiInfo = connectionInfo;
        String ssid = connectionInfo.getSSID();
        if (ssid == null) {
            return "";
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ssid = getApSSID(context);
        }
        return ssid.replaceAll(x.a.f97579g, "");
    }

    public String getApSSID(Context context) {
        return getApSSIDAll(context);
    }
}
