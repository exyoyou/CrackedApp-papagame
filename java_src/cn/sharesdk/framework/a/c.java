package cn.sharesdk.framework.a;

import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.a.a.e;
import cn.sharesdk.framework.utils.SSDKLog;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.kuaishou.weapon.p0.t;
import com.mob.MobCommunicator;
import com.mob.MobSDK;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.umeng.analytics.pro.bm;
import com.umeng.umcrash.UMCrash;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static MobCommunicator f2569h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f2570a = e.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NetworkHelper f2571b = new NetworkHelper();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Hashon f2572c = new Hashon();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2573d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2575f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap<String, String> f2576g;

    public c() {
        try {
            this.f2576g = (HashMap) this.f2570a.l("buffered_server_paths");
        } catch (Throwable unused) {
            this.f2576g = new HashMap<>();
        }
        h();
    }

    private static synchronized MobCommunicator g() {
        if (f2569h == null) {
            f2569h = new MobCommunicator(1024, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b671a8ca5d78efede48e291a3f", "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1");
        }
        return f2569h;
    }

    private void h() {
        this.f2573d = (DH.SyncMtd.getPackageName() + net.lingala.zip4j.util.e.F0 + DH.SyncMtd.getAppVersionName()) + " ShareSDK/3.10.36 " + ("Android/" + DH.SyncMtd.getOSVersionInt());
        try {
            this.f2574e = MobSDK.dynamicModifyUrl("api-share.mob.com");
        } catch (Throwable th) {
            this.f2574e = MobSDK.checkRequestUrl("api-share.mob.com");
            SSDKLog.b().a("001 dynamicModifyUrl catch, no problem " + th, new Object[0]);
        }
        this.f2575f = true;
    }

    private String i() {
        return this.f2574e + "/conn";
    }

    private String j() {
        HashMap<String, String> map = this.f2576g;
        if (map == null || !map.containsKey("/date")) {
            return this.f2574e + "/date";
        }
        return this.f2576g.get("/date") + "/date";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String k() {
        return this.f2574e + "/conf5";
    }

    private String l() {
        try {
            return MobSDK.dynamicModifyUrl("up.mob.com/upload/image");
        } catch (Throwable th) {
            SSDKLog.b().a("002 dynamicModifyUrl catch, no problem " + th, new Object[0]);
            return MobSDK.checkRequestUrl("up.mob.com/upload/image");
        }
    }

    private String m() {
        HashMap<String, String> map = this.f2576g;
        if (map == null || !map.containsKey("/log5")) {
            return this.f2574e + "/log5";
        }
        return this.f2576g.get("/log5") + "/log5";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String n() {
        try {
            return MobSDK.dynamicModifyUrl("l.mob.com/url/shareSdkEncryptMapping.do");
        } catch (Throwable th) {
            SSDKLog.b().a("003 dynamicModifyUrl catch, no problem " + th, new Object[0]);
            return MobSDK.checkRequestUrl("l.mob.com/url/shareSdkEncryptMapping.do");
        }
    }

    private String o() {
        HashMap<String, String> map = this.f2576g;
        if (map == null || !map.containsKey("/snsconf")) {
            return this.f2574e + "/snsconf";
        }
        return this.f2576g.get("/snsconf") + "/snsconf";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized MobCommunicator f() {
        if (f2569h == null) {
            f2569h = new MobCommunicator(1024, "bb7addd7e33383b74e82aba9b1d274c73aea6c0c71fcc88730270f630dbe490e1d162004f74e9532f98e17004630fbea9b346de63c23e83a7dfad70dd47cebfd", "288e7c44e01569a905386e6341baabfcde63ec37d0f0835cc662c299a5d0072970808a7fa434f0a51fa581d09d5ec4350ba5d548eafbe1fd956fb3afd678c1fb6134c904668652ec5cceb5d85da337a0f2f13ea457cca74a01b3ba0f4c809ad30d382bba2562ec9b996ae44c3700731c1b914997ef826331759e4084a019a03f");
        }
        return f2569h;
    }

    public void b(String str) {
        this.f2574e = str;
    }

    public HashMap<String, Object> c(String str) throws Throwable {
        KVPair<String> kVPair = new KVPair<>("file", str);
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("User-Identity", cn.sharesdk.framework.network.a.a()));
        String strHttpPost = this.f2571b.httpPost(l(), (ArrayList<KVPair<String>>) null, kVPair, arrayList, (NetworkHelper.NetworkTimeOut) null);
        SSDKLog.b().c("upload file response == %s", strHttpPost);
        return this.f2572c.fromJson(strHttpPost);
    }

    public HashMap<String, Object> d(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("appkey", MobSDK.getAppkey()));
        arrayList.add(new KVPair<>("device", str));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Identity", cn.sharesdk.framework.network.a.a()));
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 10000;
        networkTimeOut.connectionTimeout = 10000;
        return this.f2572c.fromJson(this.f2571b.httpPost(o(), arrayList, (KVPair<String>) null, arrayList2, networkTimeOut));
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        SSDKLog.b().a("duid === " + str, new Object[0]);
        this.f2573d += " " + str;
    }

    public long b() throws Throwable {
        String strHttpGet;
        if (!this.f2570a.i()) {
            return 0L;
        }
        try {
            strHttpGet = this.f2571b.httpGet(j(), null, null, null);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            strHttpGet = "{}";
        }
        HashMap mapFromJson = this.f2572c.fromJson(strHttpGet);
        if (mapFromJson.containsKey(UMCrash.SP_KEY_TIMESTAMP)) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis() - ResHelper.parseLong(String.valueOf(mapFromJson.get(UMCrash.SP_KEY_TIMESTAMP)));
                this.f2570a.a("service_time", Long.valueOf(jCurrentTimeMillis));
                return jCurrentTimeMillis;
            } catch (Throwable th2) {
                SSDKLog.b().a(th2);
                return this.f2570a.b();
            }
        }
        return this.f2570a.b();
    }

    public void a(HashMap<String, String> map) {
        this.f2576g = map;
        this.f2570a.a("buffered_server_paths", map);
    }

    public HashMap<String, Object> a() throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("appkey", MobSDK.getAppkey()));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Identity", cn.sharesdk.framework.network.a.a()));
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 30000;
        networkTimeOut.connectionTimeout = 30000;
        String strHttpPost = this.f2571b.httpPost(i(), arrayList, (KVPair<String>) null, arrayList2, networkTimeOut);
        SSDKLog.b().c(" isConnectToServer response == %s", strHttpPost);
        return this.f2572c.fromJson(strHttpPost);
    }

    public ArrayList<cn.sharesdk.framework.a.a.c> c() throws Throwable {
        ArrayList<cn.sharesdk.framework.a.a.c> arrayListA = cn.sharesdk.framework.a.a.d.a();
        return arrayListA == null ? new ArrayList<>() : arrayListA;
    }

    public HashMap<String, Object> d() throws Throwable {
        return this.f2572c.fromJson(this.f2570a.g());
    }

    public void b(HashMap<String, Object> map) throws Throwable {
        this.f2570a.g(this.f2572c.fromHashMap(map));
    }

    public void a(final ShareSDKCallback<HashMap<String, Object>> shareSDKCallback) throws Throwable {
        DH.requester(MobSDK.getContext()).getDeviceKey().getDetailNetworkTypeForStatic().getNetworkType().request(new DH.DHResponder() { // from class: cn.sharesdk.framework.a.c.1
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    String networkType = dHResponse.getNetworkType();
                    if (!"none".equals(networkType) && !TextUtils.isEmpty(networkType)) {
                        String appkey = MobSDK.getAppkey();
                        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                        arrayList.add(new KVPair<>("appkey", appkey));
                        arrayList.add(new KVPair<>("device", dHResponse.getDeviceKey()));
                        arrayList.add(new KVPair<>("plat", String.valueOf(DH.SyncMtd.getPlatformCode())));
                        arrayList.add(new KVPair<>("apppkg", DH.SyncMtd.getPackageName()));
                        arrayList.add(new KVPair<>("appver", String.valueOf(DH.SyncMtd.getAppVersion())));
                        arrayList.add(new KVPair<>("sdkver", String.valueOf(ShareSDK.SDK_VERSION_CODE)));
                        arrayList.add(new KVPair<>("networktype", dHResponse.getDetailNetworkTypeForStatic()));
                        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
                        arrayList2.add(new KVPair<>("User-Identity", cn.sharesdk.framework.network.a.a()));
                        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                        networkTimeOut.readTimout = 10000;
                        networkTimeOut.connectionTimeout = 10000;
                        String strHttpPost = c.this.f2571b.httpPost(c.this.k(), arrayList, (KVPair<String>) null, arrayList2, networkTimeOut);
                        try {
                            HashMap mapFromJson = new Hashon().fromJson(strHttpPost);
                            if (mapFromJson.containsKey("error")) {
                                if (String.valueOf(mapFromJson.get("error")).contains("'appkey' is illegal")) {
                                    if (TextUtils.isEmpty(appkey)) {
                                        cn.sharesdk.framework.b.a().b();
                                    } else {
                                        cn.sharesdk.framework.a.f2497a = true;
                                    }
                                }
                            } else if (!TextUtils.isEmpty(appkey)) {
                                cn.sharesdk.framework.a.f2498b = appkey;
                            }
                        } catch (Throwable th) {
                            SSDKLog.b().a(th);
                        }
                        SSDKLog.b().c(" get server config response == %s", strHttpPost);
                        shareSDKCallback.onCallback(c.this.f2572c.fromJson(strHttpPost));
                    }
                } catch (Throwable th2) {
                    SSDKLog.b().a("getServerConfig" + th2, new Object[0]);
                }
            }
        });
    }

    public boolean a(String str, boolean z10) {
        try {
            if (!MobSDK.isMob()) {
                return true;
            }
            HashMap<String, Object> map = new HashMap<>();
            map.put(t.f74888m, str);
            map.put(bm.aM, z10 ? "1" : "0");
            String str2 = (String) g().requestSynchronized(map, m(), false);
            SSDKLog.b().c("> Upload All Log  resp: %s", str2);
            return TextUtils.isEmpty(str2) || ((Integer) this.f2572c.fromJson(str2).get("status")).intValue() == 200;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return false;
        }
    }

    public void a(String str, final ArrayList<String> arrayList, final int i10, final String str2, final ShareSDKCallback<HashMap<String, Object>> shareSDKCallback) throws Throwable {
        DH.requester(MobSDK.getContext()).getDeviceKey().getDetailNetworkTypeForStatic().getScreenSize().getCarrier().getNetworkType().request(new DH.DHResponder() { // from class: cn.sharesdk.framework.a.c.2
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                String strEncodeToString;
                try {
                    String networkType = dHResponse.getNetworkType();
                    if ("none".equals(networkType) || TextUtils.isEmpty(networkType) || !c.this.f2575f) {
                        return;
                    }
                    boolean zC = c.this.f2570a.c();
                    boolean zD = c.this.f2570a.d();
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(Data.urlEncode(DH.SyncMtd.getPackageName(), "utf-8"));
                        sb2.append("|");
                        sb2.append(Data.urlEncode(DH.SyncMtd.getAppVersionName(), "utf-8"));
                        sb2.append("|");
                        sb2.append(Data.urlEncode(String.valueOf(ShareSDK.SDK_VERSION_CODE), "utf-8"));
                        sb2.append("|");
                        sb2.append(Data.urlEncode(String.valueOf(DH.SyncMtd.getPlatformCode()), "utf-8"));
                        sb2.append("|");
                        sb2.append(Data.urlEncode(dHResponse.getDetailNetworkTypeForStatic(), "utf-8"));
                        sb2.append("|");
                        if (zC) {
                            sb2.append(Data.urlEncode(String.valueOf(DH.SyncMtd.getOSVersionInt()), "utf-8"));
                            sb2.append("|");
                            sb2.append(Data.urlEncode(dHResponse.getScreenSize(), "utf-8"));
                            sb2.append("|");
                            sb2.append(Data.urlEncode(DH.SyncMtd.getManufacturer(), "utf-8"));
                            sb2.append("|");
                            sb2.append(Data.urlEncode(DH.SyncMtd.getModel(), "utf-8"));
                            sb2.append("|");
                            sb2.append(Data.urlEncode(dHResponse.getCarrier(), "utf-8"));
                            sb2.append("|");
                        } else {
                            sb2.append("|||||");
                        }
                        if (zD) {
                            sb2.append(str2);
                        } else {
                            sb2.append(str2.split(Constants.TIPS_SPECIAL_TAG)[0]);
                            sb2.append("|||||");
                        }
                        String string = sb2.toString();
                        SSDKLog.b().c("shorLinkMsg ===>>>>", string);
                        strEncodeToString = Base64.encodeToString(Data.AES128Encode(Data.rawMD5(String.format(ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_CACHE, dHResponse.getDeviceKey(), MobSDK.getAppkey())), string), 2);
                    } catch (Throwable th) {
                        SSDKLog.b().a(th);
                        strEncodeToString = null;
                    }
                    new ArrayList().add(new KVPair("User-Identity", cn.sharesdk.framework.network.a.a()));
                    NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                    networkTimeOut.readTimout = 5000;
                    networkTimeOut.connectionTimeout = 5000;
                    HashMap<String, Object> map = new HashMap<>();
                    map.put("key", MobSDK.getAppkey());
                    ArrayList arrayList2 = new ArrayList();
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        arrayList2.add(URLEncoder.encode((String) arrayList.get(i11), "UTF-8"));
                    }
                    map.put("urls", arrayList2);
                    map.put("deviceid", dHResponse.getDeviceKey());
                    map.put("snsplat", Integer.valueOf(i10));
                    if (TextUtils.isEmpty(str2)) {
                        SSDKLog.b().a("shortLinkMsg null", new Object[0]);
                        return;
                    }
                    map.put(t.f74888m, strEncodeToString);
                    HashMap map2 = (HashMap) c.f().requestSynchronized(map, c.this.n(), false);
                    SSDKLog.b().c("> SERVER_SHORT_LINK_URL  resp: %s", map2);
                    if (map2.size() == 0) {
                        c.this.f2575f = false;
                    } else {
                        if (map2.get("data") == null) {
                            return;
                        }
                        shareSDKCallback.onCallback(map2);
                    }
                } catch (Throwable th2) {
                    SSDKLog.b().a("getShortLink" + th2, new Object[0]);
                    ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                    if (shareSDKCallback2 != null) {
                        shareSDKCallback2.onCallback(new HashMap());
                    }
                }
            }
        });
    }

    public void a(cn.sharesdk.framework.a.b.e eVar) throws Throwable {
        cn.sharesdk.framework.a.a.d.a(eVar.toString(), eVar.f2536e);
    }

    public void a(ArrayList<String> arrayList) throws Throwable {
        cn.sharesdk.framework.a.a.d.a(arrayList);
    }

    public HashMap<String, Object> a(String str, String str2) throws Throwable {
        return this.f2572c.fromJson(new String(Data.AES128Decode(Data.rawMD5(MobSDK.getAppkey() + ":" + str2), Base64.decode(str, 2)), "UTF-8").trim());
    }

    public HashMap<String, Object> a(String str, ArrayList<String> arrayList, int i10, String str2, HashMap<String, String> map) throws Throwable {
        if (!this.f2575f) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new KVPair("key", MobSDK.getAppkey()));
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.add(new KVPair("urls", arrayList.get(i11).toString()));
        }
        arrayList2.add(new KVPair("deviceid", map.get(bm.bv)));
        arrayList2.add(new KVPair("snsplat", String.valueOf(i10)));
        String strA = a(str2, map);
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        arrayList2.add(new KVPair(t.f74888m, strA));
        new ArrayList().add(new KVPair("User-Identity", cn.sharesdk.framework.network.a.a()));
        NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
        networkTimeOut.readTimout = 5000;
        networkTimeOut.connectionTimeout = 5000;
        HashMap<String, Object> map2 = new HashMap<>();
        map2.put("key", MobSDK.getAppkey());
        ArrayList arrayList3 = new ArrayList();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            arrayList3.add(URLEncoder.encode(arrayList.get(i12), "UTF-8"));
        }
        map2.put("urls", arrayList3);
        map2.put("deviceid", map.get(bm.bv));
        map2.put("snsplat", Integer.valueOf(i10));
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        map2.put(t.f74888m, strA);
        HashMap<String, Object> map3 = (HashMap) f().requestSynchronized(map2, n(), false);
        SSDKLog.b().c("> SERVER_SHORT_LINK_URL  resp: %s", map3);
        if (map3.size() == 0) {
            this.f2575f = false;
            return null;
        }
        if (map3.get("data") == null) {
            return null;
        }
        return map3;
    }

    private String a(String str, HashMap<String, String> map) throws Throwable {
        boolean zC = this.f2570a.c();
        boolean zD = this.f2570a.d();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Data.urlEncode(DH.SyncMtd.getPackageName(), "utf-8"));
        sb2.append("|");
        sb2.append(Data.urlEncode(DH.SyncMtd.getAppVersionName(), "utf-8"));
        sb2.append("|");
        sb2.append(Data.urlEncode(String.valueOf(ShareSDK.SDK_VERSION_CODE), "utf-8"));
        sb2.append("|");
        sb2.append(Data.urlEncode(String.valueOf(DH.SyncMtd.getPlatformCode()), "utf-8"));
        sb2.append("|");
        sb2.append(Data.urlEncode(map.get("dnwktfs"), "utf-8"));
        sb2.append("|");
        if (zC) {
            sb2.append(Data.urlEncode(String.valueOf(DH.SyncMtd.getOSVersionInt()), "utf-8"));
            sb2.append("|");
            sb2.append(Data.urlEncode(map.get("srs"), "utf-8"));
            sb2.append("|");
            sb2.append(Data.urlEncode(DH.SyncMtd.getManufacturer(), "utf-8"));
            sb2.append("|");
            sb2.append(Data.urlEncode(DH.SyncMtd.getModel(), "utf-8"));
            sb2.append("|");
            sb2.append(Data.urlEncode(map.get("car"), "utf-8"));
            sb2.append("|");
        } else {
            sb2.append("|||||");
        }
        if (zD) {
            sb2.append(str);
        } else {
            sb2.append(str.split(Constants.TIPS_SPECIAL_TAG)[0]);
            sb2.append("|||||");
        }
        String string = sb2.toString();
        SSDKLog.b().c("shorLinkMsg ===>>>>", string);
        return Base64.encodeToString(Data.AES128Encode(Data.rawMD5(String.format(ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_CACHE, map.get(bm.bv), MobSDK.getAppkey())), string), 2);
    }
}
