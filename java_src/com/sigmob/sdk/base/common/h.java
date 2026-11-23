package com.sigmob.sdk.base.common;

import android.os.AsyncTask;
import com.baidu.mobads.sdk.internal.bn;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.models.AdCache;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.VolleyError;
import com.czhj.volley.toolbox.DownloadItem;
import com.czhj.volley.toolbox.FileDownloadRequest;
import com.czhj.volley.toolbox.FileDownloader;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.AdPrivacy;
import com.sigmob.sdk.base.models.rtb.BidResponse;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.ResponseAsset;
import com.sigmob.sdk.base.models.rtb.ResponseAssetVideo;
import com.sigmob.sdk.base.models.rtb.Template;
import com.sigmob.sdk.videocache.HttpProxyCacheServer;
import com.sigmob.windad.WindAdError;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f79075a = "h";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static HttpProxyCacheServer f79082i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static volatile ImageManager f79084k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static BaseAdUnit f79085l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static BaseAdUnit f79086m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static ab f79088o;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f79096v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f79097w;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Integer f79076c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Integer f79077d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Integer f79078e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Integer f79079f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static h f79080g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Map<String, BaseAdUnit> f79081h = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final HashMap<String, Integer> f79083j = new HashMap<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final HashMap<String, List<BaseAdUnit>> f79087n = new HashMap<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final HashMap<String, BidResponse> f79089q = new HashMap<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final HashMap<String, Integer> f79090s = new HashMap<>();
    private static final Map<String, List<BaseAdUnit>> A = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Map<String, String> f79092p = new HashMap();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final HashSet<a> f79093r = new HashSet<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final FileDownloadRequest.FileDownloadListener f79091b = new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.base.common.h.1
        @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
        public void downloadProgress(DownloadItem item, long totalSize, long readSize) {
        }

        @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
        public void onCancel(DownloadItem item) {
            h.f79083j.put(Md5Util.md5(item.url), h.f79079f);
            for (a aVar : h.this.f79093r) {
                BaseAdUnit baseAdUnitA = aVar.a();
                if (baseAdUnitA != null && item.type == DownloadItem.FileType.FILE && baseAdUnitA.getEndCardZipPath().equals(item.filePath)) {
                    aVar.b(baseAdUnitA);
                }
            }
        }

        @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
        public void onErrorResponse(DownloadItem item) {
            SigmobLog.e("onErrorResponse: ", item.error);
            h.f79083j.put(Md5Util.md5(item.url), h.f79079f);
            for (a aVar : h.this.f79093r) {
                BaseAdUnit baseAdUnitA = aVar.a();
                if (baseAdUnitA != null && baseAdUnitA.getEndCardZipPath().equals(item.filePath) && item.type == DownloadItem.FileType.FILE) {
                    aVar.b(baseAdUnitA);
                }
            }
            h.this.new c(item).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
        }

        @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
        public void onSuccess(DownloadItem item) {
            h.f79083j.put(Md5Util.md5(item.url), h.f79079f);
            for (a aVar : h.this.f79093r) {
                BaseAdUnit baseAdUnitA = aVar.a();
                if (baseAdUnitA != null && item.type == DownloadItem.FileType.FILE && baseAdUnitA.getEndCardZipPath().equals(item.filePath)) {
                    aVar.a(baseAdUnitA);
                }
            }
            h.this.new c(item).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
        }
    };

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final ArrayList<BaseAdUnit> f79094t = new ArrayList<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final HashMap<String, AdCache> f79095u = new HashMap<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final HashMap<String, b> f79098x = new HashMap<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final HashMap<String, AdCache> f79099y = new HashMap<>();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Map<String, AdCache> f79100z = new HashMap();

    public interface a {
        BaseAdUnit a();

        void a(BaseAdUnit adUnit);

        void b(BaseAdUnit adUnit);
    }

    public interface b {
        void a(BaseAdUnit adUnit);

        void a(BaseAdUnit adUnit, String message);
    }

    class c extends AsyncTask<Object, Void, String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final DownloadItem f79110b;

        c(DownloadItem downloadItem) {
            this.f79110b = downloadItem;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doInBackground(Object... objects) {
            WindAdError windAdError;
            String message;
            DownloadItem downloadItem = this.f79110b;
            if (downloadItem != null) {
                VolleyError volleyError = downloadItem.error;
                if (volleyError != null) {
                    return volleyError.toString();
                }
                String str = downloadItem.filePath;
                String extensionName = FileUtil.getExtensionName(str);
                String strFileMd5 = Md5Util.fileMd5(str);
                if (!com.sigmob.sdk.base.utils.t.b(this.f79110b.md5) || this.f79110b.md5.equalsIgnoreCase(strFileMd5)) {
                    if (this.f79110b.type == DownloadItem.FileType.VIDEO) {
                        h.this.f79092p.put(str, strFileMd5);
                        this.f79110b.status = 1;
                    } else if (com.sigmob.sdk.base.utils.t.b(extensionName) && extensionName.equalsIgnoreCase("tgz")) {
                        try {
                            com.sigmob.sdk.base.utils.f.a(new File(str), new File(str.replace(".tgz", net.lingala.zip4j.util.e.F0)));
                            this.f79110b.status = 1;
                        } catch (Throwable th) {
                            this.f79110b.status = 0;
                            message = th.getMessage();
                        }
                    } else {
                        DownloadItem downloadItem2 = this.f79110b;
                        if (downloadItem2.type == DownloadItem.FileType.MRAID_VIDEO) {
                            return null;
                        }
                        downloadItem2.status = 0;
                        windAdError = WindAdError.ERROR_SIGMOB_INFORMATION_LOSE;
                    }
                    return null;
                }
                this.f79110b.status = 0;
                windAdError = WindAdError.ERROR_SIGMOB_FILE_MD5;
                return windAdError.toString();
            }
            message = "doInBackground: item is null.";
            SigmobLog.e(message);
            windAdError = WindAdError.ERROR_SIGMOB_FILE_DOWNLOAD;
            return windAdError.toString();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(final String error) {
            DownloadItem downloadItem;
            DownloadItem.FileType fileType;
            super.onPostExecute(error);
            if (com.sigmob.sdk.base.utils.t.b(error)) {
                FileUtil.deleteFile(this.f79110b.filePath);
            }
            for (BaseAdUnit baseAdUnit : new CopyOnWriteArrayList(h.this.f79094t)) {
                b bVar = (b) h.this.f79098x.get(baseAdUnit.getUuid());
                if (this.f79110b.type == DownloadItem.FileType.VIDEO && baseAdUnit.getVideoPath().equals(this.f79110b.filePath)) {
                    downloadItem = this.f79110b;
                } else if ((this.f79110b.type == DownloadItem.FileType.FILE && baseAdUnit.getEndCardZipPath().equals(this.f79110b.filePath)) || (fileType = (downloadItem = this.f79110b).type) == DownloadItem.FileType.ZIP_FILE) {
                    h.this.a(baseAdUnit, error, bVar);
                } else if (fileType == DownloadItem.FileType.MRAID_VIDEO) {
                }
                ad.a(downloadItem, baseAdUnit, error, false);
                h.this.a(baseAdUnit, error, bVar);
            }
        }
    }

    private class d extends AsyncTask<Object, Void, ArrayList<DownloadItem>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        BaseAdUnit f79111a;

        d(BaseAdUnit adUnit) {
            this.f79111a = adUnit;
        }

        private DownloadItem a(Template template) {
            if (com.sigmob.sdk.base.utils.t.b(template.context.utf8())) {
                String strMd5 = Md5Util.md5(template.context.utf8());
                File file = new File(com.sigmob.sdk.base.utils.o.f(com.sigmob.sdk.base.utils.o.f79757c), strMd5 + ".tgz");
                if (!file.exists()) {
                    DownloadItem downloadItem = new DownloadItem();
                    downloadItem.url = template.context.utf8();
                    downloadItem.filePath = file.getAbsolutePath();
                    downloadItem.type = DownloadItem.FileType.ZIP_FILE;
                    return downloadItem;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<DownloadItem> doInBackground(Object... objects) {
            ResponseAssetVideo responseAssetVideo;
            DownloadItem downloadItemA;
            DownloadItem downloadItemA2;
            DownloadItem downloadItemA3;
            String strFileMd5;
            ArrayList<DownloadItem> arrayList = new ArrayList<>();
            BaseAdUnit baseAdUnit = this.f79111a;
            if (baseAdUnit != null && baseAdUnit.getMaterial() != null) {
                try {
                    MaterialMeta material = this.f79111a.getMaterial();
                    if (com.sigmob.sdk.base.utils.t.b(this.f79111a.getVideo_url())) {
                        long length = 0;
                        if (this.f79111a.isVideoExist()) {
                            strFileMd5 = Md5Util.fileMd5(this.f79111a.getVideoPath());
                            if (!com.sigmob.sdk.base.utils.t.b(this.f79111a.getVideo_OriginMD5()) || this.f79111a.getVideo_OriginMD5().equalsIgnoreCase(strFileMd5)) {
                                h.this.f79092p.put(this.f79111a.getVideoPath(), strFileMd5);
                                length = new File(this.f79111a.getVideoPath()).length();
                            } else {
                                FileUtil.deleteFile(this.f79111a.getVideoPath());
                            }
                        } else {
                            strFileMd5 = null;
                        }
                        boolean zCheckVideoValid = this.f79111a.checkVideoValid();
                        DownloadItem downloadItem = new DownloadItem();
                        if (zCheckVideoValid && this.f79111a.isVideoExist()) {
                            downloadItem.url = this.f79111a.getVideo_url();
                            downloadItem.filePath = this.f79111a.getVideoPath();
                            downloadItem.type = DownloadItem.FileType.VIDEO;
                            downloadItem.md5 = strFileMd5;
                            downloadItem.size = length;
                            downloadItem.status = 1;
                            ad.a(downloadItem, this.f79111a, (String) null, true);
                        } else if (this.f79111a.getPlayMode() != 2) {
                            downloadItem.url = this.f79111a.getVideo_url();
                            downloadItem.filePath = this.f79111a.getVideoPath();
                            downloadItem.type = DownloadItem.FileType.VIDEO;
                            downloadItem.md5 = this.f79111a.getVideo_OriginMD5();
                            h.this.a(downloadItem, this.f79111a);
                            arrayList.add(downloadItem);
                        }
                    }
                    if (material.creative_type.intValue() == n.CreativeTypeVideo_Tar.a()) {
                        DownloadItem downloadItem2 = new DownloadItem();
                        downloadItem2.url = this.f79111a.getEndcard_url();
                        downloadItem2.filePath = this.f79111a.getEndCardZipPath();
                        downloadItem2.type = DownloadItem.FileType.FILE;
                        downloadItem2.md5 = this.f79111a.getEndCard_OriginMD5();
                        arrayList.add(downloadItem2);
                    }
                    Template template = this.f79111a.scene;
                    if (template != null && template.type.intValue() == 3 && (downloadItemA3 = a(this.f79111a.scene)) != null) {
                        arrayList.add(downloadItemA3);
                    }
                    Template template2 = material.main_template;
                    if (template2 != null && template2.type.intValue() == 3 && (downloadItemA2 = a(material.main_template)) != null) {
                        arrayList.add(downloadItemA2);
                    }
                    Template template3 = material.sub_template;
                    if (template3 != null && template3.type.intValue() == 3 && (downloadItemA = a(material.sub_template)) != null) {
                        arrayList.add(downloadItemA);
                    }
                    if (this.f79111a.isCatchVideo() && com.sigmob.sdk.base.utils.e.b(material.asset)) {
                        for (int i10 = 0; i10 < material.asset.size(); i10++) {
                            ResponseAsset responseAsset = material.asset.get(i10);
                            if (responseAsset != null && (responseAssetVideo = responseAsset.video) != null) {
                                String str = responseAssetVideo.url;
                                if (!com.sigmob.sdk.base.utils.t.a((CharSequence) str)) {
                                    File cacheFile = h.d().getCacheFile(str);
                                    if (!cacheFile.exists()) {
                                        DownloadItem downloadItem3 = new DownloadItem();
                                        downloadItem3.url = str;
                                        downloadItem3.filePath = cacheFile.getAbsolutePath();
                                        downloadItem3.type = DownloadItem.FileType.MRAID_VIDEO;
                                        h.this.a(downloadItem3, this.f79111a);
                                        arrayList.add(downloadItem3);
                                    }
                                }
                            }
                        }
                    }
                    SigmobLog.d("doInBackground: crid = " + this.f79111a.getCrid() + ", videoUrl = " + this.f79111a.getVideo_url() + ", endCardUrl = " + this.f79111a.getEndcard_url());
                    return arrayList;
                } catch (Throwable th) {
                    SigmobLog.e("doInBackground: error = " + th.getMessage());
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(ArrayList<DownloadItem> downloadItems) {
            boolean z10;
            Integer num;
            AdPrivacy adPrivacy;
            File[] fileArrListFiles;
            super.onPostExecute(downloadItems);
            BaseAdUnit baseAdUnit = this.f79111a;
            if (baseAdUnit == null) {
                return;
            }
            MaterialMeta material = baseAdUnit.getMaterial();
            b bVar = (b) h.this.f79098x.get(this.f79111a.getUuid());
            if (downloadItems == null) {
                downloadItems = new ArrayList<>();
            }
            if (downloadItems.isEmpty()) {
                if (bVar != null) {
                    bVar.a(this.f79111a, null);
                }
                h.this.g(this.f79111a);
            } else {
                FileDownloader fileDownloaderA = t.a();
                Iterator it2 = h.this.f79094t.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (((BaseAdUnit) it2.next()).getUuid().equals(this.f79111a.getUuid())) {
                            z10 = true;
                            break;
                        }
                    } else {
                        z10 = false;
                        break;
                    }
                }
                if (!z10 && bVar != null) {
                    h.this.f79094t.add(this.f79111a);
                }
                for (DownloadItem downloadItem : downloadItems) {
                    String strMd5 = Md5Util.md5(downloadItem.url);
                    SigmobLog.d("onPostExecute: url = " + downloadItem.url);
                    if (downloadItem.type != DownloadItem.FileType.VIDEO && ((num = (Integer) h.f79083j.get(strMd5)) == null || num.equals(h.f79079f))) {
                        h.f79083j.put(strMd5, h.f79077d);
                        fileDownloaderA.add(downloadItem, h.this.f79091b);
                    }
                }
            }
            if (material == null || (adPrivacy = material.ad_privacy) == null) {
                return;
            }
            String str = adPrivacy.privacy_template_url;
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) str)) {
                return;
            }
            String strMd6 = Md5Util.md5(str);
            File fileD = com.sigmob.sdk.base.utils.o.d(com.sigmob.sdk.base.utils.o.f79756b);
            File fileA = com.sigmob.sdk.base.utils.o.a(fileD, strMd6 + ".html");
            if (fileA == null || fileA.exists()) {
                SigmobLog.i("privacyTemplateUrl: " + strMd6 + " is exists");
                return;
            }
            try {
                if (fileD.exists() && fileD.isDirectory() && (fileArrListFiles = fileD.listFiles()) != null) {
                    for (File file : fileArrListFiles) {
                        if (file.exists() && file.isFile() && file.delete()) {
                            SigmobLog.d("删除单个文件 " + file.getAbsolutePath() + " 成功");
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            DownloadItem downloadItem2 = new DownloadItem();
            downloadItem2.url = str;
            downloadItem2.filePath = fileA.getAbsolutePath();
            downloadItem2.type = DownloadItem.FileType.OTHER;
            downloadItems.add(downloadItem2);
            t.a().add(downloadItem2, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.base.common.h.d.1
                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void downloadProgress(DownloadItem item, long totalSize, long readSize) {
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onCancel(DownloadItem item) {
                    SigmobLog.i("onPostExecute#onCancel: item = " + item.url);
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onErrorResponse(DownloadItem item) {
                    SigmobLog.i("onPostExecute#onErrorResponse: item = " + item.url);
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onSuccess(DownloadItem item) {
                    SigmobLog.i("onPostExecute#onSuccess: item = " + item.url);
                }
            });
        }
    }

    private h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(BaseAdUnit baseAdUnit, BaseAdUnit baseAdUnit2) {
        return -Integer.compare(baseAdUnit.getBidEcpm() > 0 ? baseAdUnit.getBidEcpm() : baseAdUnit.getBP(), baseAdUnit2.getBidEcpm() > 0 ? baseAdUnit2.getBidEcpm() : baseAdUnit2.getBP());
    }

    public static BaseAdUnit c(String uuid) {
        return f79081h.get(uuid);
    }

    public static synchronized HttpProxyCacheServer d() {
        if (f79082i == null) {
            e();
        }
        return f79082i;
    }

    public static List<BaseAdUnit> e(String uuid) {
        return A.get(uuid);
    }

    public static BaseAdUnit f() {
        return f79085l;
    }

    public static synchronized h g() {
        if (f79080g == null) {
            f79080g = new h();
        }
        return f79080g;
    }

    public static Integer h(String placementId) {
        if (com.sigmob.sdk.base.utils.t.b(placementId)) {
            HashMap<String, Integer> map = f79090s;
            if (map.containsKey(placementId)) {
                return map.get(placementId);
            }
        }
        return 1;
    }

    public static void i() {
        String str;
        try {
            File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount(FileUtil.orderByDate(com.sigmob.sdk.base.utils.o.b()), com.sigmob.sdk.base.o.a().w() + com.sigmob.sdk.base.o.a().B());
            if (fileArrClearCacheFileByCount == null) {
                str = "splash ad file list is null.";
            } else {
                str = "splash ad file remain num: " + fileArrClearCacheFileByCount.length;
            }
            SigmobLog.i(str);
        } catch (Throwable th) {
            SigmobLog.e("clean splash ad file error", th);
        }
    }

    public static void j() {
        String str;
        try {
            File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount(FileUtil.orderByDate(com.sigmob.sdk.base.utils.o.f()), com.sigmob.sdk.base.o.a().B());
            if (fileArrClearCacheFileByCount == null) {
                str = "native ad file list is null.";
            } else {
                str = "native ad file remain num: " + fileArrClearCacheFileByCount.length;
            }
            SigmobLog.i(str);
        } catch (Throwable th) {
            SigmobLog.e("clean native ad file error", th);
        }
    }

    private String l(String url) {
        File cacheFile;
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) url) || (cacheFile = d().getCacheFile(url)) == null || !cacheFile.exists()) {
            return null;
        }
        return cacheFile.getAbsolutePath();
    }

    public static BaseAdUnit m() {
        return f79086m;
    }

    private static void t() {
        try {
            File fileF = com.sigmob.sdk.base.utils.o.f(com.sigmob.sdk.base.utils.o.f79757c);
            if (fileF == null) {
                return;
            }
            for (File file : FileUtil.orderByDate(fileF.getAbsolutePath())) {
                long jCurrentTimeMillis = System.currentTimeMillis() - com.sigmob.sdk.base.o.a().A();
                if (file.exists() && jCurrentTimeMillis > file.lastModified()) {
                    if (file.isFile()) {
                        if (!FileUtil.deleteFile(file.getAbsolutePath())) {
                            return;
                        }
                    } else if (file.isDirectory() && !FileUtil.deleteDirectory(file.getAbsolutePath())) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public String k(String videoPath) {
        return this.f79092p.get(videoPath);
    }

    public String n() {
        return this.f79096v;
    }

    public String o() {
        return this.f79097w;
    }

    public static synchronized ImageManager a() {
        if (f79084k == null) {
            File file = new File(com.sigmob.sdk.base.utils.o.f());
            synchronized (ImageManager.class) {
                if (f79084k == null) {
                    f79084k = new ImageManager(com.sigmob.sdk.b.e()).customCachePath(file);
                }
            }
        }
        return f79084k;
    }

    public static synchronized void e() {
        HttpProxyCacheServer.Builder builder = new HttpProxyCacheServer.Builder(com.sigmob.sdk.b.e());
        try {
            builder.cacheDirectory(new File(com.sigmob.sdk.base.utils.o.b()));
        } catch (Throwable th) {
            SigmobLog.e("initHttpProxyCacheServer fail ", th);
        }
        f79082i = builder.build();
    }

    public static void h() {
        String str;
        try {
            File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount(a(FileUtil.orderByDate(com.sigmob.sdk.base.utils.o.e()), System.currentTimeMillis(), com.sigmob.sdk.base.o.a().A()), com.sigmob.sdk.base.o.a().z());
            if (fileArrClearCacheFileByCount == null) {
                str = "splash ad file list is null.";
            } else {
                str = "splash ad file remain num: " + fileArrClearCacheFileByCount.length;
            }
            SigmobLog.i(str);
        } catch (Throwable th) {
            SigmobLog.e("clean splash ad file error", th);
        }
    }

    public static void k() {
        try {
            File[] fileArrOrderByDate = FileUtil.orderByDate(com.sigmob.sdk.base.utils.o.a(com.sigmob.sdk.b.e()).getAbsolutePath());
            if (fileArrOrderByDate != null && fileArrOrderByDate.length != 0) {
                for (File file : fileArrOrderByDate) {
                    if (file != null && System.currentTimeMillis() - file.lastModified() > bn.f7592d) {
                        SigmobLog.d("clearDownloadAPK: file = " + file.getName() + ", result = " + file.delete());
                    }
                }
                return;
            }
            SigmobLog.d("clearDownloadAPK: files = " + Arrays.toString(fileArrOrderByDate));
        } catch (Exception e10) {
            SigmobLog.e("clearDownloadAPK: error = " + e10.getMessage());
        }
    }

    public static void l() {
        try {
            File[] fileArrOrderByDate = FileUtil.orderByDate(com.sigmob.sdk.base.utils.o.a());
            ArrayList arrayList = new ArrayList(Arrays.asList(fileArrOrderByDate));
            for (File file : fileArrOrderByDate) {
                if (!file.getPath().endsWith(".mp4") && !file.getPath().endsWith(".mp4.tmp") && !file.getPath().endsWith(".tgz") && !file.getPath().endsWith(".html")) {
                    arrayList.remove(file);
                }
            }
            File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount((File[]) arrayList.toArray(new File[0]), 5);
            SigmobLog.i(fileArrClearCacheFileByCount == null ? "splash ad file list is null" : "splash ad file remain num: " + fileArrClearCacheFileByCount.length);
        } catch (Throwable th) {
            SigmobLog.e("clean splash ad file error", th);
        }
    }

    public void f(BaseAdUnit adUnit) {
        if (adUnit == null || com.sigmob.sdk.base.utils.t.a((CharSequence) adUnit.getCrid()) || com.sigmob.sdk.base.utils.t.a((CharSequence) adUnit.getAdslot_id())) {
            return;
        }
        Map<String, AdCache> mapA = a(adUnit.getAd_type());
        if ((mapA == null || mapA.size() <= 29) && mapA != null) {
            AdCache adCache = mapA.get(adUnit.getAdslot_id());
            ArrayList arrayList = new ArrayList();
            arrayList.add(adUnit.getCrid());
            if (adCache != null) {
                arrayList.addAll(adCache.crids);
            }
            mapA.put(adUnit.getAdslot_id(), new AdCache(Integer.valueOf(adUnit.getAd_type()), arrayList));
        }
    }

    public void g(BaseAdUnit adUnit) {
        this.f79094t.remove(adUnit);
        this.f79098x.remove(adUnit.getUuid());
    }

    public void i(String last_crid) {
        this.f79096v = last_crid;
    }

    public void j(String last_campid) {
        this.f79097w = last_campid;
    }

    public static BidResponse a(String requestId) {
        return f79089q.get(requestId);
    }

    public static void b() {
        try {
            File fileD = com.sigmob.sdk.base.utils.o.d(com.sigmob.sdk.base.utils.o.f79755a);
            if (fileD == null) {
                return;
            }
            FileUtil.deleteDirectory(fileD.getAbsolutePath());
            t();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public static void c() {
        try {
            for (File file : FileUtil.orderByDate(com.sigmob.sdk.base.utils.o.c())) {
                long jCurrentTimeMillis = System.currentTimeMillis() - (((long) (com.sigmob.sdk.base.o.a().ah() * 3600)) * 1000);
                if (file.exists() && jCurrentTimeMillis > file.lastModified()) {
                    if (file.isFile()) {
                        if (!FileUtil.deleteFile(file.getAbsolutePath())) {
                            return;
                        }
                    } else if (file.isDirectory() && !FileUtil.deleteDirectory(file.getAbsolutePath())) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static List<BaseAdUnit> d(String placementId) {
        List<BaseAdUnit> list;
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) placementId) || (list = f79087n.get(placementId)) == null || list.isEmpty()) {
            return null;
        }
        for (BaseAdUnit baseAdUnit : new CopyOnWriteArrayList(list)) {
            if (baseAdUnit.isExpiredAd()) {
                list.remove(baseAdUnit);
            }
        }
        return list;
    }

    public static void f(String placementId) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) placementId)) {
            return;
        }
        HashMap<String, Integer> map = f79090s;
        Integer num = map.get(placementId);
        map.put(placementId, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public static void g(String placementId) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) placementId)) {
            return;
        }
        f79090s.remove(placementId);
    }

    public void e(BaseAdUnit adUnit) {
        Map<String, AdCache> mapA;
        AdCache adCache;
        if (adUnit == null || com.sigmob.sdk.base.utils.t.a((CharSequence) adUnit.getAdslot_id()) || (mapA = a(adUnit.getAd_type())) == null || (adCache = mapA.get(adUnit.getAdslot_id())) == null || adCache.crids == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(adCache.crids);
        String crid = adUnit.getCrid();
        if (arrayList.contains(crid)) {
            arrayList.remove(crid);
        }
        mapA.put(adUnit.getAdslot_id(), new AdCache(Integer.valueOf(adUnit.getAd_type()), arrayList));
    }

    public static void c(BaseAdUnit adUnit) {
        f79085l = adUnit;
    }

    public static void d(BaseAdUnit deeplinkAdUnit) {
        f79086m = deeplinkAdUnit;
    }

    public void b(a adCacheVideoListener) {
        if (adCacheVideoListener == null || !this.f79093r.contains(adCacheVideoListener)) {
            return;
        }
        this.f79093r.remove(adCacheVideoListener);
    }

    public static List<BaseAdUnit> a(String placementId, int bidFloor, int adCount) {
        List<BaseAdUnit> listD = d(placementId);
        if (com.sigmob.sdk.base.utils.e.a(listD)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (BaseAdUnit baseAdUnit : new CopyOnWriteArrayList(listD)) {
            int bidEcpm = baseAdUnit.getBidEcpm();
            if (bidEcpm == 0) {
                bidEcpm = baseAdUnit.getBP();
            }
            if (bidEcpm >= bidFloor || bidFloor == 0) {
                arrayList.add(baseAdUnit);
                listD.remove(baseAdUnit);
            }
            if (baseAdUnit.bidding_response != null || arrayList.size() >= adCount) {
                break;
            }
        }
        return arrayList;
    }

    public static void b(BaseAdUnit adUnit) {
        if (adUnit == null) {
            return;
        }
        String uuid = adUnit.getUuid();
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) uuid)) {
            return;
        }
        f79081h.remove(uuid);
        A.remove(uuid);
    }

    private void b(final BaseAdUnit adUnit, final b adStackStatusListener) {
        if (adUnit == null) {
            return;
        }
        File adPrivacyTemplateFile = adUnit.getAdPrivacyTemplateFile();
        if (adPrivacyTemplateFile != null && !adPrivacyTemplateFile.exists()) {
            DownloadItem downloadItem = new DownloadItem();
            downloadItem.url = adUnit.getadPrivacy().privacy_template_url;
            downloadItem.filePath = adPrivacyTemplateFile.getAbsolutePath();
            downloadItem.type = DownloadItem.FileType.OTHER;
            FileDownloader fileDownloaderA = t.a();
            if (fileDownloaderA != null) {
                fileDownloaderA.add(downloadItem, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.base.common.h.3
                    @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                    public void downloadProgress(DownloadItem item, long totalSize, long readSize) {
                    }

                    @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                    public void onCancel(DownloadItem item) {
                    }

                    @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                    public void onErrorResponse(DownloadItem item) {
                    }

                    @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                    public void onSuccess(DownloadItem item) {
                    }
                });
            }
        }
        File file = new File(adUnit.getSplashFilePath());
        if (file.exists()) {
            file.setLastModified(System.currentTimeMillis());
            if (adStackStatusListener != null) {
                adStackStatusListener.a(adUnit, null);
                return;
            }
            return;
        }
        FileDownloader fileDownloaderA2 = t.a();
        DownloadItem downloadItem2 = new DownloadItem();
        downloadItem2.filePath = adUnit.getSplashFilePath();
        downloadItem2.url = adUnit.getSplashURL();
        downloadItem2.type = DownloadItem.FileType.OTHER;
        downloadItem2.userRange = false;
        fileDownloaderA2.add(downloadItem2, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.base.common.h.4
            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void downloadProgress(DownloadItem item, long totalSize, long readSize) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onCancel(DownloadItem item) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onErrorResponse(DownloadItem item) {
                String message = item.error.getMessage();
                if (item.error.networkResponse != null) {
                    message = message + " status code " + item.error.networkResponse.statusCode;
                }
                b bVar = adStackStatusListener;
                if (bVar != null) {
                    bVar.a(adUnit, message);
                }
                SigmobLog.e("onErrorResponse: " + message);
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onSuccess(DownloadItem item) {
                b bVar = adStackStatusListener;
                if (bVar != null) {
                    bVar.a(adUnit, null);
                }
            }
        });
    }

    public Map<String, AdCache> a(int adType) {
        if (adType == 1 || adType == 4) {
            return this.f79095u;
        }
        if (adType == 5) {
            return this.f79099y;
        }
        if (adType != 6) {
            return null;
        }
        return this.f79100z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final DownloadItem item, BaseAdUnit adUnit) {
        if (f79082i == null) {
            return;
        }
        String str = item.url;
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) str) || f79082i.isCached(str)) {
            return;
        }
        String proxyUrl = f79082i.getProxyUrl(str);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        f79082i.registerCacheListener(new com.sigmob.sdk.videocache.d() { // from class: com.sigmob.sdk.base.common.h.2
            @Override // com.sigmob.sdk.videocache.d
            public void a(File cacheFile, String url, int percentsAvailable) {
                SigmobLog.d(cacheFile + " onCacheAvailable " + percentsAvailable);
                if (percentsAvailable != 100 || cacheFile == null || cacheFile.getAbsolutePath().endsWith("download")) {
                    return;
                }
                h.f79082i.unregisterCacheListener(this);
                item.networkMs = System.currentTimeMillis() - jCurrentTimeMillis;
                h.this.new c(item).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
            }

            @Override // com.sigmob.sdk.videocache.d
            public void a(String url, Throwable throwable) {
                h.f79082i.unregisterCacheListener(this);
                item.error = new VolleyError(WindAdError.ERROR_SIGMOB_VIDEO_FILE.getMessage());
                item.networkMs = System.currentTimeMillis() - jCurrentTimeMillis;
                h.this.new c(item).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
                SigmobLog.e(url + " onCacheUnavailable ", throwable);
            }
        }, str);
        com.sigmob.sdk.videocache.w.a(com.sigmob.sdk.b.e()).a(proxyUrl);
    }

    public static void b(String requestId) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) requestId)) {
            return;
        }
        f79089q.remove(requestId);
    }

    public void a(a adCacheVideoListener) {
        if (adCacheVideoListener == null || this.f79093r.contains(adCacheVideoListener)) {
            return;
        }
        this.f79093r.add(adCacheVideoListener);
    }

    public static void a(BaseAdUnit adUnit) {
        if (adUnit == null) {
            return;
        }
        String uuid = adUnit.getUuid();
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) uuid)) {
            return;
        }
        f79081h.put(uuid, adUnit);
    }

    public void a(BaseAdUnit adUnit, b adStackStatusListener) {
        if (adStackStatusListener != null) {
            adStackStatusListener.a(adUnit);
        }
        if (adUnit == null) {
            SigmobLog.e("adUnit is null.");
            if (adStackStatusListener != null) {
                adStackStatusListener.a(null, "adUnit is null.");
                return;
            }
            return;
        }
        if (adUnit.getAd_type() == 2) {
            b(adUnit, adStackStatusListener);
            return;
        }
        if (adStackStatusListener != null) {
            this.f79098x.put(adUnit.getUuid(), adStackStatusListener);
        }
        try {
            new d(adUnit).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
        } catch (Throwable th) {
            SigmobLog.e("AdUnitCheckCacheTask execute error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BaseAdUnit adUnit, String error, b adStackStatusListener) {
        if (error != null || (adUnit.isVideoExist() && adUnit.isEndCardIndexExist())) {
            if (adStackStatusListener != null) {
                adStackStatusListener.a(adUnit, error);
            }
            g(adUnit);
        }
    }

    public void a(String placementId, int adType) {
        Map<String, AdCache> mapA;
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) placementId) || (mapA = a(adType)) == null) {
            return;
        }
        mapA.remove(placementId);
    }

    public static void a(String requestId, BidResponse bidResponse) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) requestId) || bidResponse == null) {
            return;
        }
        f79089q.put(requestId, bidResponse);
    }

    public static void a(String placementId, List<BaseAdUnit> list, int maxLimit) {
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) placementId) || com.sigmob.sdk.base.utils.e.a(list)) {
            return;
        }
        List<BaseAdUnit> listD = d(placementId);
        if (listD != null && !listD.isEmpty() && maxLimit != 0) {
            listD.addAll(list);
            list = listD;
        }
        Collections.sort(list, new Comparator() { // from class: com.sigmob.sdk.base.common.t0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return h.a((BaseAdUnit) obj, (BaseAdUnit) obj2);
            }
        });
        if (maxLimit <= 0) {
            f79087n.remove(placementId);
            return;
        }
        if (list.size() > maxLimit) {
            list = new LinkedList(list.subList(0, maxLimit));
        }
        f79087n.put(placementId, list);
    }

    public static void a(List<BaseAdUnit> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        A.put(list.get(0).getUuid(), list);
    }

    public static File[] a(File[] files, long currentTime, long time) {
        if (files == null || files.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(files));
        for (File file : files) {
            long j10 = currentTime - time;
            if (file.exists() && j10 > file.lastModified()) {
                file.delete();
                arrayList.remove(file);
                SigmobLog.d("file delete " + file.getName());
            }
        }
        return (File[]) arrayList.toArray(new File[0]);
    }
}
