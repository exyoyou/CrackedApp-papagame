package com.bykv.vk.component.ttvideo;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderNotifyInfo;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLStartCompleteListener;
import com.bykv.vk.component.ttvideo.utils.Error;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes9.dex */
public class DataLoaderHelper implements AVMDLDataLoaderListener, AVMDLStartCompleteListener {
    public static final int DATALOADER_KEY_ENABLE_ALOG = 512;
    public static final int DATALOADER_KEY_INT_MAXCACHESIZE = 1;
    public static final int DATALOADER_KEY_INT_OPENTIMEOUT = 3;
    public static final int DATALOADER_KEY_INT_PARALLEL_NUM = 11;
    public static final int DATALOADER_KEY_INT_RWTIMEOUT = 2;
    public static final int DATALOADER_KEY_INT_TRYCOUNT = 4;
    public static final int DATALOADER_KEY_SET_MDL_PROTOCOL_ENABLE = 1005;
    public static final int DATALOADER_KEY_STRING_CACHEDIR = 0;
    public static final int IsClose = 1;
    public static final int IsPlayTask = 1;
    public static final int IsPreloadTask = 2;
    public static final int IsStart = 0;
    public static final int IsUnknown = 0;
    public static final String MDL_PREFIX = "mdl://";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final DataLoaderHelper f23137p = new DataLoaderHelper();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static int f23138q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static int f23139r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static int f23140s = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f23142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f23143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f23144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f23145e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AVMDLDataLoader f23149i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private VideoEventEngineUploader f23151k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f23153m;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<String, c> f23146f = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap<String, ArrayList<TTVideoEngine>> f23147g = new HashMap<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ReentrantLock f23148h = new ReentrantLock();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f23152l = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f23154n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ReentrantLock f23155o = new ReentrantLock();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile int f23141a = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AVMDLDataLoaderConfigure f23150j = AVMDLDataLoaderConfigure.getDefaultonfigure();

    public class DataLoaderCacheInfo {
        public long mMediaSize = 0;
        public long mCacheSizeFromZero = 0;
        public String mLocalFilePath = null;

        public DataLoaderCacheInfo(DataLoaderHelper dataLoaderHelper) {
        }
    }

    public static class DataLoaderTaskProgressInfo {
        public String mKey = null;
        public String mVideoId = null;
        public String mLocalFilePath = null;
        public long mMediaSize = 0;
        public long mCacheSizeFromZero = 0;
        public int mTaskType = 0;
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f23156a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f23157b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public PreloaderURLItem f23158c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f23159d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public List<a> f23160e = new CopyOnWriteArrayList();

        public class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f23161a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f23162b = null;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String[] f23163c = null;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f23164d = null;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public long f23165e = 0;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public long f23166f = 0;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public long f23167g = 0;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public long f23168h = 0;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public long f23169i = 0;

            public a(b bVar) {
            }
        }

        public b(DataLoaderHelper dataLoaderHelper) {
        }

