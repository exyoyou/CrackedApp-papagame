package cn.sharesdk.framework.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.a.a.e;
import cn.sharesdk.framework.a.b.j;
import cn.sharesdk.framework.utils.SSDKLog;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.facebook.common.util.f;
import com.join.mgps.Util.o0;
import com.mob.MobSDK;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.DH;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.ResHelper;
import com.umeng.umcrash.UMCrash;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f2499a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2502d = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f2500b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f2501c = e.a();

    private a() {
    }

    private String c(String str) throws Throwable {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = byteArrayInputStream.read(bArr, 0, 1024);
            if (i10 == -1) {
                gZIPOutputStream.flush();
                gZIPOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                byteArrayInputStream.close();
                return Base64.encodeToString(byteArray, 2);
            }
            gZIPOutputStream.write(bArr, 0, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(cn.sharesdk.framework.a.b.e eVar) {
        try {
            long jB = this.f2501c.b();
            if (jB == 0) {
                jB = this.f2500b.b();
            }
            eVar.f2536e = System.currentTimeMillis() - jB;
            this.f2500b.a(eVar);
        } catch (Throwable th) {
            SSDKLog.b().a("s l" + th, new Object[0]);
        }
    }

    public static a a() {
        if (f2499a == null) {
            f2499a = new a();
        }
        return f2499a;
    }

    public void a(String str) {
        if (this.f2500b == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f2500b.a(str);
    }

    public void b() {
        boolean zA;
        try {
            if (this.f2501c.i()) {
                ArrayList<cn.sharesdk.framework.a.a.c> arrayListC = this.f2500b.c();
                for (int i10 = 0; i10 < arrayListC.size(); i10++) {
                    cn.sharesdk.framework.a.a.c cVar = arrayListC.get(i10);
                    if (cVar.f2520b.size() == 1) {
                        zA = a(cVar.f2519a, false);
                    } else {
                        zA = a(c(cVar.f2519a), true);
                    }
                    if (zA) {
                        this.f2500b.a(cVar.f2520b);
                    }
                }
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public void a(final ShareSDKCallback<Boolean> shareSDKCallback) {
        DH.requester(MobSDK.getContext()).getNetworkType().request(new DH.DHResponder() { // from class: cn.sharesdk.framework.a.a.1
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    String networkType = dHResponse.getNetworkType();
                    if (!"none".equals(networkType) && !TextUtils.isEmpty(networkType)) {
                        long jLongValue = a.this.f2501c.j().longValue();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        Calendar calendar = Calendar.getInstance();
                        calendar.setTimeInMillis(jLongValue);
                        int i10 = calendar.get(5);
                        calendar.setTimeInMillis(jCurrentTimeMillis);
                        int i11 = calendar.get(5);
                        if (jCurrentTimeMillis - jLongValue >= 86400000 && i10 != i11) {
                            HashMap<String, Object> mapA = a.this.f2500b.a();
                            a.this.f2501c.c(mapA.containsKey(f.f26953g) ? "true".equals(String.valueOf(mapA.get(f.f26953g))) : true);
                            if (mapA.size() > 0) {
                                a.this.f2501c.b(System.currentTimeMillis());
                            }
                        }
                        shareSDKCallback.onCallback(Boolean.TRUE);
                    }
                } catch (Throwable th) {
                    shareSDKCallback.onCallback(Boolean.FALSE);
                    SSDKLog.b().a(th);
                }
            }
        });
    }

    public void a(final Handler handler) {
        try {
            if (this.f2501c.i()) {
                this.f2501c.a(System.currentTimeMillis());
                this.f2500b.a(new ShareSDKCallback<HashMap<String, Object>>() { // from class: cn.sharesdk.framework.a.a.2
                    @Override // cn.sharesdk.framework.ShareSDKCallback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onCallback(HashMap<String, Object> map) {
                        HashMap map2;
                        HashMap map3;
                        HashMap map4;
                        if (map == null || map.isEmpty()) {
                            return;
                        }
                        try {
                            if (map.containsKey("status") && ResHelper.parseInt(String.valueOf(map.get("status"))) == -200) {
                                SSDKLog.b().a((String) map.get("error"), new Object[0]);
                                return;
                            }
                        } catch (Throwable th) {
                            SSDKLog.b().a("get status" + th, new Object[0]);
                        }
                        try {
                            if (map.containsKey(UMCrash.SP_KEY_TIMESTAMP)) {
                                a.this.f2501c.a("service_time", Long.valueOf(System.currentTimeMillis() - ResHelper.parseLong(String.valueOf(map.get(UMCrash.SP_KEY_TIMESTAMP)))));
                            }
                        } catch (Throwable th2) {
                            SSDKLog.b().a(UMCrash.SP_KEY_TIMESTAMP + th2, new Object[0]);
                        }
                        try {
                            if (map.containsKey("specurls") && (map4 = (HashMap) map.get("specurls")) != null && !map4.isEmpty()) {
                                e.a().a("twitter_auth_url", String.valueOf(map4.get("twitterAuthUrl")));
                            }
                        } catch (Throwable th3) {
                            SSDKLog.b().a("specurls" + th3, new Object[0]);
                        }
                        if (map.containsKey("switchs") && (map3 = (HashMap) map.get("switchs")) != null) {
                            String strValueOf = String.valueOf(map3.get("device"));
                            String strValueOf2 = String.valueOf(map3.get("share"));
                            String strValueOf3 = String.valueOf(map3.get(com.coremedia.iso.boxes.c.f24723u));
                            String strValueOf4 = String.valueOf(map3.get("backflow"));
                            String strValueOf5 = String.valueOf(map3.get("loginplus"));
                            String strValueOf6 = String.valueOf(map3.get("linkcard"));
                            a.this.f2501c.b(strValueOf);
                            a.this.f2501c.d(strValueOf2);
                            a.this.f2501c.c(strValueOf3);
                            a.this.f2501c.a(strValueOf4);
                            a.this.f2501c.e(strValueOf5);
                            a.this.f2501c.f(strValueOf6);
                        }
                        if (!map.containsKey("serpaths") || (map2 = (HashMap) map.get("serpaths")) == null) {
                            return;
                        }
                        String strValueOf7 = String.valueOf(map2.get("defhost"));
                        String strValueOf8 = String.valueOf(map2.get("defport"));
                        if (!TextUtils.isEmpty(strValueOf7) && !TextUtils.isEmpty(strValueOf8)) {
                            if (LiveConfigKey.DEFAULT_TLS_PORT.equals(strValueOf8) || "80".equals(strValueOf8)) {
                                a.this.f2500b.b(MobSDK.checkRequestUrl(strValueOf7));
                            } else {
                                a.this.f2500b.b(MobSDK.checkRequestUrl(strValueOf7) + ":" + strValueOf8);
                            }
                        }
                        HashMap<String, String> map5 = new HashMap<>();
                        if (map2.containsKey("assigns")) {
                            HashMap map6 = (HashMap) map2.get("assigns");
                            if (map6 == null || map6.size() == 0) {
                                a.this.f2500b.a((HashMap<String, String>) null);
                                return;
                            }
                            for (String str : map6.keySet()) {
                                HashMap map7 = (HashMap) map6.get(str);
                                String strValueOf9 = String.valueOf(map7.get(u.c.f97430f));
                                String strValueOf10 = String.valueOf(map7.get("port"));
                                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(strValueOf9) && !TextUtils.isEmpty(strValueOf10)) {
                                    map5.put(str, "http://" + strValueOf9 + ":" + strValueOf10);
                                }
                            }
                            a.this.f2500b.a(map5);
                            handler.sendEmptyMessageDelayed(4, 600000L);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public HashMap<String, Object> c() {
        try {
            return this.f2500b.d();
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return new HashMap<>();
        }
    }

    public void a(cn.sharesdk.framework.a.b.e eVar) {
        try {
            if (this.f2501c.i()) {
                if (!this.f2501c.c()) {
                    eVar.f2543l = null;
                }
                if (eVar instanceof cn.sharesdk.framework.a.b.d) {
                    a((cn.sharesdk.framework.a.b.d) eVar);
                    b(eVar);
                } else if (eVar instanceof j) {
                    a((j) eVar);
                } else {
                    b(eVar);
                }
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public HashMap<String, Object> b(String str) {
        if (!this.f2501c.i() && this.f2501c.k()) {
            return new HashMap<>();
        }
        try {
            HashMap<String, Object> mapD = this.f2500b.d(str);
            this.f2501c.d(true);
            return mapD;
        } catch (Throwable th) {
            this.f2501c.d(false);
            SSDKLog.b().a(th);
            return new HashMap<>();
        }
    }

    private void a(cn.sharesdk.framework.a.b.d dVar) throws Throwable {
        boolean zD = this.f2501c.d();
        String str = dVar.f2534c;
        if (zD && !TextUtils.isEmpty(str)) {
            dVar.f2534c = Data.Base64AES(str, dVar.f2537f.substring(0, 16));
        } else {
            dVar.f2535d = null;
            dVar.f2534c = null;
        }
    }

    private void a(final j jVar) throws Throwable {
        ArrayList arrayList;
        ArrayList<Bitmap> arrayList2;
        int iF = this.f2501c.f();
        boolean zD = this.f2501c.d();
        final j.a aVar = jVar.f2559d;
        if (!zD) {
            jVar.f2560o = null;
        }
        if (iF == 1) {
            if (aVar != null && aVar.f2566e != null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList(aVar.f2566e);
            }
            int size = (aVar == null || (arrayList2 = aVar.f2567f) == null) ? 0 : arrayList2.size();
            for (int i10 = 0; i10 < size; i10++) {
                Bitmap bitmap = aVar.f2567f.get(i10);
                try {
                    File fileCreateTempFile = File.createTempFile("bm_tmp", ".png");
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    arrayList.add(fileCreateTempFile.getAbsolutePath());
                } catch (Throwable th) {
                    SSDKLog.b().a("bit" + th, new Object[0]);
                }
            }
            if (arrayList.size() > 0) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    a((String) it2.next(), b.FINISH_SHARE, new ShareSDKCallback<String>() { // from class: cn.sharesdk.framework.a.a.3
                        @Override // cn.sharesdk.framework.ShareSDKCallback
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public void onCallback(String str) {
                            if (!TextUtils.isEmpty(str)) {
                                aVar.f2565d.add(str);
                            }
                            a.this.b(jVar);
                        }
                    });
                }
                return;
            }
            b(jVar);
            return;
        }
        jVar.f2559d = null;
        b(jVar);
    }

    private void a(String str, b bVar, ShareSDKCallback<String> shareSDKCallback) throws Throwable {
        double dCeil;
        if (TextUtils.isEmpty(str) || !new File(str).exists()) {
            if (shareSDKCallback != null) {
                shareSDKCallback.onCallback(null);
                return;
            }
            return;
        }
        Bitmap.CompressFormat bmpFormat = BitmapHelper.getBmpFormat(str);
        float f10 = bVar == b.BEFORE_SHARE ? 600.0f : 200.0f;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        if (i10 >= i11 && i11 > f10) {
            dCeil = Math.ceil(i11 / f10);
        } else if (i10 < i11 && i10 > f10) {
            dCeil = Math.ceil(i10 / f10);
        } else {
            a(str, shareSDKCallback);
            return;
        }
        int i12 = (int) dCeil;
        if (i12 <= 0) {
            i12 = 1;
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inSampleSize = i12;
        options2.inPurgeable = true;
        options2.inInputShareable = true;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options2);
        bitmapDecodeFile.getHeight();
        bitmapDecodeFile.getWidth();
        File fileCreateTempFile = File.createTempFile("bm_tmp2", o0.f49827a + bmpFormat.name().toLowerCase());
        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
        bitmapDecodeFile.compress(bmpFormat, 80, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        a(fileCreateTempFile.getAbsolutePath(), shareSDKCallback);
    }

    private void a(final String str, final ShareSDKCallback<String> shareSDKCallback) throws Throwable {
        DH.requester(MobSDK.getContext()).getNetworkType().request(new DH.DHResponder() { // from class: cn.sharesdk.framework.a.a.4
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    String networkType = dHResponse.getNetworkType();
                    if (!"none".equals(networkType) && !TextUtils.isEmpty(networkType)) {
                        HashMap<String, Object> mapC = a.this.f2500b.c(str);
                        if (mapC != null && mapC.size() > 0) {
                            if (!mapC.containsKey("status")) {
                                ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                                if (shareSDKCallback2 != null) {
                                    shareSDKCallback2.onCallback(null);
                                    return;
                                }
                                return;
                            }
                            if (ResHelper.parseInt(String.valueOf(mapC.get("status"))) != 200) {
                                ShareSDKCallback shareSDKCallback3 = shareSDKCallback;
                                if (shareSDKCallback3 != null) {
                                    shareSDKCallback3.onCallback(null);
                                    return;
                                }
                                return;
                            }
                            String str2 = mapC.containsKey("url") ? (String) mapC.get("url") : null;
                            ShareSDKCallback shareSDKCallback4 = shareSDKCallback;
                            if (shareSDKCallback4 != null) {
                                shareSDKCallback4.onCallback(str2);
                                return;
                            }
                            return;
                        }
                        ShareSDKCallback shareSDKCallback5 = shareSDKCallback;
                        if (shareSDKCallback5 != null) {
                            shareSDKCallback5.onCallback(null);
                            return;
                        }
                        return;
                    }
                    ShareSDKCallback shareSDKCallback6 = shareSDKCallback;
                    if (shareSDKCallback6 != null) {
                        shareSDKCallback6.onCallback(null);
                    }
                } catch (Throwable unused) {
                    SSDKLog.b().a("up fi", new Object[0]);
                    ShareSDKCallback shareSDKCallback7 = shareSDKCallback;
                    if (shareSDKCallback7 != null) {
                        shareSDKCallback7.onCallback(null);
                    }
                }
            }
        });
    }

    private boolean a(String str, boolean z10) throws Throwable {
        return this.f2500b.a(str, z10);
    }

    public void a(String str, int i10, boolean z10, String str2, ShareSDKCallback<String> shareSDKCallback) {
        try {
            if ((!this.f2501c.i() || !this.f2501c.e()) && shareSDKCallback != null) {
                shareSDKCallback.onCallback(str);
                return;
            }
            SSDKLog.b().c("> SERVER_SHORT_LINK_URL content before replace link ===  %s", str);
            if (z10) {
                a(str, "<a[^>]*?href[\\s]*=[\\s]*[\"']?([^'\">]+?)['\"]?>", i10, str2, shareSDKCallback);
            } else {
                a(str, "(http://|https://){1}[\\w\\.\\-/:\\?&%=,;\\[\\]\\{\\}`~!@#\\$\\^\\*\\(\\)_\\+\\\\\\|]+", i10, str2, shareSDKCallback);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            if (shareSDKCallback != null) {
                shareSDKCallback.onCallback("error:" + th.getMessage());
            }
        }
    }

    private void a(final String str, String str2, int i10, String str3, final ShareSDKCallback<String> shareSDKCallback) throws Throwable {
        ArrayList<String> arrayList = new ArrayList<>();
        final Pattern patternCompile = Pattern.compile(str2);
        Matcher matcher = patternCompile.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group();
            if (strGroup != null && strGroup.length() > 0) {
                arrayList.add(strGroup);
            }
        }
        if (arrayList.size() != 0) {
            this.f2500b.a(str, arrayList, i10, str3, new ShareSDKCallback<HashMap<String, Object>>() { // from class: cn.sharesdk.framework.a.a.5
                @Override // cn.sharesdk.framework.ShareSDKCallback
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void onCallback(HashMap<String, Object> map) {
                    if (map == null || map.size() <= 0) {
                        shareSDKCallback.onCallback(str);
                        return;
                    }
                    if (!map.containsKey("data")) {
                        shareSDKCallback.onCallback(str);
                        return;
                    }
                    ArrayList<HashMap> arrayList2 = (ArrayList) map.get("data");
                    HashMap map2 = new HashMap();
                    for (HashMap map3 : arrayList2) {
                        map2.put(String.valueOf(map3.get("source")), String.valueOf(map3.get("surl")));
                    }
                    Matcher matcher2 = patternCompile.matcher(str);
                    StringBuilder sb2 = new StringBuilder();
                    int iEnd = 0;
                    while (matcher2.find()) {
                        sb2.append(str.substring(iEnd, matcher2.start()));
                        sb2.append((String) map2.get(matcher2.group()));
                        iEnd = matcher2.end();
                    }
                    sb2.append(str.substring(iEnd));
                    String string = sb2.toString();
                    SSDKLog.b().c("> SERVER_SHORT_LINK_URL content after replace link ===  %s", string);
                    ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                    if (shareSDKCallback2 != null) {
                        shareSDKCallback2.onCallback(string);
                    }
                }
            });
        } else if (shareSDKCallback != null) {
            shareSDKCallback.onCallback(str);
        }
    }

    public void a(HashMap<String, Object> map) {
        try {
            this.f2500b.b(map);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public HashMap<String, Object> a(String str, String str2) {
        try {
            return this.f2500b.a(str, str2);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    public String a(String str, int i10, boolean z10, String str2, HashMap<String, String> map) {
        String strA;
        try {
            if (this.f2501c.i() && this.f2501c.e()) {
                String str3 = map.get("nt");
                if (!"none".equals(str3) && !TextUtils.isEmpty(str3)) {
                    if (z10 && (strA = a(str, "<a[^>]*?href[\\s]*=[\\s]*[\"']?([^'\">]+?)['\"]?>", i10, str2, map)) != null && !strA.equals(str)) {
                        return strA;
                    }
                    String strA2 = a(str, "(http://|https://){1}[\\w\\.\\-/:\\?&%=,;\\[\\]\\{\\}`~!@#\\$\\^\\*\\(\\)_\\+\\\\\\|]+", i10, str2, map);
                    if (strA2 != null && !strA2.equals(str)) {
                        return strA2;
                    }
                }
            }
            return str;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return str;
        }
    }

    private String a(String str, String str2, int i10, String str3, HashMap<String, String> map) throws Throwable {
        HashMap<String, Object> mapA;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Pattern patternCompile = Pattern.compile(str2);
        Matcher matcher = patternCompile.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group();
            if (strGroup != null && strGroup.length() > 0) {
                arrayList.add(strGroup);
            }
        }
        if (arrayList.size() == 0 || (mapA = this.f2500b.a(str, arrayList, i10, str3, map)) == null || mapA.size() <= 0 || !mapA.containsKey("data")) {
            return str;
        }
        ArrayList<HashMap> arrayList2 = (ArrayList) mapA.get("data");
        HashMap map2 = new HashMap();
        for (HashMap map3 : arrayList2) {
            map2.put(String.valueOf(map3.get("source")), String.valueOf(map3.get("surl")));
        }
        Matcher matcher2 = patternCompile.matcher(str);
        StringBuilder sb2 = new StringBuilder();
        int iEnd = 0;
        while (matcher2.find()) {
            sb2.append(str.substring(iEnd, matcher2.start()));
            sb2.append((String) map2.get(matcher2.group()));
            iEnd = matcher2.end();
        }
        sb2.append(str.substring(iEnd, str.length()));
        String string = sb2.toString();
        SSDKLog.b().c("> SERVER_SHORT_LINK_URL content after replace link ===  %s", string);
        return string;
    }
}
