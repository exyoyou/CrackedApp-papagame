package com.haima.hmcp.dns;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.dns.interfaces.DnsAsyncCallBack;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;
import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class DnsManager {
    public static long DEFAULT_DNS_CHECK_INTERVAL = 500;
    public static long DEFAULT_DNS_GET_TIME_OUT = 2000;
    public static long DEFAULT_DNS_GRAY_ENABLE_PERCENT = 0;
    public static long DEFAULT_DNS_RESET_IPV6_FLAG_TIME = 28800000;
    private static final int DNS_IP_TYPE_FROM_SAAS_VALUE_IPV4 = 1;
    private static final int DNS_IP_TYPE_FROM_SAAS_VALUE_IPV6 = 2;
    private static final String TAG = "DnsManager";
    public static long mCheckInterval = 500;
    private static DnsManager mDnsManager = null;
    public static long mGetTimeOut = 2000;
    public static long mGrayEnablePercent = 0;
    public static boolean mIPV4Priority = false;
    public static boolean mIsEnabled = false;
    public static boolean mIsIpv4FirstUse = true;
    public static boolean mIsUsedIpv6 = false;
    public static long mResetIpv6FlagTime = 28800000;
    private long mDisableIpv6Time;
    public boolean mOpenAsyncParser;
    public boolean mOpenResolveIp;
    private boolean mEnableIPTypeFromSaas = false;
    private ClintIPType mClintIPType = null;
    private final DnsCache mDnsCache = new DnsCache();
    private final DnsSyncParser mDnsSyncParser = new DnsSyncParser();
    private final DnsAsyncParser mDnsAsyncParser = new DnsAsyncParser();

    public enum ClintIPType {
        IPV4(1),
        IPV6(2);

        private final int value;

        ClintIPType(int i10) {
            this.value = i10;
        }
    }

    public enum DnsIpType {
        IPV4,
        IPV6
    }

    private DnsManager() {
        mIsEnabled = false;
        mIsUsedIpv6 = true;
        mIsIpv4FirstUse = true;
        this.mDisableIpv6Time = 0L;
    }

    private ClintIPType getClientIPType() {
        return this.mClintIPType;
    }

    public static DnsManager getInstance() {
        if (mDnsManager == null) {
            synchronized (DnsManager.class) {
                if (mDnsManager == null) {
                    mDnsManager = new DnsManager();
                }
            }
        }
        return mDnsManager;
    }

    public void clearCache() {
        DnsCache dnsCache = this.mDnsCache;
        if (dnsCache != null) {
            dnsCache.release();
        }
    }

    public void config(long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13) {
        mGetTimeOut = j10;
        mCheckInterval = j11;
        mResetIpv6FlagTime = j12;
        mGrayEnablePercent = j13;
        this.mOpenResolveIp = z11;
        this.mOpenAsyncParser = z12;
        mIPV4Priority = z10;
        this.mEnableIPTypeFromSaas = z13;
        LogUtils.ifmt(TAG, "config set dnsGetTimeout: %d, dnsCheckInterval: %d, resetIpv6FlagTime: %d, grayEnablePercent: %d,iPV4Priority:%b,openResolveIp:%b,openAsyncParser:%b,enableIPTypeFromSaas:%b", Long.valueOf(j10), Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(j13), Boolean.valueOf(z10), Boolean.valueOf(z11), Boolean.valueOf(z12), Boolean.valueOf(z13));
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_CONFIG, String.format(Locale.US, "dnsGetTimeout: %d, dnsCheckInterval: %d, resetIpv6FlagTime: %d, grayEnablePercent: %d,iPV4Priority:%b,openResolveIp:%b,openAsyncParser:%b,enableIPTypeFromSaas:%b", Long.valueOf(j10), Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(j13), Boolean.valueOf(z10), Boolean.valueOf(z11), Boolean.valueOf(z12), Boolean.valueOf(z13)));
    }

    public boolean dnsFunctionEnabled() {
        return mIsEnabled;
    }

    public DnsCache getDnsCache() {
        return this.mDnsCache;
    }

    public void getHostAddressListASync(@NonNull Context context, String str, List<String> list, DnsAsyncCallBack dnsAsyncCallBack) {
        DnsAsyncParser dnsAsyncParser = this.mDnsAsyncParser;
        if (dnsAsyncParser != null) {
            dnsAsyncParser.getHostAddressListAsync(context, str, list, dnsAsyncCallBack);
        }
    }

    public List<String> getHostAddressListSync(List<String> list) {
        DnsSyncParser dnsSyncParser = this.mDnsSyncParser;
        return dnsSyncParser != null ? dnsSyncParser.getHostAddressListSync(list) : list;
    }

    public String getHostAddressSync(String str) {
        DnsSyncParser dnsSyncParser = this.mDnsSyncParser;
        return dnsSyncParser != null ? dnsSyncParser.getHostAddressSync(str) : str;
    }

    public boolean isIPV4Priority() {
        if (this.mEnableIPTypeFromSaas) {
            ClintIPType clientIPType = getClientIPType();
            LogUtils.d(TAG, "isIPV4Priority():mEnableIPTypeFromSaas is true,and type is " + clientIPType);
            if (clientIPType != null) {
                return clientIPType == ClintIPType.IPV4;
            }
        }
        LogUtils.d(TAG, "isIPV4Priority():mEnableIPTypeFromSaas is " + this.mEnableIPTypeFromSaas + ",and mIPV4Priority is " + mIPV4Priority);
        return mIPV4Priority;
    }

    public boolean isUseIpv6() {
        return mIsUsedIpv6;
    }

    public void networkFailed(String str, String str2, String str3) {
        synchronized (this) {
            if (TextUtils.isEmpty(str2)) {
                clearCache();
            } else {
                getInstance().getDnsCache().removeIp(DnsIpType.IPV4, str2, str3);
                getInstance().getDnsCache().removeIp(DnsIpType.IPV6, str2, str3);
            }
        }
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && str2.equalsIgnoreCase(str3)) {
            str3 = null;
        }
        if (mIsUsedIpv6 && !TextUtils.isEmpty(str3) && !Utils.isIpv4Address(str3)) {
            mIsUsedIpv6 = false;
            this.mDisableIpv6Time = System.currentTimeMillis();
            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_DISABLE_IPV6);
            LogUtils.i(TAG, "networkFailed DISABLE ipv6 resolve now");
        }
        Object[] objArr = new Object[4];
        objArr[0] = str != null ? str : "NULL";
        objArr[1] = str2 != null ? str2 : "NULL";
        objArr[2] = str3 != null ? str3 : "NULL";
        objArr[3] = Boolean.valueOf(mIsUsedIpv6);
        LogUtils.ifmt(TAG, "networkFailed uri: %s, host: %s, ip: %s, mIsUsedIpv6: %s", objArr);
        Locale locale = Locale.US;
        Object[] objArr2 = new Object[4];
        if (str == null) {
            str = "NULL";
        }
        objArr2[0] = str;
        if (str2 == null) {
            str2 = "NULL";
        }
        objArr2[1] = str2;
        if (str3 == null) {
            str3 = "NULL";
        }
        objArr2[2] = str3;
        objArr2[3] = Boolean.valueOf(mIsUsedIpv6);
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_NETWORK_FAILED, URLEncoder.encode(String.format(locale, "uri: %s, host: %s, ip: %s, mIsUsedIpv6: %s", objArr2)));
    }

    public void release() {
        DnsAsyncParser dnsAsyncParser = this.mDnsAsyncParser;
        if (dnsAsyncParser != null) {
            dnsAsyncParser.getExecutorService().shutdown();
        }
        mDnsManager = null;
    }

    public void reset(String str) {
        LogUtils.ifmt(TAG, "reset for cloudId: %s, mIsUsedIpv6: %s, mIsEnabled: %s", str, Boolean.valueOf(mIsUsedIpv6), Boolean.valueOf(mIsEnabled));
        Locale locale = Locale.US;
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESET, String.format(locale, "cloudId: %s, mIsUsedIpv6: %s, mIsEnabled: %s", str, Boolean.valueOf(mIsUsedIpv6), Boolean.valueOf(mIsEnabled)));
        synchronized (this) {
            clearCache();
        }
        if (!mIsUsedIpv6 && this.mDisableIpv6Time + mResetIpv6FlagTime < System.currentTimeMillis()) {
            LogUtils.i(TAG, "reset ENABLE ipv6 again");
            CountlyUtil.recordEvent(Constants.COUNTLY_DNS_ENABLE_IPV6);
            mIsUsedIpv6 = true;
            mIsIpv4FirstUse = true;
            this.mDisableIpv6Time = 0L;
        }
        if (mGrayEnablePercent > 0) {
            mIsEnabled = !TextUtils.isEmpty(str) && ((long) (Math.abs(str.hashCode()) % 100)) < mGrayEnablePercent;
        } else {
            mIsEnabled = false;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_DNS_RESET, String.format(locale, "cloudId: %s, mIsUsedIpv6: %s, mIsEnabled: %s", str, Boolean.valueOf(mIsUsedIpv6), Boolean.valueOf(mIsEnabled)));
        LogUtils.ifmt(TAG, "reset DONE for cloudId: %s, mIsUsedIpv6: %s, mIsEnabled: %s", str, Boolean.valueOf(mIsUsedIpv6), Boolean.valueOf(mIsEnabled));
    }

    public void setClintIPType(Integer num) {
        LogUtils.d(TAG, "setClintIPType " + num);
        if (num != null) {
            int iIntValue = num.intValue();
            if (iIntValue == 1) {
                this.mClintIPType = ClintIPType.IPV4;
            } else {
                if (iIntValue != 2) {
                    return;
                }
                this.mClintIPType = ClintIPType.IPV6;
            }
        }
    }
}