        public a a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            a aVarB = b(str);
            if (aVarB != null) {
                return aVarB;
            }
            a aVar = new a(this);
            aVar.f23161a = str;
            this.f23160e.add(aVar);
            return aVar;
        }

        public a b(String str) {
            if (this.f23160e.size() > 0) {
                for (int i10 = 0; i10 < this.f23160e.size(); i10++) {
                    a aVar = this.f23160e.get(i10);
                    if (aVar.f23161a.equals(str)) {
                        return aVar;
                    }
                }
            }
            return null;
        }

        public IPreLoaderItemCallBackListener a() {
            PreloaderURLItem preloaderURLItem = this.f23158c;
            if (preloaderURLItem == null || preloaderURLItem.getCallBackListener() == null) {
                return null;
            }
            return this.f23158c.getCallBackListener();
        }

        public void a(int i10) {
            if (a() != null) {
                DataLoaderHelper.c();
                int unused = DataLoaderHelper.f23140s;
                PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
                preLoaderItemCallBackInfo.preloadError = new Error(Error.DataLoaderPreload, i10);
                a().preloadItemInfo(preLoaderItemCallBackInfo);
            }
        }

        public void a(String str, long j10) {
            if (this.f23160e.size() == 0) {
                a aVar = new a(this);
                aVar.f23161a = str;
                aVar.f23167g = j10;
                this.f23160e.add(aVar);
            } else {
                TTVideoEngineLog.e("DataLoaderHelper", "[preload] DataLoaderTaskItem setup fail");
            }
            this.f23157b = j10;
        }
    }

    public class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f23170a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f23171b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List<a> f23172c = null;

        public class a {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f23177e;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f23173a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f23174b = 0;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public long f23175c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public List<C0511a> f23176d = null;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public Error f23178f = null;

            /* JADX INFO: renamed from: com.bykv.vk.component.ttvideo.DataLoaderHelper$c$a$a, reason: collision with other inner class name */
            public class C0511a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public long f23179a = 0;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public long f23180b = 0;

                public C0511a(a aVar) {
                }
            }

            public a(c cVar) {
            }

            void a(long j10) {
                if (this.f23176d == null) {
                    this.f23176d = new ArrayList();
                }
                if (this.f23176d.size() == 0) {
                    this.f23176d.add(new C0511a(this));
                }
                this.f23176d.get(0).f23179a = 0L;
                this.f23176d.get(0).f23180b = j10;
            }

            public long b() {
                List<C0511a> list = this.f23176d;
                if (list == null || list.size() <= 0) {
                    return 0L;
                }
                List<C0511a> list2 = this.f23176d;
                return list2.get(list2.size() - 1).f23180b;
            }

            public boolean a() {
                long j10 = this.f23175c;
                long jMin = j10 > 0 ? Math.min(j10, this.f23174b) : this.f23174b;
                List<C0511a> list = this.f23176d;
                C0511a c0511a = list != null ? list.get(list.size() - 1) : null;
                if (this.f23178f == null) {
                    return c0511a != null && this.f23174b > 0 && c0511a.f23179a + c0511a.f23180b >= jMin;
                }
                return true;
            }
        }

        public c(DataLoaderHelper dataLoaderHelper) {
        }

        public long a() {
            long jB = 0;
            if (this.f23172c != null) {
                for (int i10 = 0; i10 < this.f23172c.size(); i10++) {
                    jB += this.f23172c.get(i10).b();
                }
            }
            return jB;
        }

        public boolean b() {
            boolean z10;
            int i10;
            if (this.f23172c != null) {
                z10 = true;
                i10 = 0;
                for (int i11 = 0; i11 < this.f23172c.size(); i11++) {
                    a aVar = this.f23172c.get(i11);
                    if (aVar == null || aVar.a()) {
                        i10++;
                    } else {
                        z10 = false;
                    }
                }
            } else {
                z10 = true;
                i10 = 0;
            }
            return z10 || (i10 >= 2 && this.f23171b == 1);
        }

        public boolean c() {
            if (this.f23171b != 2) {
                return false;
            }
            if (this.f23172c != null) {
                for (int i10 = 0; i10 < this.f23172c.size(); i10++) {
                    a aVar = this.f23172c.get(i10);
                    if (aVar != null && !aVar.a()) {
                        return false;
                    }
                }
            }
            return true;
        }

        private a a(String str) {
            List<a> list;
            if (!TextUtils.isEmpty(str) && (list = this.f23172c) != null) {
                for (a aVar : list) {
                    if (aVar.f23173a.equals(str)) {
                        return aVar;
                    }
                }
            }
            return null;
        }

        public void a(b bVar) {
            boolean z10;
            if (this.f23172c == null) {
                this.f23172c = new ArrayList();
            }
            for (b.a aVar : bVar.f23160e) {
                a aVarA = a(aVar.f23161a);
                if (aVarA == null) {
                    aVarA = new a(this);
                    z10 = false;
                } else {
                    z10 = true;
                }
                aVarA.f23173a = aVar.f23161a;
                aVarA.f23174b = aVar.f23168h;
                aVarA.a(aVar.f23169i);
                aVarA.f23175c = aVar.f23167g;
                aVarA.f23177e = aVar.f23164d;
                if (!z10) {
                    this.f23172c.add(aVarA);
                }
            }
        }

        public void a(String str, Error error) {
            a aVarA = a(str);
            if (aVarA != null) {
                aVarA.f23178f = error;
            }
        }
    }

    private class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ReentrantLock f23181a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList<b> f23182b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f23183c;

        private d(DataLoaderHelper dataLoaderHelper) {
            this.f23181a = new ReentrantLock();
            this.f23182b = new ArrayList<>();
            this.f23183c = 0L;
        }

        private Boolean e() {
            if (this.f23183c >= 1) {
                return Boolean.valueOf(((long) this.f23182b.size()) >= this.f23183c);
            }
            return Boolean.FALSE;
        }

        public b a() {
            this.f23181a.lock();
            if (this.f23182b.size() == 0) {
                this.f23181a.unlock();
                return null;
            }
            ArrayList<b> arrayList = this.f23182b;
            b bVar = arrayList.get(arrayList.size() - 1);
            this.f23181a.unlock();
            return bVar;
        }

        public long b() {
            this.f23181a.lock();
            long size = this.f23182b.size();
            this.f23181a.unlock();
            return size;
        }

        public b c() {
            this.f23181a.lock();
            if (this.f23182b.size() == 0) {
                this.f23181a.unlock();
                return null;
            }
            ArrayList<b> arrayList = this.f23182b;
            b bVar = arrayList.get(arrayList.size() - 1);
            this.f23182b.remove(bVar);
            this.f23181a.unlock();
            return bVar;
        }

        public b d(String str) {
            b bVar = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.f23181a.lock();
            for (int i10 = 0; i10 < this.f23182b.size(); i10++) {
                b bVar2 = this.f23182b.get(i10);
                if (!TextUtils.isEmpty(bVar2.f23156a) && bVar2.f23156a.equals(str)) {
                    bVar = bVar2;
                    break;
                }
            }
            if (bVar != null) {
                this.f23182b.remove(bVar);
            }
            this.f23181a.unlock();
            return bVar;
        }

        public void a(long j10) {
            this.f23183c = j10;
        }

        public b b(b bVar) {
            b bVarC;
            if (TextUtils.isEmpty(bVar.f23156a)) {
                bVarC = null;
            } else {
                bVarC = d(bVar.f23156a);
                if (bVarC != null) {
                    return bVarC;
                }
            }
            Iterator<b.a> it2 = bVar.f23160e.iterator();
            while (it2.hasNext() && (bVarC = c(it2.next().f23161a)) == null) {
            }
            return bVarC;
        }

        public b c(String str) {
            b bVar = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.f23181a.lock();
            for (int i10 = 0; i10 < this.f23182b.size(); i10++) {
                b bVar2 = this.f23182b.get(i10);
                if (bVar2.b(str) != null) {
                    bVar = bVar2;
                    break;
                }
            }
            if (bVar != null) {
                this.f23182b.remove(bVar);
            }
            this.f23181a.unlock();
            return bVar;
        }

        public ArrayList<b> d() {
            try {
                this.f23181a.lock();
                return new ArrayList<>(this.f23182b);
            } finally {
                this.f23181a.unlock();
            }
        }

        boolean a(b bVar) {
            Boolean bool;
            if (bVar == null || bVar.f23160e.size() == 0) {
                return false;
            }
            this.f23181a.lock();
            if (e().booleanValue()) {
                bool = Boolean.FALSE;
            } else {
                this.f23182b.add(bVar);
                bool = Boolean.TRUE;
            }
            this.f23181a.unlock();
            return bool.booleanValue();
        }

        public b b(String str) {
            b bVar = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.f23181a.lock();
            for (int i10 = 0; i10 < this.f23182b.size(); i10++) {
                b bVar2 = this.f23182b.get(i10);
                if (bVar2.b(str) != null) {
                    bVar = bVar2;
                    break;
                }
            }
            this.f23181a.unlock();
            return bVar;
        }

        public boolean a(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Boolean bool = Boolean.FALSE;
            this.f23181a.lock();
            for (int i10 = 0; i10 < this.f23182b.size(); i10++) {
                if (this.f23182b.get(i10).b(str) != null) {
                    bool = Boolean.TRUE;
                    break;
                }
            }
            this.f23181a.unlock();
            return bool.booleanValue();
        }
    }

    private DataLoaderHelper() {
        this.f23142b = new d();
        this.f23143c = new d();
        this.f23144d = new d();
        this.f23145e = new d();
    }

    private String a(String str, String str2, long j10, long j11, String[] strArr, String str3) {
        String strEncode;
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return null;
        }
        String[] strArr2 = (String[]) strArr.clone();
        if (j11 <= 0) {
            j11 = 0;
        }
        for (String str4 : strArr2) {
            if (!c(str4)) {
                return null;
            }
        }
        String[] strArrA = a(strArr2);
        String strEncodeUrl = encodeUrl(str);
        if (TextUtils.isEmpty(strEncodeUrl)) {
            return null;
        }
        TTVideoEngineLog.i("DataLoaderHelper", "preloadProxyQuery: key = " + str + ", rawKey = " + str2);
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        String strEncodeUrl2 = encodeUrl(str);
        if (TextUtils.isEmpty(strEncodeUrl2)) {
            strEncodeUrl2 = "videoId";
        }
        StringBuffer stringBuffer = new StringBuffer("?rk=");
        stringBuffer.append(strEncodeUrl2);
        stringBuffer.append("&k=");
        stringBuffer.append(strEncodeUrl);
        if (j11 > 0) {
            stringBuffer.append("&s=");
            stringBuffer.append(j10 + j11);
        }
        if (!TextUtils.isEmpty(str3)) {
            try {
                strEncode = URLEncoder.encode(str3, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                m.c(e10);
                strEncode = null;
            }
            if (!TextUtils.isEmpty(strEncode)) {
                stringBuffer.append("&p=");
                stringBuffer.append(strEncode);
            }
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        for (int i10 = 0; i10 < strArrA.length; i10++) {
            String strEncodeUrlByQuery = encodeUrlByQuery(strArrA[i10]);
            StringBuffer stringBuffer3 = new StringBuffer();
            if (!TextUtils.isEmpty(strEncodeUrlByQuery)) {
                stringBuffer3.append("&u");
                stringBuffer3.append(i10);
                stringBuffer3.append(SimpleComparison.EQUAL_TO_OPERATION);
                stringBuffer3.append(strEncodeUrlByQuery);
            }
            if (stringBuffer.length() + stringBuffer2.length() + stringBuffer3.length() + 32 > 3096) {
                break;
            }
            stringBuffer2.append(stringBuffer3);
        }
        if (stringBuffer2.length() <= 0) {
            return null;
        }
        stringBuffer.append(stringBuffer2);
        return stringBuffer.toString();
    }

    static /* synthetic */ int c() {
        int i10 = f23140s;
        f23140s = i10 + 1;
        return i10;
    }

    private boolean d() {
        if (this.f23149i != null) {
            return true;
        }
        if (AVMDLDataLoader.init(false, false) != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "library has not been loaded");
            return false;
        }
        try {
            AVMDLDataLoader aVMDLDataLoader = AVMDLDataLoader.getInstance();
            this.f23149i = aVMDLDataLoader;
            aVMDLDataLoader.setConfigure(this.f23150j);
            this.f23149i.setListener(this);
            this.f23149i.setStartCompleteListener(this);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String encodeUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static String encodeUrlByQuery(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            String strQueryComponentEncode = AVMDLDataLoader.queryComponentEncode(str);
            return TextUtils.isEmpty(strQueryComponentEncode) ? URLEncoder.encode(str, "UTF-8") : strQueryComponentEncode;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static DataLoaderHelper getDataLoader() {
        return f23137p;
    }

    public void _addEngine(TTVideoEngine tTVideoEngine, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f23148h.lock();
            ArrayList<TTVideoEngine> arrayList = this.f23147g.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f23147g.put(str, arrayList);
            }
            if (!arrayList.contains(tTVideoEngine)) {
                arrayList.add(tTVideoEngine);
                TTVideoEngineLog.i("DataLoaderHelper", "add engine ref,rawKey = " + str + " engine ref count: " + arrayList.size());
            }
        } finally {
            this.f23148h.unlock();
        }
    }

    public String _proxyUrl(String str, String str2, long j10, String[] strArr, String str3) {
        if (this.f23141a != 0 || TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return null;
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (String str4 : strArr2) {
            if (!c(str4)) {
                return str4;
            }
        }
        if (this.f23149i == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "start mdl first");
            return null;
        }
        this.f23155o.lock();
        try {
            String localAddr = this.f23149i.getLocalAddr();
            if (TextUtils.isEmpty(localAddr)) {
                TTVideoEngineLog.e("DataLoaderHelper", "local host error");
                this.f23155o.unlock();
                return null;
            }
            String strA = a(str, str2, 0L, j10, strArr2, str3);
            if (TextUtils.isEmpty(strA)) {
                this.f23155o.unlock();
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer();
            int i10 = this.f23154n;
            this.f23154n = i10 + 1;
            StringBuffer stringBuffer2 = new StringBuffer();
            TTVideoEngineLog.i("DataLoaderHelper", "proxy url, mInvalidMdlProcotol: " + this.f23152l);
            if (this.f23152l || !this.f23153m) {
                stringBuffer.append("http://");
                stringBuffer.append(localAddr);
                stringBuffer.append(e.F0);
                stringBuffer.append(i10);
            } else {
                stringBuffer.append("mdl://id");
                stringBuffer.append(i10);
                stringBuffer.append(e.F0);
            }
            stringBuffer.append(strA);
            stringBuffer2.append(strA);
            String auth = this.f23149i.getAuth(strA);
            if (!TextUtils.isEmpty(auth)) {
                stringBuffer.append("&ah=");
                stringBuffer.append(auth);
                stringBuffer.append("&ah=");
                stringBuffer.append(auth);
            }
            String string = stringBuffer.toString();
            TTVideoEngineLog.i("DataLoaderHelper", "_proxyUrl: ".concat(String.valueOf(string)));
            this.f23155o.unlock();
            b bVarD = this.f23145e.d(str2);
            if (bVarD == null) {
                bVarD = new b(this);
            }
            b.a aVarA = bVarD.a(str);
            if (aVarA != null) {
                aVarA.f23161a = str;
                bVarD.f23156a = str2;
                aVarA.f23162b = string;
                aVarA.f23163c = strArr2;
                aVarA.f23164d = str3;
                this.f23145e.a(bVarD);
            }
            return string;
        } catch (Throwable th) {
            this.f23155o.unlock();
            throw th;
        }
    }

    public void _removeEngine(TTVideoEngine tTVideoEngine, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f23148h.lock();
            ArrayList<TTVideoEngine> arrayList = this.f23147g.get(str);
            if (arrayList != null) {
                arrayList.remove(tTVideoEngine);
                TTVideoEngineLog.i("DataLoaderHelper", "remove engine ref,rawKey = " + str + " engine ref count: " + arrayList.size());
                if (arrayList.size() == 0) {
                    this.f23147g.remove(str);
                }
            }
        } finally {
            this.f23148h.unlock();
        }
    }

    public void _removePlayTask(String str) {
        this.f23145e.c(str);
    }

    public void addTask(PreloaderURLItem preloaderURLItem) {
        f23138q++;
        if (preloaderURLItem == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] url item invalid");
            return;
        }
        this.f23155o.lock();
        try {
            a(preloaderURLItem.getKey(), preloaderURLItem.getVideoId(), preloaderURLItem.getPreloadSize(), preloaderURLItem);
        } finally {
            this.f23155o.unlock();
        }
    }

    public void cancelAllTasks() {
        if (this.f23149i == null || this.f23141a != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "need start mdl first");
            return;
        }
        this.f23155o.lock();
        try {
            cancelAllTasksInternal();
            this.f23155o.unlock();
        } catch (Throwable unused) {
            this.f23155o.unlock();
        }
    }

    public void cancelAllTasksInternal() {
        a(this.f23143c);
        a(this.f23142b);
        if (a(this.f23144d)) {
            this.f23149i.cancelAll();
        }
    }

    public void cancelTask(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f23149i == null || this.f23141a != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "need start mdl first");
            return;
        }
        this.f23155o.lock();
        try {
            b bVarC = this.f23142b.c(str);
            if (bVarC == null && (bVarC = this.f23143c.c(str)) == null) {
                bVarC = this.f23144d.c(str);
                if (bVarC != null) {
                    this.f23149i.cancel(str);
                    c(bVarC);
                }
            } else {
                c(bVarC);
            }
            TTVideoEngineLog.i("DataLoaderHelper", "[preload] cancel preload task. key = ".concat(String.valueOf(str)));
            this.f23155o.unlock();
        } catch (Throwable unused) {
            this.f23155o.unlock();
        }
    }

    public void clearAllCaches() {
        if (this.f23141a != 0) {
            return;
        }
        this.f23155o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.f23149i;
            if (aVMDLDataLoader == null) {
                TTVideoEngineLog.e("DataLoaderHelper", "mInnerDataLoader == null");
            } else {
                aVMDLDataLoader.clearAllCaches();
            }
        } catch (Throwable th) {
            try {
                m.c(th);
            } finally {
                this.f23155o.unlock();
            }
        }
    }

    public void close() {
        this.f23155o.lock();
        try {
            if (this.f23141a == 1) {
                TTVideoEngineLog.e("DataLoaderHelper", "DataLoader not started, not need close");
            } else {
                this.f23149i.close();
                cancelAllTasksInternal();
                this.f23141a = 1;
            }
        } finally {
            this.f23155o.unlock();
        }
    }

    public DataLoaderCacheInfo getCacheInfoByFilePath(String str, String str2) {
        this.f23155o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.f23149i;
            if (aVMDLDataLoader != null) {
                DataLoaderCacheInfo dataLoaderCacheInfoB = b(aVMDLDataLoader.getStringCacheInfo(str, str2));
                this.f23155o.unlock();
                return dataLoaderCacheInfoB;
            }
        } catch (Throwable unused) {
        }
        this.f23155o.unlock();
        return null;
    }

    public long getCacheSize(String str) {
        long j10 = 0;
        if (this.f23141a != 0) {
            return 0L;
        }
        this.f23155o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.f23149i;
            if (aVMDLDataLoader != null) {
                long cacheSize = aVMDLDataLoader.getCacheSize(str);
                if (cacheSize > 0) {
                    j10 = cacheSize;
                }
            }
        } catch (Throwable th) {
            try {
                m.c(th);
            } finally {
                this.f23155o.unlock();
            }
        }
        return j10;
    }

    public long getCacheSizeByFilePath(String str, String str2) {
        this.f23155o.lock();
        long j10 = 0;
        try {
            DataLoaderCacheInfo cacheInfoByFilePath = getCacheInfoByFilePath(str, str2);
            if (cacheInfoByFilePath != null) {
                j10 = cacheInfoByFilePath.mCacheSizeFromZero;
            }
        } catch (Throwable unused) {
        }
        this.f23155o.unlock();
        return j10;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public String getCheckSumInfo(String str) {
        return null;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public long getInt64Value(int i10, long j10) {
        return 0L;
    }

    public c getLoadProgressByRawKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            return this.f23146f.get(str);
        }
        TTVideoEngineLog.e("DataLoaderHelper", "[preload] get, param is invalid key is null");
        return null;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public String getStringValue(int i10, long j10, String str) {
        return null;
    }

    public void notifyPreloadError(PreloaderURLItem preloaderURLItem, int i10) {
        IPreLoaderItemCallBackListener callBackListener = preloaderURLItem.getCallBackListener();
        if (callBackListener != null) {
            f23140s++;
            PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
            preLoaderItemCallBackInfo.preloadError = new Error(Error.DataLoaderPreload, i10);
            callBackListener.preloadItemInfo(preLoaderItemCallBackInfo);
        }
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public void onNotify(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str;
        b bVarB;
        if (aVMDLDataLoaderNotifyInfo == null) {
            return;
        }
        int i10 = aVMDLDataLoaderNotifyInfo.what;
        if (i10 != 0 && i10 != 15) {
            if (i10 != 20) {
                if (i10 == 3 || i10 == 4) {
                    if (i10 == 4) {
                        f23139r++;
                    }
                    if (aVMDLDataLoaderNotifyInfo.logInfo != null) {
                        long j10 = aVMDLDataLoaderNotifyInfo.parameter;
                        if (j10 != 3) {
                            a(aVMDLDataLoaderNotifyInfo, j10 == 2, i10 == 4);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i10 == 7) {
                    f23139r++;
                    if (TextUtils.isEmpty(aVMDLDataLoaderNotifyInfo.logInfo)) {
                        return;
                    }
                    String[] strArrSplit = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
                    if (strArrSplit.length < 4) {
                        return;
                    }
                    String str2 = strArrSplit[2];
                    b bVarB2 = this.f23144d.b(str2);
                    this.f23144d.c(str2);
                    c(bVarB2);
                    return;
                }
                if (i10 != 8) {
                    if (i10 != 10 && i10 != 11) {
                        return;
                    }
                }
            }
            if (i10 == 8) {
                f23139r++;
            }
            String str3 = aVMDLDataLoaderNotifyInfo.logInfo;
            if ((str3 == null || aVMDLDataLoaderNotifyInfo.parameter != 3) && str3 != null) {
                TTVideoEngineLog.i("DataLoaderHelper", " task fail log = " + aVMDLDataLoaderNotifyInfo.logInfo + ", code = " + aVMDLDataLoaderNotifyInfo.code + ", task type = " + aVMDLDataLoaderNotifyInfo.parameter);
                String[] strArrSplit2 = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
                if (strArrSplit2.length > 0 && (bVarB = this.f23144d.b((str = strArrSplit2[0]))) != null) {
                    d dVar = this.f23144d;
                    Error error = new Error(Error.DataLoaderPreload, (int) aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.logInfo);
                    String str4 = TextUtils.isEmpty(bVarB.f23156a) ? str : bVarB.f23156a;
                    c loadProgressByRawKey = getLoadProgressByRawKey(str4);
                    if (loadProgressByRawKey == null) {
                        loadProgressByRawKey = new c(this);
                    }
                    loadProgressByRawKey.f23170a = bVarB.f23156a;
                    loadProgressByRawKey.f23171b = (int) aVMDLDataLoaderNotifyInfo.parameter;
                    loadProgressByRawKey.a(bVarB);
                    loadProgressByRawKey.a(str, error);
                    putByRawKey(str4, loadProgressByRawKey);
                    if (!loadProgressByRawKey.b() && !loadProgressByRawKey.c()) {
                        loadProgressByRawKey.b();
                        loadProgressByRawKey.c();
                        return;
                    }
                    dVar.c(str);
                    TTVideoEngineLog.i("DataLoaderHelper", "pop all task item. videoId = " + bVarB.f23156a + " key = " + str);
                    removeLoadProgressByRawKey(str4);
                    if (bVarB.a() == null || aVMDLDataLoaderNotifyInfo.parameter != 2) {
                        return;
                    }
                    PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
                    preLoaderItemCallBackInfo.preloadError = error;
                    preLoaderItemCallBackInfo.loadProgress = loadProgressByRawKey;
                    preLoaderItemCallBackInfo.preloadDataInfo = null;
                    f23140s++;
                    bVarB.a().preloadItemInfo(preLoaderItemCallBackInfo);
                    return;
                }
                return;
            }
            return;
        }
        VideoEventEngineUploader videoEventEngineUploader = this.f23151k;
        if (videoEventEngineUploader != null) {
            videoEventEngineUploader.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
        }
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLStartCompleteListener
    public void onStartComplete() {
    }

    public void putByRawKey(String str, c cVar) {
        if (TextUtils.isEmpty(str) || cVar == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] param is invalid");
        } else {
            this.f23146f.put(str, cVar);
        }
    }

    public void removeCacheFile(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f23155o.lock();
        try {
            if (this.f23149i == null) {
                TTVideoEngineLog.e("DataLoaderHelper", "mInnerDataLoader == null");
            } else {
                TTVideoEngineLog.i("DataLoaderHelper", "remove mdl file. key ".concat(String.valueOf(str)));
                if (z10) {
                    this.f23149i.forceRemoveFileCache(str);
                } else {
                    this.f23149i.removeFileCache(str);
                }
            }
        } catch (Throwable unused) {
        }
        this.f23155o.unlock();
    }

    public void removeLoadProgressByRawKey(String str) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] remove, param is invalid key is null");
        } else {
            this.f23146f.remove(str);
        }
    }

    public void setCacheInfoLists(String[] strArr, long[] jArr) {
        Arrays.toString(strArr);
        Arrays.toString(jArr);
        this.f23155o.lock();
        try {
            this.f23150j.setCacheInfoList(strArr, jArr);
        } finally {
            this.f23155o.unlock();
        }
    }

    public void setContext(Context context) {
        this.f23155o.lock();
        this.f23155o.unlock();
    }

    public synchronized void setEngineUploader(VideoEventEngineUploader videoEventEngineUploader) {
        this.f23151k = videoEventEngineUploader;
    }

    public void setIntValue(int i10, int i11) {
        this.f23155o.lock();
        try {
            if (i10 == 11) {
                this.f23150j.mPreloadParallelNum = i11;
                AVMDLDataLoader aVMDLDataLoader = this.f23149i;
                if (aVMDLDataLoader != null) {
                    aVMDLDataLoader.setIntValue(102, i11);
                }
            } else if (i10 != 512) {
                boolean z10 = true;
                if (i10 == 1005) {
                    if (i11 != 1) {
                        z10 = false;
                    }
                    this.f23153m = z10;
                    TTVideoEngineLog.i("DataLoaderHelper", "config DATALOADER_KEY_SET_MDL_PROTOCOL_ENABLE: " + this.f23153m);
                } else if (i10 == 1) {
                    this.f23150j.mMaxCacheSize = i11;
                } else if (i10 == 2) {
                    this.f23150j.mRWTimeOut = i11;
                } else {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            this.f23150j.mTryCount = i11;
                        }
                    }
                    this.f23150j.mOpenTimeOut = i11;
                }
            } else {
                this.f23150j.mAlogEnable = i11;
                AVMDLDataLoader aVMDLDataLoader2 = this.f23149i;
                if (aVMDLDataLoader2 != null) {
                    aVMDLDataLoader2.setIntValue(AVMDLDataLoader.KeyIsAlogEnable, i11);
                }
            }
        } catch (Exception e10) {
            m.c(e10);
        } finally {
            this.f23155o.unlock();
        }
    }

    public void setStringValue(int i10, String str) {
        this.f23155o.lock();
        if (i10 == 0) {
            try {
                this.f23150j.mCacheDir = str;
            } catch (Exception unused) {
            } finally {
                this.f23155o.unlock();
            }
        }
    }

    public void start() {
        this.f23155o.lock();
        try {
            if (this.f23141a == 0) {
                TTVideoEngineLog.e("DataLoaderHelper", "DataLoader has started not need start");
            } else {
                if (!d()) {
                    throw new Exception("init data loader fail");
                }
                this.f23143c.a(4L);
                if (this.f23150j == null) {
                    this.f23150j = AVMDLDataLoaderConfigure.getDefaultonfigure();
                }
                if (this.f23151k != null) {
                    this.f23150j.mEnableReportTaskLog = 1;
                }
                this.f23149i.setConfigure(this.f23150j);
                if (this.f23149i.start() < 0) {
                    throw new Exception("start data loader fail");
                }
                if (this.f23149i.getLongValue(AVMDLDataLoader.KeyIsGetMdlProtocolHandle) == -1) {
                    this.f23152l = true;
                }
                this.f23141a = 0;
            }
            this.f23155o.unlock();
        } catch (Throwable th) {
            this.f23155o.unlock();
            throw th;
        }
    }

    private ArrayList<TTVideoEngine> a(String str) {
        ArrayList<TTVideoEngine> arrayList = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            this.f23148h.lock();
            ArrayList<TTVideoEngine> arrayList2 = this.f23147g.get(str);
            if (arrayList2 != null) {
                arrayList = new ArrayList<>(arrayList2);
                TTVideoEngineLog.i("DataLoaderHelper", "get engine ref,rawKey = " + str + " engine ref count: " + arrayList.size());
            }
            return arrayList;
        } finally {
            this.f23148h.unlock();
        }
    }

    private DataLoaderCacheInfo b(String str) {
        DataLoaderCacheInfo dataLoaderCacheInfo = null;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length >= 4) {
            dataLoaderCacheInfo = new DataLoaderCacheInfo(this);
            dataLoaderCacheInfo.mLocalFilePath = strArrSplit[3];
            if (!TextUtils.isEmpty(strArrSplit[0])) {
                dataLoaderCacheInfo.mCacheSizeFromZero = Long.parseLong(strArrSplit[0]);
            }
            if (!TextUtils.isEmpty(strArrSplit[1])) {
                dataLoaderCacheInfo.mMediaSize = Long.parseLong(strArrSplit[1]);
            }
        }
        return dataLoaderCacheInfo;
    }

    private void c(b bVar) {
        if (bVar == null || bVar.f23159d) {
            return;
        }
        bVar.f23159d = true;
        if (bVar.a() != null) {
            f23140s++;
            bVar.a().preloadItemInfo(new PreLoaderItemCallBackInfo(5));
        }
    }

    private void a() {
        if (this.f23149i == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] need load mdl first.");
            return;
        }
        b bVarA = this.f23142b.a();
        if (bVarA != null && this.f23143c.a(bVarA)) {
            this.f23142b.c();
            if (bVarA.f23158c != null) {
                b(bVarA);
            }
        }
    }

    private void b(b bVar) {
        if (bVar == null) {
            a();
            return;
        }
        if (this.f23149i == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] need load mdl first.");
            return;
        }
        this.f23143c.b(bVar);
        long j10 = bVar.f23157b;
        PreloaderURLItem preloaderURLItem = bVar.f23158c;
        if (preloaderURLItem != null && preloaderURLItem.getUrls() != null && bVar.f23158c.getUrls().length > 0) {
            b.a aVar = bVar.f23160e.get(0);
            aVar.f23163c = bVar.f23158c.getUrls();
            aVar.f23167g = bVar.f23157b;
            aVar.f23164d = bVar.f23158c.getFilePath();
            a(bVar, aVar);
        }
        if (bVar.a() != null) {
            PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(6);
            preLoaderItemCallBackInfo.preloadType = 0;
            preLoaderItemCallBackInfo.videoPreloadSize = j10;
            preLoaderItemCallBackInfo.audioPreloadSize = 0L;
            bVar.a().preloadItemInfo(preLoaderItemCallBackInfo);
            TTVideoEngineLog.i("DataLoaderHelper", "[preload] notify info. type = 0");
        }
        a();
    }

    private boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return (lowerCase.startsWith("http://127.0.0.1") || lowerCase.startsWith("http://localhost") || lowerCase.startsWith(MDL_PREFIX) || lowerCase.startsWith("file://") || lowerCase.startsWith(e.F0) || lowerCase.endsWith(".mpd") || lowerCase.contains(".mpd?")) ? false : true;
    }

    private void a(b bVar) {
        boolean z10;
        ArrayList<TTVideoEngine> arrayListA;
        ArrayList<b> arrayListD = this.f23145e.d();
        int i10 = 0;
        while (true) {
            if (i10 >= arrayListD.size()) {
                z10 = true;
                break;
            }
            b bVar2 = arrayListD.get(i10);
            if (!TextUtils.isEmpty(bVar2.f23156a) && !TextUtils.isEmpty(bVar.f23156a) && bVar2.f23156a.equals(bVar.f23156a)) {
                z10 = false;
                break;
            }
            i10++;
        }
        if (!z10 || (arrayListA = a(bVar.f23156a)) == null || arrayListA.size() == 0) {
            return;
        }
        for (int i11 = 0; i11 < arrayListA.size(); i11++) {
            arrayListA.get(i11).a();
        }
    }

    private void a(b bVar, b.a aVar) {
        if (bVar == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] start mdl preload task fail. item is null");
            return;
        }
        if (aVar == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] start mdl preload task fail. track is null");
            notifyPreloadError(bVar.f23158c, -100004);
            return;
        }
        TTVideoEngineLog.i("DataLoaderHelper", "[preload] start mdl preload task.  key = " + aVar.f23161a);
        String str = aVar.f23161a;
        String[] strArr = aVar.f23163c;
        if (strArr != null) {
            String strA = a(str, bVar.f23156a, aVar.f23166f, 0L, strArr, aVar.f23164d);
            aVar.f23162b = strA;
            if (!TextUtils.isEmpty(strA)) {
                this.f23144d.a(bVar);
                if (aVar.f23166f > 0) {
                    long j10 = aVar.f23165e;
                    if (j10 > 0) {
                        this.f23149i.preloadResource(aVar.f23162b, (int) j10);
                    }
                    this.f23149i.preloadResource(aVar.f23162b, (int) aVar.f23166f, (int) aVar.f23167g);
                } else {
                    this.f23149i.preloadResource(aVar.f23162b, (int) aVar.f23167g);
                }
                TTVideoEngineLog.i("DataLoaderHelper", String.format("[preload] exect preload task ,key is %s; videoId = %s", aVar.f23161a, bVar.f23156a));
                return;
            }
        }
        bVar.a(-100001);
    }

    private void a(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo, boolean z10, boolean z11) {
        b bVarB;
        d dVar;
        if (aVMDLDataLoaderNotifyInfo == null || TextUtils.isEmpty(aVMDLDataLoaderNotifyInfo.logInfo)) {
            return;
        }
        String[] strArrSplit = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
        if (strArrSplit.length < 4) {
            return;
        }
        boolean z12 = false;
        try {
            long jLongValue = Long.valueOf(strArrSplit[0]).longValue();
            long jLongValue2 = Long.valueOf(strArrSplit[1]).longValue();
            if (jLongValue2 <= 0 && !z11) {
                TTVideoEngineLog.i("DataLoaderHelper", "[preload] mediaSize <= 0 return " + aVMDLDataLoaderNotifyInfo.logInfo);
                return;
            }
            String str = strArrSplit[2];
            String str2 = strArrSplit[3];
            if (z10 || z11) {
                bVarB = this.f23144d.b(str);
                if (bVarB == null) {
                    TTVideoEngineLog.i("DataLoaderHelper", "[preload] preload temItem == null return " + aVMDLDataLoaderNotifyInfo.logInfo);
                    return;
                }
                dVar = this.f23144d;
                z12 = true;
            } else {
                bVarB = this.f23145e.b(str);
                if (bVarB == null) {
                    TTVideoEngineLog.i("DataLoaderHelper", "[preload] play temItem == null return " + aVMDLDataLoaderNotifyInfo.logInfo);
                    return;
                }
                dVar = this.f23145e;
            }
            b.a aVarB = bVarB.b(str);
            if (aVarB != null) {
                aVarB.f23168h = jLongValue2;
                aVarB.f23169i = jLongValue;
                aVarB.f23164d = str2;
            }
            String str3 = TextUtils.isEmpty(bVarB.f23156a) ? str : bVarB.f23156a;
            c loadProgressByRawKey = getLoadProgressByRawKey(str3);
            if (loadProgressByRawKey == null) {
                loadProgressByRawKey = new c(this);
            }
            loadProgressByRawKey.f23170a = bVarB.f23156a;
            loadProgressByRawKey.f23171b = z10 ? 2 : 1;
            loadProgressByRawKey.a(bVarB);
            putByRawKey(str3, loadProgressByRawKey);
            if (loadProgressByRawKey.b() || z11) {
                if (!z12) {
                    dVar.c(str);
                }
                removeLoadProgressByRawKey(str3);
                if (!z10) {
                    a(bVarB);
                }
                if (bVarB.a() == null || !z11) {
                    return;
                }
                f23140s++;
                dVar.c(str);
                DataLoaderTaskProgressInfo dataLoaderTaskProgressInfo = new DataLoaderTaskProgressInfo();
                dataLoaderTaskProgressInfo.mCacheSizeFromZero = jLongValue;
                dataLoaderTaskProgressInfo.mMediaSize = jLongValue2;
                dataLoaderTaskProgressInfo.mKey = str;
                dataLoaderTaskProgressInfo.mLocalFilePath = str2;
                dataLoaderTaskProgressInfo.mVideoId = bVarB.f23156a;
                dataLoaderTaskProgressInfo.mTaskType = loadProgressByRawKey.f23171b;
                PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(2);
                preLoaderItemCallBackInfo.preloadDataInfo = dataLoaderTaskProgressInfo;
                preLoaderItemCallBackInfo.loadProgress = loadProgressByRawKey;
                bVarB.a().preloadItemInfo(preLoaderItemCallBackInfo);
                TTVideoEngineLog.i("DataLoaderHelper", "[preload] notify end cache size = " + loadProgressByRawKey.a());
            }
        } catch (Exception unused) {
        }
    }

    private void a(String str, String str2, long j10, PreloaderURLItem preloaderURLItem) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] key invalid.");
            notifyPreloadError(preloaderURLItem, -100001);
            return;
        }
        if (this.f23149i == null || this.f23141a != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] need load mdl first.");
            notifyPreloadError(preloaderURLItem, -100002);
        } else {
            if (this.f23143c.a(str) || this.f23142b.a(str)) {
                notifyPreloadError(preloaderURLItem, -100003);
                return;
            }
            b bVar = new b(this);
            bVar.a(str, j10);
            bVar.f23156a = str2;
            bVar.f23158c = preloaderURLItem;
            this.f23142b.a(bVar);
            a();
        }
    }

    private boolean a(d dVar) {
        boolean z10 = false;
        if (dVar.b() > 0) {
            while (true) {
                b bVarC = dVar.c();
                if (bVarC == null) {
                    break;
                }
                c(bVarC);
                z10 = true;
            }
        }
        return z10;
    }

    private String[] a(String[] strArr) {
        if (strArr == null || strArr.length <= 1) {
            return strArr;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(strArr[0]);
        for (int i10 = 1; i10 < strArr.length; i10++) {
            String str = strArr[i10];
            Boolean bool = Boolean.TRUE;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((String) arrayList.get(size)).equals(str)) {
                    bool = Boolean.FALSE;
                    break;
                }
            }
            if (bool.booleanValue()) {
                arrayList.add(str);
            }
        }
        String[] strArr2 = new String[arrayList.size()];
        arrayList.toArray(strArr2);
        return strArr2;
    }
}
