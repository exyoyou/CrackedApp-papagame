package com.byazt.kj;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.gqp.da;
import com.byazt.gqp.t;
import com.byazt.gqp.z;
import com.byazt.hy.n;
import com.byazt.nr.a;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.x;
import com.byazt.ukr.yp;
import com.join.mgps.Util.o0;
import com.kwad.sdk.api.model.AdnName;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import net.lingala.zip4j.util.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 159, 13})
public class tt extends c {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final ConcurrentLinkedDeque<String> f16276x = new ConcurrentLinkedDeque<>();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final String f16277da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f16278i;
    public String sl;

    public tt(com.byazt.tjs.c cVar, String str, String str2, JSONObject jSONObject, String str3, String str4) {
        super(cVar, str, str2, jSONObject, str3, str4);
        this.f16277da = "index_censorship.json";
    }

    private boolean tt(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            com.byazt.edv.tt.c(str, str2);
            return true;
        } catch (Throwable th) {
            m.c(th);
            return false;
        }
    }

    @Override // com.byazt.kj.c
    public void c(String str) {
    }

    /* JADX WARN: Code duplicated, block: B:85:0x019b A[Catch: Exception -> 0x01b4, LOOP:0: B:85:0x019b->B:87:0x01a3, LOOP_START, TryCatch #5 {Exception -> 0x01b4, blocks: (B:83:0x0197, B:85:0x019b, B:87:0x01a3, B:88:0x01a7, B:90:0x01af), top: B:94:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x01a3 A[Catch: Exception -> 0x01b4, LOOP:0: B:85:0x019b->B:87:0x01a3, LOOP_END, TryCatch #5 {Exception -> 0x01b4, blocks: (B:83:0x0197, B:85:0x019b, B:87:0x01a3, B:88:0x01a7, B:90:0x01af), top: B:94:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01af A[Catch: Exception -> 0x01b4, TRY_LEAVE, TryCatch #5 {Exception -> 0x01b4, blocks: (B:83:0x0197, B:85:0x019b, B:87:0x01a3, B:88:0x01a7, B:90:0x01af), top: B:94:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01a7 A[EDGE_INSN: B:99:0x01a7->B:88:0x01a7 BREAK  A[LOOP:0: B:85:0x019b->B:87:0x01a3], SYNTHETIC] */
    public void n() {
        long j10;
        ConcurrentLinkedDeque<String> concurrentLinkedDeque;
        this.f16278i = System.currentTimeMillis();
        Context context = gt.getContext();
        String strC = c(context);
        if (uj()) {
            return;
        }
        if (gt.tt().y() == 1 && !rh.uj(context)) {
            c(null, com.byazt.tjs.uj.tt(context), context, -1L, -1L);
            return;
        }
        if (!com.byazt.tjs.uj.ve()) {
            return;
        }
        Runtime runtime = Runtime.getRuntime();
        long jFreeMemory = runtime.freeMemory() + (runtime.maxMemory() - runtime.totalMemory());
        File file = null;
        try {
            byte[] bytes = this.f16273a.toString().getBytes(StandardCharsets.UTF_8);
            if (gt.tt().j() != 1 && !com.byazt.edv.c.c(new ByteArrayInputStream(bytes), strC, "index_censorship.json", -2147483648L)) {
                throw new uj(false);
            }
            String strTt = com.byazt.tjs.uj.tt(context);
            File file2 = new File(strTt);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            String str = strTt + File.separator + this.tt + "-compress.zip";
            gt.tt().j();
            File file3 = new File(str);
            try {
                if (file3.exists()) {
                    file3.delete();
                }
                file3.createNewFile();
                String absolutePath = file3.getAbsolutePath();
                if (gt.tt().j() == 1) {
                    HashMap<String, byte[]> map = new HashMap<>();
                    map.put("index_censorship.json", bytes);
                    this.f16274c.c().put("index_censorship.json", map);
                    if (TextUtils.isEmpty(strC) || !com.byazt.edv.tt.c(this.f16274c.c(), absolutePath)) {
                        throw new uj(false);
                    }
                } else if (!tt(strC, absolutePath)) {
                    throw new uj(false);
                }
                byte[] bArrC = com.byazt.edv.c.c(absolutePath);
                long length = (int) new File(absolutePath).length();
                try {
                    long jR = ((long) gt.tt().r()) * 1048576;
                    gt.tt().r();
                    if (length > jR) {
                        throw new uj(false);
                    }
                    if (length > jFreeMemory - 1048576) {
                        throw new uj(false);
                    }
                    byte[] bArrC2 = c(bArrC, (int) length);
                    if (bArrC2 != null && bArrC2.length <= jR) {
                        if (c(bArrC2, gt.tt().s(), file3) != 200) {
                            throw new uj(false, bArrC2.length);
                        }
                        throw new uj(true, bArrC2.length);
                    }
                    throw new uj(false, true, bArrC2 == null ? 0L : bArrC2.length);
                } catch (uj e10) {
                    e = e10;
                    j10 = length;
                    file = file3;
                    m.c(e);
                    try {
                        if (e.f16285c) {
                            while (true) {
                                concurrentLinkedDeque = f16276x;
                                if (concurrentLinkedDeque.size() > 0) {
                                    break;
                                } else {
                                    concurrentLinkedDeque.pollLast();
                                }
                            }
                            if (!TextUtils.isEmpty(this.tt)) {
                                concurrentLinkedDeque.push(this.tt);
                            }
                        }
                    } catch (Exception unused) {
                    }
                    c(file, strC, context, j10, jFreeMemory);
                } catch (IOException e11) {
                    e = e11;
                    j10 = length;
                    file = file3;
                    m.c(e);
                    c(file, strC, context, j10, jFreeMemory);
                }
            } catch (uj e12) {
                e = e12;
                file = file3;
                j10 = 0;
                m.c(e);
                if (e.f16285c) {
                    while (true) {
                        concurrentLinkedDeque = f16276x;
                        if (concurrentLinkedDeque.size() > 0) {
                            break;
                            break;
                        }
                        concurrentLinkedDeque.pollLast();
                    }
                    if (!TextUtils.isEmpty(this.tt)) {
                        concurrentLinkedDeque.push(this.tt);
                    }
                }
                c(file, strC, context, j10, jFreeMemory);
            } catch (IOException e13) {
                e = e13;
                file = file3;
                j10 = 0;
                m.c(e);
                c(file, strC, context, j10, jFreeMemory);
            }
        } catch (uj e14) {
            e = e14;
        } catch (IOException e15) {
            e = e15;
        }
    }

    public boolean uj() {
        return false;
    }

    @Override // com.byazt.kj.c
    public void ve() {
        if (f16276x.contains(this.tt)) {
            this.f16274c.c(new Runnable() { // from class: com.byazt.kj.tt.3
                @Override // java.lang.Runnable
                public void run() {
                    tt.this.c(null, com.byazt.tjs.uj.tt(gt.getContext()), gt.getContext(), -1L, -1L);
                }
            });
        } else if (this.uj.compareAndSet(false, true)) {
            this.f16274c.c(new Runnable() { // from class: com.byazt.kj.tt.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        tt.this.f16275n.set(true);
                        tt.this.n();
                        tt.this.uj.set(false);
                    } catch (Throwable th) {
                        m.c(th);
                    }
                }
            });
        }
    }

    @Override // com.byazt.kj.c
    public void c(final String str, final String str2) {
        yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.kj.tt.1
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("cid", str);
                    jSONObject.put("req_id", str2);
                } catch (Exception e10) {
                    m.c(e10);
                }
                return com.byazt.qal.tt.tt().c("web_upload_start").tt(jSONObject.toString());
            }
        }, "web_upload_start");
    }

    public void c(final String str, final String str2, final long j10, final String str3, final long j11, final long j12) {
        yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.kj.tt.2
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("cid", str);
                    jSONObject.put("req_id", str2);
                    jSONObject.put("duration", System.currentTimeMillis() - j10);
                    jSONObject.put("weburl", str3);
                    jSONObject.put("size", j11);
                    jSONObject.put("avail_mem", j12);
                } catch (Exception e10) {
                    m.c(e10);
                }
                return com.byazt.qal.tt.tt().c("web_upload_finish").tt(jSONObject.toString());
            }
        }, "web_upload_finish");
    }

    @Override // com.byazt.kj.c
    public void tt(Context context, String str, com.byazt.tjs.tt ttVar, WebResourceResponse webResourceResponse, da daVar, Map<String, Object> map) {
        try {
            if (com.byazt.tjs.uj.ve()) {
                String strC = c(context);
                String string = ttVar.c().toString();
                String strTt = daVar.tt();
                if (TextUtils.equals(strTt.toLowerCase(), "javascript")) {
                    strTt = "js";
                }
                File file = new File(strC);
                if (!file.exists()) {
                    file.mkdirs();
                }
                String str2 = a.tt(string) + o0.f49827a + strTt;
                File file2 = new File(strC, str2);
                if (file2.exists()) {
                    file2.delete();
                    file2.createNewFile();
                }
                file2.getAbsolutePath();
                gt.tt().oz();
                if (com.byazt.edv.c.c(webResourceResponse.getData(), strC, str2, gt.tt().oz())) {
                    c(this.f16273a, str, daVar, str2, string, ttVar.ve(), map);
                }
            }
        } catch (Exception e10) {
            m.c(e10);
            e10.getMessage();
        }
    }

    @Override // com.byazt.kj.c
    public boolean c(WebView webView) {
        if (webView == null || f16276x.contains(this.tt)) {
            return true;
        }
        AtomicBoolean atomicBoolean = this.f16275n;
        return (atomicBoolean != null && atomicBoolean.get()) || this.f16274c.tt().get() > 0;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.byazt.kj.c
    public void c(Context context, String str, com.byazt.tjs.tt ttVar, WebResourceResponse webResourceResponse, da daVar, Map<String, Object> map) {
        int i10;
        if (com.byazt.tjs.uj.ve()) {
            String string = ttVar.c().toString();
            String strTt = daVar.tt();
            if (TextUtils.equals(strTt.toLowerCase(), "javascript")) {
                strTt = "js";
            }
            String str2 = a.tt(string) + o0.f49827a + strTt;
            if (TextUtils.isEmpty(strTt)) {
                return;
            }
            HashMap<String, byte[]> map2 = this.f16274c.c().get(strTt);
            if (map2 == null) {
                map2 = new HashMap<>();
                this.f16274c.c().put(strTt, map2);
            }
            ArrayList arrayList = new ArrayList();
            byte[] bArr = new byte[1024];
            InputStream data = webResourceResponse.getData();
            while (true) {
                try {
                    try {
                        i10 = 0;
                        if (data.read(bArr) == -1) {
                            break;
                        }
                        while (i10 < 1024) {
                            arrayList.add(Byte.valueOf(bArr[i10]));
                            i10++;
                        }
                    } catch (Exception e10) {
                        m.c(e10);
                        if (data != null) {
                            try {
                                data.close();
                                return;
                            } catch (IOException e11) {
                                m.c(e11);
                                return;
                            }
                        }
                        return;
                    }
                } catch (Throwable th) {
                    if (data != null) {
                        try {
                            data.close();
                        } catch (IOException e12) {
                            m.c(e12);
                        }
                    }
                    throw th;
                }
                if (data != null) {
                    data.close();
                }
                throw th;
            }
            byte[] bArr2 = new byte[arrayList.size()];
            while (i10 < arrayList.size()) {
                bArr2[i10] = ((Byte) arrayList.get(i10)).byteValue();
                i10++;
            }
            if (arrayList.size() <= ((long) gt.tt().oz()) * 1048576) {
                map2.put(str2, bArr2);
                c(this.f16273a, str, daVar, str2, string, ttVar.ve(), map);
            }
            try {
                data.close();
            } catch (IOException e13) {
                m.c(e13);
            }
        }
    }

    private int tt(byte[] bArr, int i10, File file) {
        if (i10 <= 0) {
            return -1;
        }
        return c(bArr, i10 - 1, file);
    }

    @Override // com.byazt.kj.c
    public void c(JSONObject jSONObject, String str, da daVar, String str2, String str3, Map<String, String> map, Map<String, Object> map2) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("name", str2);
            jSONObject2.putOpt("url", str3);
            if (map != null) {
                jSONObject2.putOpt("request_headers", new JSONObject(map));
            }
            if (daVar != null) {
                String lowerCase = daVar.toString().toLowerCase();
                if (lowerCase.contains("image")) {
                    c(jSONObject2, jSONObject, "sub_pic");
                    return;
                }
                if (!lowerCase.contains("js") && !lowerCase.contains("javascript")) {
                    if (lowerCase.contains("css")) {
                        c(jSONObject2, jSONObject, "css");
                        return;
                    } else {
                        if (lowerCase.contains(com.baidu.mobads.sdk.internal.a.f7333f)) {
                            c(jSONObject2, jSONObject, com.baidu.mobads.sdk.internal.a.f7333f);
                            return;
                        }
                        return;
                    }
                }
                c(jSONObject2, jSONObject, "js");
                return;
            }
            c(jSONObject2, jSONObject, AdnName.OTHER);
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    private void c(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(str);
            if (jSONArrayOptJSONArray == null) {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                this.f16273a.putOpt(str, jSONArray);
            } else {
                jSONArrayOptJSONArray.put(jSONObject);
                this.f16273a.putOpt(str, jSONArrayOptJSONArray);
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.kj.c
    public void c() {
        try {
            this.f16273a.putOpt(com.baidu.mobads.sdk.internal.a.f7333f, new JSONArray());
            this.f16273a.putOpt("js", new JSONArray());
            this.f16273a.putOpt("css", new JSONArray());
            this.f16273a.putOpt("sub_pic", new JSONArray());
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.kj.c
    public boolean c(da daVar) {
        try {
            Set<String> setV = gt.tt().v();
            String str = daVar.c().trim().toLowerCase() + e.F0 + daVar.tt().trim().toLowerCase();
            Objects.toString(setV);
            return setV.contains(str);
        } catch (Exception e10) {
            m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.kj.c
    public void c(com.byazt.tjs.tt ttVar, WebResourceResponse webResourceResponse, da daVar, c.InterfaceC0361c interfaceC0361c) {
        interfaceC0361c.c(true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(File file, String str, Context context, long j10, long j11) {
        try {
            com.byazt.edv.c.tt(str);
            if (file != null && file.exists()) {
                file.delete();
            }
            AtomicInteger atomicInteger = com.byazt.tjs.uj.f20230c;
            int i10 = atomicInteger.get();
            if (i10 > 0) {
                atomicInteger.decrementAndGet();
            }
            if (i10 == 0) {
                com.byazt.edv.c.tt(com.byazt.tjs.uj.tt(context));
            }
            c(this.tt, this.ve, this.f16278i, this.sp, j10, j11);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    private byte[] c(byte[] bArr, int i10) {
        return com.byazt.bzd.ve.c(bArr, i10);
    }

    private String c(Context context) {
        String str = this.sl;
        if (str != null) {
            return str;
        }
        try {
            String str2 = com.byazt.tjs.uj.tt(context) + File.separator + this.tt;
            this.sl = str2;
            return str2;
        } catch (Exception e10) {
            m.c(e10);
            StringBuilder sb2 = new StringBuilder();
            String str3 = File.separator;
            sb2.append(str3);
            sb2.append(".lp_cache");
            sb2.append(str3);
            sb2.append(this.tt);
            return sb2.toString();
        }
    }

    private int c(byte[] bArr, int i10, File file) {
        try {
            t tVarA = n.c().tt().a();
            z zVarC = z.c(da.c(HttpHeaders.Values.MULTIPART_FORM_DATA), bArr, "file", file.getName());
            String strIu = gt.tt().iu();
            String str = "?aid=" + x.m().rl() + "&device_platform=android&device_type=android&source_type=union";
            com.byazt.gqp.m mVarTt = tVarA.c(new com.byazt.gqp.yp.c().c(strIu + str).c(zVarC).tt()).tt();
            if (mVarTt.ve() == 200) {
                JSONObject jSONObject = new JSONObject(mVarTt.a().tt());
                int iOptInt = jSONObject.optInt("code");
                String strOptString = jSONObject.optString("msg");
                if (iOptInt == 0 && TextUtils.equals("success", strOptString)) {
                    return 200;
                }
                return tt(bArr, i10, file);
            }
            return tt(bArr, i10, file);
        } catch (Throwable th) {
            m.c(th);
            th.getMessage();
            return tt(bArr, i10, file);
        }
    }
}
