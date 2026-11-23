package cn.fly.tools.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.ac;
import cn.fly.tools.FlyLog;
import com.windmill.sdk.WMConstants;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class DH {
    public static final int GPI_STRATEGY_VALIDITY_3_MINUTE = 180000;
    public static final int GPI_STRATEGY_VALIDITY_ALL = 0;

    public interface DHResponder {
        void onResponse(DHResponse dHResponse) throws Throwable;
    }

    public static class DHResponse {
        private ArrayList<HashMap<String, String>> C;
        private String D;
        private Object F;
        private ArrayList<HashMap<String, Object>> G;
        private String H;
        private HashMap<String, Object> I;
        private HashMap<String, Object> K;
        private String L;
        private ArrayList<ArrayList<String>> M;
        private String N;
        private HashMap<String, HashMap<String, Long>> O;
        private HashMap<String, Long> P;
        private String Q;
        private String R;
        private boolean S;
        private boolean T;
        private boolean U;
        private boolean V;
        private boolean W;
        private boolean X;
        private boolean Y;
        private boolean Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2085a;
        private String aA;
        private String aB;
        private long aC;
        private double aD;
        private int aE;
        private boolean aF;
        private String aG;
        private String aH;
        private int aI;
        private int aJ;
        private String aK;
        private int aL;
        private HashMap<String, Object> aN;
        private ArrayList<HashMap<String, Object>> aP;
        private String aQ;
        private String aS;
        private boolean aU;
        private ArrayList<HashMap<String, Object>> aV;
        private boolean aZ;

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        private String f2086aa;

        /* JADX INFO: renamed from: ab, reason: collision with root package name */
        private String f2087ab;

        /* JADX INFO: renamed from: ac, reason: collision with root package name */
        private String f2088ac;

        /* JADX INFO: renamed from: ad, reason: collision with root package name */
        private String f2089ad;
        private int ae;
        private int af;
        private String al;
        private String am;
        private String an;
        private String ao;
        private long ap;
        private String aq;
        private String ar;
        private String as;
        private String at;
        private String au;
        private HashMap<String, Object> av;
        private ApplicationInfo aw;
        private String az;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f2090b;

        /* JADX INFO: renamed from: ba, reason: collision with root package name */
        private ArrayList<HashMap<String, Object>> f2091ba;

        /* JADX INFO: renamed from: bb, reason: collision with root package name */
        private String f2092bb;

        /* JADX INFO: renamed from: bd, reason: collision with root package name */
        private String f2094bd;
        private HashMap<String, Long> be;
        private String bg;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2096d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f2099g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f2100h;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f2103k;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private String f2106n;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private String f2108p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private String f2109q;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f2111s;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private String f2113u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private String f2114v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private String f2115w;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private String f2117y;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private LinkedList<String> f2095c = new LinkedList<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private LinkedList<String> f2097e = new LinkedList<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private LinkedList<String> f2098f = new LinkedList<>();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private LinkedList<String> f2101i = new LinkedList<>();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private LinkedList<String> f2102j = new LinkedList<>();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private LinkedList<String> f2104l = new LinkedList<>();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private LinkedList<String> f2105m = new LinkedList<>();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private LinkedList<String> f2107o = new LinkedList<>();

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private LinkedList<String> f2110r = new LinkedList<>();

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private LinkedList<Boolean> f2112t = new LinkedList<>();

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private LinkedList<String> f2116x = new LinkedList<>();

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private LinkedList<String> f2118z = new LinkedList<>();
        private LinkedList<ArrayList<HashMap<String, String>>> A = new LinkedList<>();
        private LinkedList<ArrayList<HashMap<String, String>>> B = new LinkedList<>();
        private LinkedList<Location> E = new LinkedList<>();
        private LinkedList<Boolean> J = new LinkedList<>();
        private LinkedList<List<ResolveInfo>> ag = new LinkedList<>();
        private LinkedList<ResolveInfo> ah = new LinkedList<>();
        private LinkedList<PackageInfo> ai = new LinkedList<>();
        private LinkedList<PackageInfo> aj = new LinkedList<>();
        private LinkedList<PackageInfo> ak = new LinkedList<>();
        private LinkedList<ApplicationInfo> ax = new LinkedList<>();
        private LinkedList<ApplicationInfo> ay = new LinkedList<>();
        private LinkedList<List<HashMap<String, Object>>> aM = new LinkedList<>();
        private LinkedList<HashMap<String, Object>> aO = new LinkedList<>();
        private LinkedList<String> aR = new LinkedList<>();
        private LinkedList<String> aT = new LinkedList<>();
        private LinkedList<Object> aW = new LinkedList<>();
        private LinkedList<Object> aX = new LinkedList<>();
        private LinkedList<Object> aY = new LinkedList<>();

        /* JADX INFO: renamed from: bc, reason: collision with root package name */
        private LinkedList<Long> f2093bc = new LinkedList<>();
        private LinkedList<Set<String>> bf = new LinkedList<>();

        void a(String str, Object obj) throws Throwable {
            a(str, obj, false);
        }

        public boolean checkDebbing() {
            return this.aZ;
        }

        public boolean checkNetworkAvailable() {
            return this.f2111s;
        }

        public boolean checkNetworkAvailableForce(int... iArr) {
            return ((Boolean) a(this.f2112t, (Object) null, iArr)).booleanValue();
        }

        public boolean checkPad() {
            return this.T;
        }

        public boolean checkUA() {
            return this.W;
        }

        public boolean cx() {
            return this.S;
        }

        public boolean debugable() {
            return this.Y;
        }

        public boolean devEnable() {
            return this.V;
        }

        public ArrayList<HashMap<String, Object>> getACIfo() {
            return this.f2091ba;
        }

        public ApplicationInfo getAInfo() {
            return this.aw;
        }

        public ApplicationInfo getAInfoForPkg(int... iArr) {
            return (ApplicationInfo) a(this.ax, (Object) null, iArr);
        }

        public ApplicationInfo getAInfoForPkgForce(int... iArr) {
            return (ApplicationInfo) a(this.ay, (Object) null, iArr);
        }

        public HashMap<String, Object> getALLD() {
            return this.av;
        }

        public String getAbis() {
            return this.L;
        }

        public String getAdvertisingID() {
            return this.D;
        }

        public long getAppLastUpdateTime() {
            return this.ap;
        }

        public String getAppName() {
            return this.f2117y;
        }

        public String getAppNameForPkg(int... iArr) {
            return (String) a(this.f2118z, (Object) null, iArr);
        }

        public String getBaseband() {
            return this.f2087ab;
        }

        public long getBdT() {
            return this.aC;
        }

        public String getBoardFromSysProperty() {
            return this.f2088ac;
        }

        public String getBoardPlatform() {
            return this.f2089ad;
        }

        public String getBssid() {
            return this.f2096d;
        }

        public String getBssidForce(int... iArr) {
            return (String) a(this.f2097e, (Object) null, iArr);
        }

        public String getBtM() {
            return this.aA;
        }

        public String getCInfo() {
            return this.as;
        }

        public Object getCLoc() {
            return this.F;
        }

        public HashMap<String, Object> getCPUInfo() {
            return this.K;
        }

        public String getCarrier() {
            return this.f2100h;
        }

        public String getCarrierForce(int... iArr) {
            return (String) a(this.f2101i, WMConstants.TIMER_STAGE_NONE, iArr);
        }

        public String getCarrierName() {
            return this.f2103k;
        }

        public String getCarrierNameForce(int... iArr) {
            return (String) a(this.f2104l, (Object) null, iArr);
        }

        public String getCarrierNameStrict(int... iArr) {
            return (String) a(this.f2105m, (Object) null, iArr);
        }

        public String getCarrierStrict(int... iArr) {
            return (String) a(this.f2102j, WMConstants.TIMER_STAGE_NONE, iArr);
        }

        public String getCgroup() {
            return this.ar;
        }

        public HashMap<String, Object> getCurrentWifiInfo() {
            return this.I;
        }

        public String getDM() {
            return this.f2092bb;
        }

        public int getDataNtType() {
            return this.ae;
        }

        public int getDataNtTypeStrict() {
            return this.af;
        }

        public String getDetailNetworkTypeForStatic() {
            return this.f2114v;
        }

        public String getDeviceData() {
            return this.an;
        }

        public String getDeviceDataNotAES() {
            return this.ao;
        }

        public String getDeviceId() {
            return null;
        }

        public String getDeviceKey() {
            return this.f2115w;
        }

        public String getDeviceKeyFromCache(int... iArr) {
            return (String) a(this.f2116x, (Object) null, iArr);
        }

        public String getDeviceName() {
            return this.aq;
        }

        public String getDeviceType() {
            return this.H;
        }

        public String getDrID() {
            return this.az;
        }

        public String getFlavor() {
            return this.f2086aa;
        }

        public int getGrammaticalGender() {
            return this.aL;
        }

        public int getHmEPMState() {
            return this.aJ;
        }

        public String getHmOsDetailedVer() {
            return this.aH;
        }

        public String getHmOsVer() {
            return this.aG;
        }

        public int getHmPMState() {
            return this.aI;
        }

        public ArrayList<HashMap<String, String>> getIA(int... iArr) {
            return (ArrayList) a(this.A, new ArrayList(), iArr);
        }

        public ArrayList<HashMap<String, String>> getIAForce(int... iArr) {
            return (ArrayList) a(this.B, new ArrayList(), iArr);
        }

        public String getIMEI() {
            return null;
        }

        public String getIMSI() {
            return null;
        }

        public String getIPAddress() {
            return this.al;
        }

        public String getIPAddressStrict() {
            return this.am;
        }

        public String getInnerAppLanguage() {
            return this.aK;
        }

        public long getLATime(int... iArr) {
            return ((Long) a((LinkedList<long>) this.f2093bc, -1L, iArr)).longValue();
        }

        public Location getLocation(int... iArr) {
            return (Location) a(this.E, (Object) null, iArr);
        }

        public String getMIUIVersion() {
            return this.Q;
        }

        public String getMIUIVersionForFly() {
            return this.R;
        }

        public String getMbcdi() {
            return this.aS;
        }

        public String getMbcdiForce(int... iArr) {
            return (String) a(this.aT, (Object) null, iArr);
        }

        public String getMcdi() {
            return this.aQ;
        }

        public String getMcdiForce(int... iArr) {
            return (String) a(this.aR, (Object) null, iArr);
        }

        public HashMap<String, Long> getMemoryInfo() {
            return this.P;
        }

        public ArrayList<HashMap<String, Object>> getMnbclfo() {
            return this.aV;
        }

        public Object getMpfo(int... iArr) {
            return a(this.aW, (Object) null, iArr);
        }

        public Object getMpfof(int... iArr) {
            return a(this.aX, (Object) null, iArr);
        }

        public Object getMpfos(int... iArr) {
            return a(this.aY, (Object) null, iArr);
        }

        public HashMap<String, Object> getMwfo() {
            return this.aN;
        }

        public HashMap<String, Object> getMwfoForce(int... iArr) {
            return (HashMap) a(this.aO, (Object) null, iArr);
        }

        public ArrayList<HashMap<String, Object>> getMwlfo() {
            return this.aP;
        }

        public ArrayList<HashMap<String, Object>> getNeighboringCellInfo() {
            return this.G;
        }

        public String getNetworkType() {
            return this.f2108p;
        }

        public String getNetworkTypeForStatic() {
            return this.f2113u;
        }

        public String getNetworkTypeForce(int... iArr) {
            return (String) a(this.f2110r, cn.fly.commons.a.m.a("004f3elRfg"), iArr);
        }

        public String getNetworkTypeNew() {
            return this.f2109q;
        }

        public String getOD() {
            return this.at;
        }

        public String getODH() {
            return this.au;
        }

        public PackageInfo getPInfo(int... iArr) {
            return (PackageInfo) a(this.ai, (Object) null, iArr);
        }

        public PackageInfo getPInfoForce(int... iArr) {
            return (PackageInfo) a(this.aj, (Object) null, iArr);
        }

        public PackageInfo getPInfoStrategy(int... iArr) {
            return (PackageInfo) a(this.ak, (Object) null, iArr);
        }

        public Set<String> getPPL(int... iArr) {
            return (Set) a(this.bf, (Object) null, iArr);
        }

        public List<HashMap<String, Object>> getPosCommForce(int... iArr) {
            return (List) a(this.aM, (Object) null, iArr);
        }

        public String getQemuKernel() {
            return this.N;
        }

        public String getRd() {
            return this.bg;
        }

        public HashMap<String, Long> getRuntimeMemory() {
            return this.be;
        }

        public ArrayList<HashMap<String, String>> getSA() {
            return this.C;
        }

        public String getSSID() {
            return this.f2090b;
        }

        public String getSSIDForce(int... iArr) {
            return (String) a(this.f2095c, (Object) null, iArr);
        }

        public double getScreenInch() {
            return this.aD;
        }

        public int getScreenPpi() {
            return this.aE;
        }

        public String getScreenSize() {
            return this.f2099g;
        }

        public boolean getSdcardState() {
            return false;
        }

        public String getSecurePch() {
            return this.f2094bd;
        }

        public String getSerialno() {
            return null;
        }

        public String getSignMD5() {
            return this.f2106n;
        }

        public String getSignMD5ForPkg(int... iArr) {
            return (String) a(this.f2107o, (Object) null, iArr);
        }

        public String getSimSerialNumber() {
            return null;
        }

        public HashMap<String, HashMap<String, Long>> getSizeInfo() {
            return this.O;
        }

        public String getSystemProperties(int... iArr) {
            return (String) a(this.f2098f, (Object) null, iArr);
        }

        public ArrayList<ArrayList<String>> getTTYDriversInfo() {
            return this.M;
        }

        public Activity getTopActivity() {
            return null;
        }

        public String getUpM() {
            return this.aB;
        }

        public boolean isHmOs() {
            return this.aF;
        }

        public boolean isMwpy() {
            return this.aU;
        }

        public boolean isPackageInstalled(int... iArr) {
            return ((Boolean) a(this.J, Boolean.FALSE, iArr)).booleanValue();
        }

        public boolean isRooted() {
            return this.f2085a;
        }

        public boolean isWifiProxy() {
            return this.Z;
        }

        public String[] queryIMEI() {
            return null;
        }

        public String[] queryIMSI() {
            return null;
        }

        public List<ResolveInfo> queryIntentServices(int... iArr) {
            return (List) a(this.ag, (Object) null, iArr);
        }

        public ResolveInfo resolveActivity(int... iArr) {
            return (ResolveInfo) a(this.ah, (Object) null, iArr);
        }

        public boolean usbEnable() {
            return this.U;
        }

        public boolean vpn() {
            return this.X;
        }

        void a(String str, Object obj, boolean z10) throws Throwable {
            if ("gmpfo".equals(str)) {
                LinkedList<Object> linkedList = this.aW;
                if (z10) {
                    obj = null;
                }
                linkedList.add(obj);
                return;
            }
            if ("gmpfofce".equals(str)) {
                LinkedList<Object> linkedList2 = this.aX;
                if (z10) {
                    obj = null;
                }
                linkedList2.add(obj);
                return;
            }
            if ("getMpfos".equals(str)) {
                LinkedList<Object> linkedList3 = this.aY;
                if (z10) {
                    obj = null;
                }
                linkedList3.add(obj);
                return;
            }
            boolean z11 = false;
            z11 = false;
            if ("cird".equals(str)) {
                this.f2085a = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("gsimt".equals(str)) {
                this.f2090b = z10 ? null : (String) obj;
                return;
            }
            if ("gsimtfce".equals(str)) {
                this.f2095c.add(z10 ? null : (String) obj);
                return;
            }
            if ("gbsi".equals(str)) {
                this.f2096d = z10 ? null : (String) obj;
                return;
            }
            if ("gbsifce".equals(str)) {
                this.f2097e.add(z10 ? null : (String) obj);
                return;
            }
            if ("gstmpts".equals(str)) {
                this.f2098f.add(z10 ? null : (String) obj);
                return;
            }
            if ("gscsz".equals(str)) {
                this.f2099g = z10 ? null : (String) obj;
                return;
            }
            if ("gcrie".equals(str)) {
                this.f2100h = z10 ? null : (String) obj;
                return;
            }
            if ("gcriefce".equals(str)) {
                this.f2101i.add(z10 ? null : (String) obj);
                return;
            }
            if ("gcriefcestr".equals(str)) {
                this.f2102j.add(z10 ? null : (String) obj);
                return;
            }
            if ("gcrnm".equals(str)) {
                this.f2103k = z10 ? null : (String) obj;
                return;
            }
            if ("gcrnmfce".equals(str)) {
                this.f2104l.add(z10 ? null : (String) obj);
                return;
            }
            if ("gcrnmfcestr".equals(str)) {
                this.f2105m.add(z10 ? null : (String) obj);
                return;
            }
            if ("gsnmd".equals(str)) {
                this.f2106n = z10 ? null : (String) obj;
                return;
            }
            if ("gsnmdfp".equals(str)) {
                this.f2107o.add(z10 ? null : (String) obj);
                return;
            }
            if ("gneyp".equals(str)) {
                this.f2108p = z10 ? null : (String) obj;
                return;
            }
            if ("gneypnw".equals(str)) {
                this.f2109q = z10 ? null : (String) obj;
                return;
            }
            if ("gneypfce".equals(str)) {
                this.f2110r.add(z10 ? null : (String) obj);
                return;
            }
            if ("cknavbl".equals(str)) {
                this.f2111s = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("cknavblfc".equals(str)) {
                this.f2112t.add(Boolean.valueOf(z10 ? false : ((Boolean) obj).booleanValue()));
                return;
            }
            if ("gnktpfs".equals(str)) {
                this.f2113u = z10 ? null : (String) obj;
                return;
            }
            if ("gdtlnktpfs".equals(str)) {
                this.f2114v = z10 ? null : (String) obj;
                return;
            }
            if ("gdvk".equals(str)) {
                this.f2115w = z10 ? null : (String) obj;
                return;
            }
            if ("gdvkfc".equals(str)) {
                this.f2116x.add(z10 ? null : (String) obj);
                return;
            }
            if ("gpnmmt".equals(str)) {
                this.f2117y = z10 ? null : (String) obj;
                return;
            }
            if ("gpnmfp".equals(str)) {
                this.f2118z.add(z10 ? null : (String) obj);
                return;
            }
            if ("gia".equals(str)) {
                this.A.add(z10 ? null : (ArrayList) obj);
                return;
            }
            if ("giafce".equals(str)) {
                this.B.add(z10 ? null : (ArrayList) obj);
                return;
            }
            if ("gsl".equals(str)) {
                this.C = z10 ? null : (ArrayList) obj;
                return;
            }
            if ("gavti".equals(str)) {
                this.D = z10 ? null : (String) obj;
                return;
            }
            if ("glctn".equals(str)) {
                this.E.add(z10 ? null : (Location) obj);
                return;
            }
            if ("gtecloc".equals(str)) {
                if (z10) {
                    obj = null;
                }
                this.F = obj;
                return;
            }
            if ("gnbclin".equals(str)) {
                this.G = z10 ? null : (ArrayList) obj;
                return;
            }
            if ("gdvtp".equals(str)) {
                this.H = z10 ? null : (String) obj;
                return;
            }
            if ("wmcwi".equals(str)) {
                this.I = z10 ? null : (HashMap) obj;
                return;
            }
            if ("ipgist".equals(str)) {
                this.J.add(Boolean.valueOf(z10 ? false : ((Boolean) obj).booleanValue()));
                return;
            }
            if ("gcuin".equals(str)) {
                this.K = z10 ? null : (HashMap) obj;
                return;
            }
            if ("gabis".equals(str)) {
                this.L = z10 ? null : (String) obj;
                return;
            }
            if ("gtydvin".equals(str)) {
                this.M = z10 ? null : (ArrayList) obj;
                return;
            }
            if ("gqmkn".equals(str)) {
                this.N = z10 ? null : (String) obj;
                return;
            }
            if ("gszin".equals(str)) {
                this.O = z10 ? null : (HashMap) obj;
                return;
            }
            if ("gmrin".equals(str)) {
                this.P = z10 ? null : (HashMap) obj;
                return;
            }
            if ("gmivsn".equals(str)) {
                this.Q = z10 ? null : (String) obj;
                return;
            }
            if ("gmivsnfly".equals(str)) {
                this.R = z10 ? null : (String) obj;
                return;
            }
            if ("cx".equals(str)) {
                this.S = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("ckpd".equals(str)) {
                this.T = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("ubenbl".equals(str)) {
                this.U = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("dvenbl".equals(str)) {
                this.V = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("ckua".equals(str)) {
                this.W = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("vnmt".equals(str)) {
                this.X = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("degb".equals(str)) {
                this.Y = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("iwpxy".equals(str)) {
                this.Z = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("gflv".equals(str)) {
                this.f2086aa = z10 ? null : (String) obj;
                return;
            }
            if ("gbsbd".equals(str)) {
                this.f2087ab = z10 ? null : (String) obj;
                return;
            }
            if ("gbfspy".equals(str)) {
                this.f2088ac = z10 ? null : (String) obj;
                return;
            }
            if ("gbplfo".equals(str)) {
                this.f2089ad = z10 ? null : (String) obj;
                return;
            }
            if ("gdntp".equals(str)) {
                this.ae = z10 ? 0 : ((Integer) obj).intValue();
                return;
            }
            if ("gdntpstr".equals(str)) {
                this.af = z10 ? 0 : ((Integer) obj).intValue();
                return;
            }
            if ("qritsvc".equals(str)) {
                this.ag.add(z10 ? null : (List) obj);
                return;
            }
            if ("rsaciy".equals(str)) {
                this.ah.add(z10 ? null : (ResolveInfo) obj);
                return;
            }
            if ("gpgif".equals(str)) {
                this.ai.add(z10 ? null : (PackageInfo) obj);
                return;
            }
            if ("gpgiffcin".equals(str)) {
                this.aj.add(z10 ? null : (PackageInfo) obj);
                return;
            }
            if ("gpgifstrg".equals(str)) {
                this.ak.add(z10 ? null : (PackageInfo) obj);
                return;
            }
            if ("giads".equals(str)) {
                this.al = z10 ? null : (String) obj;
                return;
            }
            if ("giadsstr".equals(str)) {
                this.am = z10 ? null : (String) obj;
                return;
            }
            if ("gdvda".equals(str)) {
                this.an = z10 ? null : (String) obj;
                return;
            }
            if ("gdvdtnas".equals(str)) {
                this.ao = z10 ? null : (String) obj;
                return;
            }
            if ("galtut".equals(str)) {
                this.ap = z10 ? 0L : ((Long) obj).longValue();
                return;
            }
            if ("gdvme".equals(str)) {
                this.aq = z10 ? null : (String) obj;
                return;
            }
            if ("gcrup".equals(str)) {
                this.ar = z10 ? null : (String) obj;
                return;
            }
            if ("gcifm".equals(str)) {
                this.as = z10 ? null : (String) obj;
                return;
            }
            if ("godm".equals(str)) {
                this.at = z10 ? null : (String) obj;
                return;
            }
            if ("godhm".equals(str)) {
                this.au = z10 ? null : (String) obj;
                return;
            }
            if ("galdm".equals(str)) {
                this.av = z10 ? null : (HashMap) obj;
                return;
            }
            if ("gtaif".equals(str)) {
                this.aw = z10 ? null : (ApplicationInfo) obj;
                return;
            }
            if ("gtaifprm".equals(str)) {
                this.ax.add(z10 ? null : (ApplicationInfo) obj);
                return;
            }
            if ("gtaifprmfce".equals(str)) {
                this.ay.add(z10 ? null : (ApplicationInfo) obj);
                return;
            }
            if ("gtdrd".equals(str)) {
                this.az = z10 ? null : (String) obj;
                return;
            }
            if ("gtbdt".equals(str)) {
                this.aC = z10 ? 0L : ((Long) obj).longValue();
                return;
            }
            if ("gtscnin".equals(str)) {
                this.aD = z10 ? 0.0d : ((Double) obj).doubleValue();
                return;
            }
            if ("gtscnppi".equals(str)) {
                this.aE = z10 ? 0 : ((Integer) obj).intValue();
                return;
            }
            if ("ishmos".equals(str)) {
                this.aF = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("gthmosv".equals(str)) {
                this.aG = z10 ? null : (String) obj;
                return;
            }
            if ("gthmosdtlv".equals(str)) {
                this.aH = z10 ? null : (String) obj;
                return;
            }
            if ("gthmpmst".equals(str)) {
                this.aI = z10 ? -1 : ((Integer) obj).intValue();
                return;
            }
            if ("gthmepmst".equals(str)) {
                this.aJ = z10 ? -1 : ((Integer) obj).intValue();
                return;
            }
            if ("gtinnerlangmt".equals(str)) {
                this.aK = z10 ? null : (String) obj;
                return;
            }
            if ("gtgramgendt".equals(str)) {
                this.aL = z10 ? 0 : ((Integer) obj).intValue();
                return;
            }
            if ("gtelcmefce".equals(str)) {
                this.aM.add(z10 ? null : (List) obj);
                return;
            }
            if ("gtmwfo".equals(str)) {
                this.aN = z10 ? null : (HashMap) obj;
                return;
            }
            if ("wmcwifce".equals(str)) {
                this.aO.add(z10 ? null : (HashMap) obj);
                return;
            }
            if ("gtaifok".equals(str)) {
                this.aP = z10 ? null : (ArrayList) obj;
                return;
            }
            if ("gtmcdi".equals(str)) {
                this.aQ = z10 ? null : (String) obj;
                return;
            }
            if ("gtmcdifce".equals(str)) {
                this.aR.add(z10 ? null : (String) obj);
                return;
            }
            if ("gtmbcdi".equals(str)) {
                this.aS = z10 ? null : (String) obj;
                return;
            }
            if ("gtmbcdifce".equals(str)) {
                this.aT.add(z10 ? null : (String) obj);
                return;
            }
            if ("miwpy".equals(str)) {
                this.aU = z10 ? false : ((Boolean) obj).booleanValue();
                return;
            }
            if ("gtmnbclfo".equals(str)) {
                this.aV = z10 ? null : (ArrayList) obj;
                return;
            }
            if ("ctedebbing".equals(str)) {
                if (!z10 && ((Boolean) obj).booleanValue()) {
                    z11 = true;
                }
                this.aZ = z11;
                return;
            }
            if ("gteacifo".equals(str)) {
                this.f2091ba = z10 ? null : (ArrayList) obj;
                return;
            }
            if ("gtdm".equals(str)) {
                this.f2092bb = z10 ? null : (String) obj;
                return;
            }
            if ("gtlstactme".equals(str)) {
                this.f2093bc.add(Long.valueOf(z10 ? -1L : ((Long) obj).longValue()));
                return;
            }
            if ("gtscrpch".equals(str)) {
                this.f2094bd = z10 ? null : (String) obj;
                return;
            }
            if ("gtrtmey".equals(str)) {
                this.be = z10 ? null : (HashMap) obj;
                return;
            }
            if ("gppl".equals(str)) {
                this.bf.add(z10 ? new HashSet<>() : (Set) obj);
                return;
            }
            if ("gtrddi".equals(str)) {
                this.bg = z10 ? null : (String) obj;
                return;
            }
            throw new Throwable("Unknown name to set: " + str + ", value: " + obj);
        }

        private static <T> T a(LinkedList<T> linkedList, T t10, int... iArr) {
            if (linkedList != null) {
                try {
                    if (iArr.length == 0) {
                        return linkedList.get(0);
                    }
                    if (iArr[0] < linkedList.size()) {
                        return linkedList.get(iArr[0]);
                    }
                    FlyLog.getInstance().w("WARNING: " + iArr[0] + " out of bound, size: " + linkedList.size());
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
            }
            return t10;
        }
    }

    public static class RequestBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2119a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final LinkedList<a> f2120b;

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f2128a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Object[] f2129b;

            private a(String str, Object... objArr) {
                this.f2128a = str;
                this.f2129b = objArr;
            }
        }

        public RequestBuilder checkDebbing() {
            this.f2120b.add(new a("ctedebbing", new Object[0]));
            return this;
        }

        public RequestBuilder checkNetworkAvailable() {
            this.f2120b.add(new a("cknavbl", new Object[0]));
            return this;
        }

        public RequestBuilder checkNetworkAvailableForce(boolean z10) {
            this.f2120b.add(new a("cknavblfc", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder checkPad() {
            this.f2120b.add(new a("ckpd", new Object[0]));
            return this;
        }

        public RequestBuilder checkUA() {
            this.f2120b.add(new a("ckua", new Object[0]));
            return this;
        }

        public RequestBuilder cx() {
            this.f2120b.add(new a("cx", new Object[0]));
            return this;
        }

        public RequestBuilder debugable() {
            this.f2120b.add(new a("degb", new Object[0]));
            return this;
        }

        public RequestBuilder devEnable() {
            this.f2120b.add(new a("dvenbl", new Object[0]));
            return this;
        }

        public RequestBuilder getACIfo() {
            this.f2120b.add(new a("gteacifo", new Object[0]));
            return this;
        }

        public RequestBuilder getAInfo() {
            this.f2120b.add(new a("gtaif", new Object[0]));
            return this;
        }

        public RequestBuilder getAInfoForPkg(String str, int i10) {
            this.f2120b.add(new a("gtaifprm", new Object[]{str, Integer.valueOf(i10)}));
            return this;
        }

        public RequestBuilder getAInfoForPkgForce(boolean z10, String str, int i10) {
            this.f2120b.add(new a("gtaifprmfce", new Object[]{Boolean.valueOf(z10), str, Integer.valueOf(i10)}));
            return this;
        }

        public RequestBuilder getALLD() {
            this.f2120b.add(new a("galdm", new Object[0]));
            return this;
        }

        public RequestBuilder getAbis() {
            this.f2120b.add(new a("gabis", new Object[0]));
            return this;
        }

        public RequestBuilder getAdvertisingID() {
            this.f2120b.add(new a("gavti", new Object[0]));
            return this;
        }

        public RequestBuilder getAppLastUpdateTime() {
            this.f2120b.add(new a("galtut", new Object[0]));
            return this;
        }

        public RequestBuilder getAppName() {
            this.f2120b.add(new a("gpnmmt", new Object[0]));
            return this;
        }

        public RequestBuilder getAppNameForPkg(String str) {
            this.f2120b.add(new a("gpnmfp", new Object[]{str}));
            return this;
        }

        public RequestBuilder getBaseband() {
            this.f2120b.add(new a("gbsbd", new Object[0]));
            return this;
        }

        public RequestBuilder getBdT() {
            this.f2120b.add(new a("gtbdt", new Object[0]));
            return this;
        }

        public RequestBuilder getBoardFromSysProperty() {
            this.f2120b.add(new a("gbfspy", new Object[0]));
            return this;
        }

        public RequestBuilder getBoardPlatform() {
            this.f2120b.add(new a("gbplfo", new Object[0]));
            return this;
        }

        public RequestBuilder getBssid() {
            this.f2120b.add(new a("gbsi", new Object[0]));
            return this;
        }

        public RequestBuilder getBssidForce(boolean z10) {
            this.f2120b.add(new a("gbsifce", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getBtM() {
            return this;
        }

        public RequestBuilder getCInfo() {
            this.f2120b.add(new a("gcifm", new Object[0]));
            return this;
        }

        public RequestBuilder getCLoc() {
            this.f2120b.add(new a("gtecloc", new Object[0]));
            return this;
        }

        public RequestBuilder getCPUInfo() {
            this.f2120b.add(new a("gcuin", new Object[0]));
            return this;
        }

        public RequestBuilder getCarrier() {
            this.f2120b.add(new a("gcrie", new Object[0]));
            return this;
        }

        public RequestBuilder getCarrierForce(boolean z10) {
            this.f2120b.add(new a("gcriefce", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getCarrierName() {
            this.f2120b.add(new a("gcrnm", new Object[0]));
            return this;
        }

        public RequestBuilder getCarrierNameForce(boolean z10) {
            this.f2120b.add(new a("gcrnmfce", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getCarrierNameStrict(boolean z10) {
            this.f2120b.add(new a("gcrnmfcestr", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getCarrierStrict(boolean z10) {
            this.f2120b.add(new a("gcriefcestr", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getCgroup() {
            this.f2120b.add(new a("gcrup", new Object[0]));
            return this;
        }

        public RequestBuilder getCurrentWifiInfo() {
            this.f2120b.add(new a("wmcwi", new Object[0]));
            return this;
        }

        public RequestBuilder getDM(boolean z10) {
            this.f2120b.add(new a("gtdm", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getDataNtType() {
            this.f2120b.add(new a("gdntp", new Object[0]));
            return this;
        }

        public RequestBuilder getDataNtTypeStrict() {
            this.f2120b.add(new a("gdntpstr", new Object[0]));
            return this;
        }

        public RequestBuilder getDetailNetworkTypeForStatic() {
            this.f2120b.add(new a("gdtlnktpfs", new Object[0]));
            return this;
        }

        public RequestBuilder getDeviceData() {
            this.f2120b.add(new a("gdvda", new Object[0]));
            return this;
        }

        public RequestBuilder getDeviceDataNotAES() {
            this.f2120b.add(new a("gdvdtnas", new Object[0]));
            return this;
        }

        public RequestBuilder getDeviceId() {
            return this;
        }

        public RequestBuilder getDeviceKey() {
            this.f2120b.add(new a("gdvk", new Object[0]));
            return this;
        }

        public RequestBuilder getDeviceKeyFromCache(boolean z10) {
            this.f2120b.add(new a("gdvkfc", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getDeviceName() {
            this.f2120b.add(new a("gdvme", new Object[0]));
            return this;
        }

        public RequestBuilder getDeviceType() {
            this.f2120b.add(new a("gdvtp", new Object[0]));
            return this;
        }

        public RequestBuilder getDrID() {
            this.f2120b.add(new a("gtdrd", new Object[0]));
            return this;
        }

        public RequestBuilder getFlavor() {
            this.f2120b.add(new a("gflv", new Object[0]));
            return this;
        }

        public RequestBuilder getGrammaticalGender() {
            this.f2120b.add(new a("gtgramgendt", new Object[0]));
            return this;
        }

        public RequestBuilder getHmEPMState() {
            this.f2120b.add(new a("gthmepmst", new Object[0]));
            return this;
        }

        public RequestBuilder getHmOsDetailedVer() {
            this.f2120b.add(new a("gthmosdtlv", new Object[0]));
            return this;
        }

        public RequestBuilder getHmOsVer() {
            this.f2120b.add(new a("gthmosv", new Object[0]));
            return this;
        }

        public RequestBuilder getHmPMState() {
            this.f2120b.add(new a("gthmpmst", new Object[0]));
            return this;
        }

        public RequestBuilder getIA(boolean z10) {
            this.f2120b.add(new a("gia", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getIAForce(boolean z10, boolean z11) {
            this.f2120b.add(new a("giafce", new Object[]{Boolean.valueOf(z10), Boolean.valueOf(z11)}));
            return this;
        }

        public RequestBuilder getIMEI() {
            return this;
        }

        public RequestBuilder getIMSI() {
            return this;
        }

        public RequestBuilder getIPAddress() {
            this.f2120b.add(new a("giads", new Object[0]));
            return this;
        }

        public RequestBuilder getIPAddressStrict() {
            this.f2120b.add(new a("giadsstr", new Object[0]));
            return this;
        }

        public RequestBuilder getInnerAppLanguage() {
            this.f2120b.add(new a("gtinnerlangmt", new Object[0]));
            return this;
        }

        public RequestBuilder getLATime(String str) {
            this.f2120b.add(new a("gtlstactme", new Object[]{str}));
            return this;
        }

        public RequestBuilder getLocation(int i10, int i11, boolean z10) {
            this.f2120b.add(new a("glctn", new Object[]{Integer.valueOf(i10), Integer.valueOf(i11), Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getMIUIVersion() {
            this.f2120b.add(new a("gmivsn", new Object[0]));
            return this;
        }

        public RequestBuilder getMIUIVersionForFly() {
            this.f2120b.add(new a("gmivsnfly", new Object[0]));
            return this;
        }

        public RequestBuilder getMbcdi() {
            this.f2120b.add(new a("gtmbcdi", new Object[0]));
            return this;
        }

        public RequestBuilder getMbcdiForce(boolean z10) {
            this.f2120b.add(new a("gtmbcdifce", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getMcdi() {
            this.f2120b.add(new a("gtmcdi", new Object[0]));
            return this;
        }

        public RequestBuilder getMcdiForce(boolean z10) {
            this.f2120b.add(new a("gtmcdifce", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getMemoryInfo() {
            this.f2120b.add(new a("gmrin", new Object[0]));
            return this;
        }

        public RequestBuilder getMnbclfo() {
            this.f2120b.add(new a("gtmnbclfo", new Object[0]));
            return this;
        }

        public RequestBuilder getMpfo(String str, int i10) {
            this.f2120b.add(new a("gmpfo", new Object[]{str, Integer.valueOf(i10)}));
            return this;
        }

        public RequestBuilder getMpfof(boolean z10, String str, int i10) {
            this.f2120b.add(new a("gmpfofce", new Object[]{Boolean.valueOf(z10), str, Integer.valueOf(i10)}));
            return this;
        }

        public RequestBuilder getMpfos(int i10, String str, int i11) {
            this.f2120b.add(new a("getMpfos", new Object[]{Integer.valueOf(i10), str, Integer.valueOf(i11)}));
            return this;
        }

        public RequestBuilder getMwfo() {
            this.f2120b.add(new a("gtmwfo", new Object[0]));
            return this;
        }

        public RequestBuilder getMwfoForce(boolean z10) {
            this.f2120b.add(new a("wmcwifce", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getMwlfo() {
            this.f2120b.add(new a("gtaifok", new Object[0]));
            return this;
        }

        public RequestBuilder getNeighboringCellInfo() {
            this.f2120b.add(new a("gnbclin", new Object[0]));
            return this;
        }

        public RequestBuilder getNetworkType() {
            this.f2120b.add(new a("gneyp", new Object[0]));
            return this;
        }

        public RequestBuilder getNetworkTypeForStatic() {
            this.f2120b.add(new a("gnktpfs", new Object[0]));
            return this;
        }

        public RequestBuilder getNetworkTypeForce(boolean z10) {
            this.f2120b.add(new a("gneypfce", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getNetworkTypeNew() {
            this.f2120b.add(new a("gneypnw", new Object[0]));
            return this;
        }

        public RequestBuilder getOD() {
            this.f2120b.add(new a("godm", new Object[0]));
            return this;
        }

        public RequestBuilder getODH() {
            this.f2120b.add(new a("godhm", new Object[0]));
            return this;
        }

        public RequestBuilder getPInfo(String str, int i10) {
            this.f2120b.add(new a("gpgif", new Object[]{str, Integer.valueOf(i10)}));
            return this;
        }

        public RequestBuilder getPInfoForce(boolean z10, String str, int i10) {
            this.f2120b.add(new a("gpgiffcin", new Object[]{Boolean.valueOf(z10), str, Integer.valueOf(i10)}));
            return this;
        }

        public RequestBuilder getPInfoStrategy(int i10, String str, int i11) {
            this.f2120b.add(new a("gpgifstrg", new Object[]{Integer.valueOf(i10), str, Integer.valueOf(i11)}));
            return this;
        }

        public RequestBuilder getPPL(boolean z10) {
            this.f2120b.add(new a("gppl", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getPosCommForce(int i10, int i11, boolean z10, boolean z11) {
            this.f2120b.add(new a("gtelcmefce", new Object[]{Integer.valueOf(i10), Integer.valueOf(i11), Boolean.valueOf(z10), Boolean.valueOf(z11)}));
            return this;
        }

        public RequestBuilder getQemuKernel() {
            this.f2120b.add(new a("gqmkn", new Object[0]));
            return this;
        }

        public RequestBuilder getRd() {
            this.f2120b.add(new a("gtrddi", new Object[0]));
            return this;
        }

        public RequestBuilder getRuntimeMemory(boolean z10) {
            this.f2120b.add(new a("gtrtmey", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getSA() {
            this.f2120b.add(new a("gsl", new Object[0]));
            return this;
        }

        public RequestBuilder getSSID() {
            this.f2120b.add(new a("gsimt", new Object[0]));
            return this;
        }

        public RequestBuilder getSSIDForce(boolean z10) {
            this.f2120b.add(new a("gsimtfce", new Object[]{Boolean.valueOf(z10)}));
            return this;
        }

        public RequestBuilder getScreenInch() {
            this.f2120b.add(new a("gtscnin", new Object[0]));
            return this;
        }

        public RequestBuilder getScreenPpi() {
            this.f2120b.add(new a("gtscnppi", new Object[0]));
            return this;
        }

        public RequestBuilder getScreenSize() {
            this.f2120b.add(new a("gscsz", new Object[0]));
            return this;
        }

        public RequestBuilder getSdcardState() {
            return this;
        }

        public RequestBuilder getSecurePch() {
            this.f2120b.add(new a("gtscrpch", new Object[0]));
            return this;
        }

        public RequestBuilder getSerialno() {
            return this;
        }

        public RequestBuilder getSignMD5() {
            this.f2120b.add(new a("gsnmd", new Object[0]));
            return this;
        }

        public RequestBuilder getSignMD5ForPkg(String str) {
            this.f2120b.add(new a("gsnmdfp", new Object[]{str}));
            return this;
        }

        public RequestBuilder getSimSerialNumber() {
            return this;
        }

        public RequestBuilder getSizeInfo() {
            this.f2120b.add(new a("gszin", new Object[0]));
            return this;
        }

        public RequestBuilder getSystemProperties(String str) {
            this.f2120b.add(new a("gstmpts", new Object[]{str}));
            return this;
        }

        public RequestBuilder getTTYDriversInfo() {
            this.f2120b.add(new a("gtydvin", new Object[0]));
            return this;
        }

        public RequestBuilder getTopActivity() {
            return this;
        }

        public RequestBuilder getUpM() {
            return this;
        }

        public RequestBuilder isHmOs() {
            this.f2120b.add(new a("ishmos", new Object[0]));
            return this;
        }

        public RequestBuilder isMwpy() {
            this.f2120b.add(new a("miwpy", new Object[0]));
            return this;
        }

        public RequestBuilder isPackageInstalled(String str) {
            this.f2120b.add(new a("ipgist", new Object[]{str}));
            return this;
        }

        public RequestBuilder isRooted() {
            this.f2120b.add(new a("cird", new Object[0]));
            return this;
        }

        public RequestBuilder isWifiProxy() {
            this.f2120b.add(new a("iwpxy", new Object[0]));
            return this;
        }

        public RequestBuilder queryIMEI() {
            return this;
        }

        public RequestBuilder queryIMSI() {
            return this;
        }

        public RequestBuilder queryIntentServices(Intent intent, int i10) {
            this.f2120b.add(new a("qritsvc", new Object[]{intent, Integer.valueOf(i10)}));
            return this;
        }

        public void request(final DHResponder dHResponder) {
            try {
                boolean z10 = Looper.getMainLooper() == Looper.myLooper();
                final Boolean bool = cn.fly.tools.c.a.f2024b.get();
                final Boolean bool2 = cn.fly.tools.c.a.f2025c.get();
                final boolean z11 = z10;
                Runnable runnable = new Runnable() { // from class: cn.fly.tools.utils.DH.RequestBuilder.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            cn.fly.tools.c.a.f2023a.set(Boolean.TRUE);
                            cn.fly.tools.c.a.f2024b.set(bool);
                            cn.fly.tools.c.a.f2025c.set(bool2);
                            final DHResponse dHResponseA = RequestBuilder.this.a();
                            DHResponder dHResponder2 = dHResponder;
                            if (dHResponder2 != null) {
                                if (z11) {
                                    UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.fly.tools.utils.DH.RequestBuilder.1.1
                                        @Override // android.os.Handler.Callback
                                        public boolean handleMessage(Message message) {
                                            try {
                                                dHResponder.onResponse(dHResponseA);
                                            } catch (Throwable th) {
                                                FlyLog.getInstance().d(th, "Error from caller", new Object[0]);
                                            }
                                            return false;
                                        }
                                    });
                                } else {
                                    try {
                                        dHResponder2.onResponse(dHResponseA);
                                    } catch (Throwable th) {
                                        FlyLog.getInstance().d(th, "Error from caller", new Object[0]);
                                    }
                                }
                            }
                            ThreadLocal<Boolean> threadLocal = cn.fly.tools.c.a.f2023a;
                            Boolean bool3 = Boolean.FALSE;
                            threadLocal.set(bool3);
                            cn.fly.tools.c.a.f2024b.set(bool3);
                            cn.fly.tools.c.a.f2025c.set(bool3);
                        } catch (Throwable th2) {
                            FlyLog.getInstance().d(th2);
                            RequestBuilder.this.a(dHResponder);
                        }
                    }
                };
                if (z10) {
                    ac.f1046e.execute(runnable);
                } else {
                    runnable.run();
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
                if (dHResponder != null) {
                    a(dHResponder);
                }
            }
        }

        public RequestBuilder resolveActivity(Intent intent, int i10) {
            this.f2120b.add(new a("rsaciy", new Object[]{intent, Integer.valueOf(i10)}));
            return this;
        }

        public RequestBuilder usbEnable() {
            this.f2120b.add(new a("ubenbl", new Object[0]));
            return this;
        }

        public RequestBuilder vpn() {
            this.f2120b.add(new a("vnmt", new Object[0]));
            return this;
        }

        private RequestBuilder(Context context) {
            this.f2120b = new LinkedList<>();
            this.f2119a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(DHResponder dHResponder) {
            if (dHResponder != null) {
                try {
                    dHResponder.onResponse(new DHResponse());
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th, "Error from caller", new Object[0]);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DHResponse a() {
            DHResponse dHResponse = new DHResponse();
            for (int i10 = 0; i10 < this.f2120b.size(); i10++) {
                a aVar = this.f2120b.get(i10);
                try {
                    String str = aVar.f2128a;
                    dHResponse.a(str, a(str, aVar.f2129b));
                } catch (Throwable th) {
                    try {
                        FlyLog.getInstance().d(th);
                        dHResponse.a(aVar.f2128a, (Object) null, true);
                    } catch (Throwable th2) {
                        FlyLog.getInstance().d(th2);
                    }
                }
            }
            return dHResponse;
        }

        private Object a(String str, Object[] objArr) throws Throwable {
            if ("gmpfo".equals(str)) {
                if (objArr != null && objArr.length == 2) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().b(false, 0, (String) objArr[0], ((Integer) objArr[1]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gmpfofce".equals(str)) {
                if (objArr != null && objArr.length == 3) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().b(((Boolean) objArr[0]).booleanValue(), 0, (String) objArr[1], ((Integer) objArr[2]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("getMpfos".equals(str)) {
                if (objArr != null && objArr.length == 3) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().b(false, ((Integer) objArr[0]).intValue(), (String) objArr[1], ((Integer) objArr[2]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("cird".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().a());
            }
            if ("gsimt".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().a(false);
            }
            if ("gsimtfce".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gbsi".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().b(false);
            }
            if ("gbsifce".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().b(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gstmpts".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a((String) objArr[0]);
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gscsz".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().J();
            }
            if ("gcrie".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().c(false);
            }
            if ("gcriefce".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().c(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gcriefcestr".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().d(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gcrnm".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().e(false);
            }
            if ("gcrnmfce".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().e(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gcrnmfcestr".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().f(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gsnmd".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().Z();
            }
            if ("gsnmdfp".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().c((String) objArr[0]);
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gneyp".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().h(false);
            }
            if ("gneypnw".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().i(false);
            }
            if ("gneypfce".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().h(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("cknavbl".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().j(false));
            }
            if ("cknavblfc".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().j(((Boolean) objArr[0]).booleanValue()));
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gnktpfs".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().K();
            }
            if ("gdtlnktpfs".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().L();
            }
            if ("gdvk".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().X();
            }
            if ("gdvkfc".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().l(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gpnmmt".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().ab();
            }
            if ("gpnmfp".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().d((String) objArr[0]);
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gia".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a(((Boolean) objArr[0]).booleanValue(), false);
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("giafce".equals(str)) {
                if (objArr != null && objArr.length == 2) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a(((Boolean) objArr[0]).booleanValue(), ((Boolean) objArr[1]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gsl".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().W();
            }
            if ("gscpt".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().Y();
            }
            if ("gavti".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().j();
            }
            if ("glctn".equals(str)) {
                if (objArr != null && objArr.length == 3) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Boolean) objArr[2]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gtecloc".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().t();
            }
            if ("gnbclin".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().u();
            }
            if ("gdvtp".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().s();
            }
            if ("wmcwi".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().v();
            }
            if ("ipgist".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().b((String) objArr[0]));
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gcuin".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().C();
            }
            if ("gabis".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().D();
            }
            if ("gtydvin".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().E();
            }
            if ("gqmkn".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().F();
            }
            if ("gszin".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().G();
            }
            if ("gmrin".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().H();
            }
            if ("gmivsn".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().k();
            }
            if ("gmivsnfly".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().l();
            }
            if ("cx".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().b());
            }
            if ("ckpd".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().c());
            }
            if ("ubenbl".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().h());
            }
            if ("dvenbl".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().g());
            }
            if ("ckua".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().f());
            }
            if ("vnmt".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().e());
            }
            if ("degb".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().d());
            }
            if ("iwpxy".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().i());
            }
            if ("gflv".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().P();
            }
            if ("gbsbd".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().Q();
            }
            if ("gbfspy".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().R();
            }
            if ("gbplfo".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().S();
            }
            if ("gdntp".equals(str)) {
                return Integer.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().M());
            }
            if ("gdntpstr".equals(str)) {
                return Integer.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().N());
            }
            if ("qritsvc".equals(str)) {
                if (objArr != null && objArr.length == 2) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a((Intent) objArr[0], ((Integer) objArr[1]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("rsaciy".equals(str)) {
                if (objArr != null && objArr.length == 2) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().b((Intent) objArr[0], ((Integer) objArr[1]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gpgif".equals(str)) {
                if (objArr != null && objArr.length == 2) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a(false, 0, (String) objArr[0], ((Integer) objArr[1]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gpgiffcin".equals(str)) {
                if (objArr != null && objArr.length == 3) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a(((Boolean) objArr[0]).booleanValue(), 0, (String) objArr[1], ((Integer) objArr[2]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gpgifstrg".equals(str)) {
                if (objArr != null && objArr.length == 3) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a(false, ((Integer) objArr[0]).intValue(), (String) objArr[1], ((Integer) objArr[2]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("giads".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().T();
            }
            if ("giadsstr".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().U();
            }
            if ("gdvda".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().ai();
            }
            if ("gdvdtnas".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().aj();
            }
            if ("galtut".equals(str)) {
                return Long.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().ak());
            }
            if ("gdvme".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().al();
            }
            if ("gcrup".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().am();
            }
            if ("gcifm".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().an();
            }
            if ("godm".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().ao();
            }
            if ("godhm".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().ap();
            }
            if ("galdm".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().aq();
            }
            if ("gtaif".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().ar();
            }
            if ("gtaifprm".equals(str)) {
                if (objArr != null && objArr.length == 2) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a((String) objArr[0], ((Integer) objArr[1]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gtaifprmfce".equals(str)) {
                if (objArr != null && objArr.length == 3) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a(((Boolean) objArr[0]).booleanValue(), (String) objArr[1], ((Integer) objArr[2]).intValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gtdrd".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().at();
            }
            if ("gtbdt".equals(str)) {
                return Long.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().au());
            }
            if ("gtscnin".equals(str)) {
                return Double.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().av());
            }
            if ("gtscnppi".equals(str)) {
                return Integer.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().aw());
            }
            if ("ishmos".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().ax());
            }
            if ("gthmosv".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().ay();
            }
            if ("gthmosdtlv".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().az();
            }
            if ("gthmpmst".equals(str)) {
                return Integer.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().aA());
            }
            if ("gthmepmst".equals(str)) {
                return Integer.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().aB());
            }
            if ("gtinnerlangmt".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().aC();
            }
            if ("gtgramgendt".equals(str)) {
                return Integer.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().aD());
            }
            if ("gtelcmefce".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().a(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Boolean) objArr[2]).booleanValue(), ((Boolean) objArr[3]).booleanValue());
            }
            if ("gtmwfo".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().g(false);
            }
            if ("wmcwifce".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().g(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gtaifok".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().as();
            }
            if ("gtmcdi".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().a(false);
            }
            if ("gtmcdifce".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().a(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gtmbcdi".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().b(false);
            }
            if ("gtmbcdifce".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().b(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("miwpy".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().i());
            }
            if ("gtmnbclfo".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().u();
            }
            if ("ctedebbing".equals(str)) {
                return Boolean.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().aE());
            }
            if ("gteacifo".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().aF();
            }
            if ("gtdm".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().m(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gtlstactme".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return Long.valueOf(cn.fly.tools.b.c.a(this.f2119a).d().f((String) objArr[0]));
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gtscrpch".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().aI();
            }
            if ("gtrtmey".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().n(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gppl".equals(str)) {
                if (objArr != null && objArr.length == 1) {
                    return cn.fly.tools.b.c.a(this.f2119a).d().k(((Boolean) objArr[0]).booleanValue());
                }
                throw new Throwable("params illegal: " + objArr);
            }
            if ("gtrddi".equals(str)) {
                return cn.fly.tools.b.c.a(this.f2119a).d().aJ();
            }
            return null;
        }
    }

    public static final class SyncMtd {
        public static String Base64AES(String str, String str2) {
            return Data.Base64AES(str, str2);
        }

        public static boolean checkPermission(String str) {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().e(str);
        }

        public static Object currentActivityThread() {
            return C1293r.b();
        }

        public static String getAppLanguage() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().I();
        }

        public static int getAppVersion() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().ac();
        }

        public static String getAppVersionName() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().ad();
        }

        public static Context getApplication() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().ah();
        }

        public static String getBrand() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().q();
        }

        public static String getBrandForFly() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().r();
        }

        public static String getCurrentProcessName() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().af();
        }

        public static String getManufacturer() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().o();
        }

        public static String getManufacturerForFly() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().p();
        }

        public static String getModel() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().m();
        }

        public static String getModelForFly() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().n();
        }

        public static String getOSCountry() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().B();
        }

        public static String getOSLanguage() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().A();
        }

        public static int getOSVersionInt() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().w();
        }

        public static int getOSVersionIntForFly() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().x();
        }

        public static String getOSVersionName() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().y();
        }

        public static String getOSVersionNameForFly() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().z();
        }

        public static String getPackageName() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().aa();
        }

        public static int getPlatformCode() {
            return 1;
        }

        public static String getSandboxPath() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().Y();
        }

        public static String getSystemProperties(String str) {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().a(str);
        }

        public static Object getSystemServiceSafe(String str) {
            return C1293r.d(str);
        }

        public static String getTimezone() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().O();
        }

        public static void hideSoftInput(View view) {
            C1293r.a(view);
        }

        public static <T> T invokeInstanceMethod(Object obj, String str, Object... objArr) {
            return (T) ReflectHelper.invokeInstanceMethodNoThrow(obj, str, null, objArr);
        }

        public static boolean isAut() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().aH();
        }

        public static boolean isGooglePlayServicesAvailable() {
            return false;
        }

        public static boolean isInMainProcess() {
            return cn.fly.tools.b.c.a(FlySDK.getContext()).d().ae();
        }

        public static boolean isSupportPushRid() {
            return true;
        }

        public static void showSoftInput(View view) {
            C1293r.b(view);
        }

        public static <T> T invokeInstanceMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr) {
            try {
                return (T) ReflectHelper.invokeInstanceMethod(obj, str, objArr, clsArr);
            } catch (Throwable th) {
                if (!(th instanceof InvocationTargetException)) {
                    if (!(th instanceof PackageManager.NameNotFoundException)) {
                        FlyLog.getInstance().d(th);
                        return null;
                    }
                    FlyLog.getInstance().d("Exception: " + th.getClass().getName() + ": " + th.getMessage(), new Object[0]);
                    return null;
                }
                String name = th.getClass().getName();
                String message = th.getMessage();
                Throwable cause = th.getCause();
                if (cause != null) {
                    name = cause.getClass().getName();
                    message = cause.getMessage();
                }
                FlyLog.getInstance().d("Exception: " + name + ": " + message, new Object[0]);
                return null;
            }
        }
    }

    public static RequestBuilder requester(Context context) {
        return new RequestBuilder(context);
    }
}
