package com.bytedance.pangle.plugin;

import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.byazt.bog.a;
import com.byazt.th.n;
import com.byazt.th.tt;
import com.byazt.th.uj;
import com.byazt.uk.i;
import com.byazt.uq.sp;
import com.byazt.uq.t;
import com.byazt.uq.u;
import com.byazt.uq.ve;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.PluginClassLoader;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusApplication;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Function;
import net.lingala.zip4j.util.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class Plugin {
    public static final int LIFE_INSTALLED = 2;
    public static final int LIFE_LOADED = 3;
    public static final int LIFE_LOADING = 4;
    public static final int LIFE_PENDING = 1;
    public static final String TAG = "Plugin";
    public volatile Function mApiBridge;
    public int mApiVersionCode;
    public final String mAppKey;
    public final String mAppSecretKey;
    public ZeusApplication mApplication;
    public PluginClassLoader mClassLoader;
    public PluginApplicationWrapper mHostApplication;
    public ApplicationInfo mHostApplicationInfoHookSomeField;
    public volatile boolean mInitialized;
    public String mInternalPath;
    public int mInternalVersionCode;
    public boolean mIsDexPlugin;
    public boolean mIsSupportLibIso;
    public int mMaxVersionCode;
    public int mMinVersionCode;
    public final boolean mOpenLoadClassOpt;
    public String mPackageDir;
    public String mPkgName;
    public volatile Function mPluginBridge;
    public final boolean mReInstallInternalPluginByMd5;
    public Resources mResources;
    public String mSignature;
    public final boolean mUnInstallPluginWhenHostChange;
    public final boolean mUseMemoryForActivityIntent;
    public int mVersionCode;
    public String response;
    public HashMap<String, ActivityInfo> pluginActivities = new HashMap<>();
    public HashMap<String, ServiceInfo> pluginServices = new HashMap<>();
    public HashMap<String, ActivityInfo> pluginReceiver = new HashMap<>();
    public HashMap<String, ProviderInfo> pluginProvider = new HashMap<>();
    public volatile int mLifeCycle = 1;
    public final List<String> mSharedHostSos = new ArrayList();
    public final Object installLock = new Object();
    public final Object initializeLock = new Object();
    public CopyOnWriteArrayList<c> mBindServiceTaskList = new CopyOnWriteArrayList<>();
    public CopyOnWriteArrayList<c> mStartServiceTaskList = new CopyOnWriteArrayList<>();

    public interface c {
        void c(int i10) throws RemoteException;
    }

    public Plugin(JSONObject jSONObject) throws JSONException {
        this.mInternalVersionCode = -1;
        this.mMaxVersionCode = Integer.MAX_VALUE;
        this.mIsDexPlugin = false;
        this.mPkgName = jSONObject.getString("packageName");
        this.mMinVersionCode = jSONObject.optInt("minPluginVersion", 0);
        this.mMaxVersionCode = jSONObject.optInt("maxPluginVersion", Integer.MAX_VALUE);
        this.mApiVersionCode = jSONObject.getInt("apiVersionCode");
        if (jSONObject.has("isDexPlugin")) {
            this.mIsDexPlugin = jSONObject.getInt("isDexPlugin") == 1;
        }
        String signature = GlobalParam.getInstance().getSignature(this.mPkgName);
        this.mSignature = signature;
        if (TextUtils.isEmpty(signature)) {
            this.mSignature = jSONObject.optString("signature", "");
        }
        this.mIsSupportLibIso = jSONObject.optBoolean("isSupportLibIsolate", false);
        this.mInternalPath = jSONObject.optString("internalPath", "");
        this.mInternalVersionCode = jSONObject.optInt("internalVersionCode", -1);
        this.mAppKey = jSONObject.optString("appKey", "");
        this.mAppSecretKey = jSONObject.optString("appSecretKey", "");
        this.mOpenLoadClassOpt = jSONObject.optBoolean("loadClassOpt", false);
        this.mUnInstallPluginWhenHostChange = jSONObject.optBoolean("unInstallPluginWhenHostChange", false);
        this.mUseMemoryForActivityIntent = jSONObject.optBoolean("useMemoryForActivityIntent", false);
        this.mReInstallInternalPluginByMd5 = jSONObject.optBoolean("reInstallInternalPluginByMd5", false);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("sharedHostSo");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                this.mSharedHostSos.add((String) jSONArrayOptJSONArray.get(i10));
            }
        }
        setupInternalPlugin();
    }

    private boolean checkValid(File file, String str, int i10) {
        if (!TextUtils.equals(this.mPkgName, str)) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " package name not match !!!");
            return false;
        }
        if (i10 < this.mMinVersionCode || i10 > this.mMaxVersionCode) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " " + String.format(" pluginApk ver[%s] not match plugin VerRange[%s, %s].", Integer.valueOf(i10), Integer.valueOf(this.mMinVersionCode), Integer.valueOf(this.mMaxVersionCode)));
            return false;
        }
        if (i10 < this.mVersionCode && isInstalled()) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + String.format(" pluginApk ver[%s] lower than installed plugin[%s].", Integer.valueOf(i10), Integer.valueOf(this.mVersionCode)));
            return false;
        }
        if (file == null || !file.exists()) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " pluginApk not exist.");
            return false;
        }
        if (i10 == this.mVersionCode && u.c().da(str).equals(ve.c(file)[0])) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " pluginApk with the same identity has already installed.");
            return false;
        }
        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + ":" + i10 + " true");
        return true;
    }

    private boolean checkVersionValid(int i10, int i11, boolean z10) {
        int iN = u.c().n(this.mPkgName);
        boolean z11 = false;
        if (iN > i11) {
            ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin".concat(String.valueOf(String.format(" checkVersionValid %s apiVersion downgrade , lastApiVersion=%s , currentApiVersion=%s", this.mPkgName, Integer.valueOf(iN), Integer.valueOf(i11)))));
            return false;
        }
        boolean z12 = i10 >= 0 && i10 >= this.mMinVersionCode && i10 <= this.mMaxVersionCode;
        if (z12 && i11 != -1) {
            int iTt = u.c().tt(this.mPkgName, i10);
            int iVe = u.c().ve(this.mPkgName, i10);
            if (i11 < iTt || i11 > iVe) {
                ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin".concat(String.valueOf(String.format(" checkVersionValid plugin[%s, ver=%s] is not compatible with api[ver_code=%s], apiCompatibleVer=[%s,%s]", this.mPkgName, Integer.valueOf(this.mVersionCode), Integer.valueOf(i11), Integer.valueOf(iTt), Integer.valueOf(iVe)))));
                z12 = false;
            }
        }
        if (z12 && z10 && tt.tt(new File(com.byazt.th.ve.tt(this.mPkgName, i10)))) {
            ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin".concat(String.valueOf(String.format(" checkVersionValid plugin[%s, ver=%s] not match hostAbi", this.mPkgName, Integer.valueOf(i10)))));
        } else {
            z11 = z12;
        }
        ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin checkVersionValid, pkg=" + this.mPkgName + ", ver=" + this.mVersionCode + ", valid=" + z11);
        return z11;
    }

    private void deleteInstalledPlugin() {
        if (TextUtils.isEmpty(this.mPackageDir)) {
            this.mPackageDir = com.byazt.th.ve.c(this.mPkgName);
        }
        new File(this.mPackageDir).listFiles(new FileFilter() { // from class: com.bytedance.pangle.plugin.Plugin.2
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                if (file.getName().matches("^version-(\\d+)$")) {
                    u.c().c(Plugin.this.mPkgName, Integer.parseInt(file.getName().split("-")[1]), false);
                }
                return false;
            }
        });
        sp.c(this.mPackageDir);
    }

    private void deleteOtherExpiredVer(int i10) {
        if (uj.tt(Zeus.getAppApplication())) {
            if (TextUtils.isEmpty(this.mPackageDir)) {
                this.mPackageDir = com.byazt.th.ve.c(this.mPkgName);
            }
            final String strConcat = "version-".concat(String.valueOf(i10));
            new File(this.mPackageDir).listFiles(new FileFilter() { // from class: com.bytedance.pangle.plugin.Plugin.3
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    if (file != null && !strConcat.equals(file.getName()) && !"data".equals(file.getName())) {
                        sp.c(file.getAbsolutePath());
                        ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin deleteOtherExpired " + file.getAbsolutePath());
                        if (file.getName().matches("^version-(\\d+)$")) {
                            u.c().c(Plugin.this.mPkgName, Integer.parseInt(file.getName().split("-")[1]), false);
                        }
                    }
                    return false;
                }
            });
        }
    }

    private File[] getInstallFiles() {
        if (TextUtils.isEmpty(this.mPackageDir)) {
            this.mPackageDir = com.byazt.th.ve.c(this.mPkgName);
        }
        return new File(this.mPackageDir).listFiles(new FileFilter() { // from class: com.bytedance.pangle.plugin.Plugin.4
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file != null && file.getName().matches("^version-(\\d+)$");
            }
        });
    }

    private void installInternalPlugin() {
        if (uj.tt(Zeus.getAppApplication())) {
            if (this.mReInstallInternalPluginByMd5) {
                if (getVersion() > this.mInternalVersionCode) {
                    return;
                }
            } else if (getVersion() >= this.mInternalVersionCode) {
                return;
            }
            if (TextUtils.isEmpty(this.mInternalPath)) {
                return;
            }
            n.c(new Runnable() { // from class: com.bytedance.pangle.plugin.Plugin.1
                @Override // java.lang.Runnable
                public void run() {
                    File file;
                    try {
                        if (Plugin.this.mInternalPath.endsWith(".7z.zip")) {
                            file = new File(com.byazt.th.ve.ve(), Plugin.this.mPkgName + ".7z.zip");
                        } else {
                            file = new File(com.byazt.th.ve.ve(), Plugin.this.mPkgName + ".apk");
                        }
                        ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin copyInternalPlugin " + Plugin.this.mInternalPath + " --> " + file.getAbsolutePath());
                        sp.c(Zeus.getAppApplication().getAssets().open(Plugin.this.mInternalPath), new FileOutputStream(file));
                        if (file.exists()) {
                            new com.byazt.uwt.tt(Plugin.this.mPkgName, file).run();
                            return;
                        }
                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "installInternalPlugin failed. " + file.getAbsolutePath() + " is not exists.");
                    } catch (Throwable th) {
                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "installInternalPlugin failed. ", th);
                    }
                }
            });
        }
    }

    private int modifyResIfNeed(int i10) {
        String strC = com.byazt.uq.tt.c(Zeus.getAppApplication());
        if (!TextUtils.isEmpty(strC) && TextUtils.equals(u.c().a(this.mPkgName), strC)) {
            return i10;
        }
        if (this.mUnInstallPluginWhenHostChange || GlobalParam.getInstance().unInstallPluginWhenHostChange(this.mPkgName)) {
            ZeusLogger.d(ZeusLogger.TAG_INIT, "uninstall plugin by host update. " + this.mPkgName + " " + i10);
            return 0;
        }
        ZeusLogger.d(ZeusLogger.TAG_INIT, "modifyRes by init. " + this.mPkgName + " " + i10);
        int iC = new com.byazt.vnu.ve().c(new File(com.byazt.th.ve.tt(this.mPkgName, i10)), true, new StringBuilder());
        if (iC == 100 || iC == 200) {
            return i10;
        }
        return 0;
    }

    private void runServiceTask(List<c> list, int i10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            for (c cVar : list) {
                if (cVar != null) {
                    cVar.c(i10);
                }
            }
            list.clear();
        } catch (Exception e10) {
            a.c(e10);
        }
    }

    private void setupInternalPlugin() {
        int iC;
        if (u.c().n(this.mPkgName, this.mApiVersionCode)) {
            return;
        }
        if (TextUtils.isEmpty(this.mInternalPath) || this.mInternalVersionCode == -1) {
            try {
                for (String str : Zeus.getAppApplication().getAssets().list(i.uj)) {
                    if (str.startsWith(this.mPkgName + "_") && (iC = t.c(str.split("_")[1], -1)) != -1) {
                        this.mInternalPath = i.uj + e.F0 + str;
                        this.mInternalVersionCode = iC;
                        return;
                    }
                }
            } catch (IOException e10) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "setupInternalPlugin failed.", e10);
            }
        }
    }

    public void addBindServicePluginPendingTask(c cVar) {
        this.mBindServiceTaskList.add(cVar);
    }

    public void addStartServicePluginPendingTask(c cVar) {
        this.mStartServiceTaskList.add(cVar);
    }

    public void deleteIfNeeded() {
        if (uj.tt(Zeus.getAppApplication()) && u.c().i(this.mPkgName)) {
            u.c().x(this.mPkgName);
            deleteInstalledPlugin();
            ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin deleteIfNeeded " + this.mPkgName);
        }
    }

    public Function getApiBridge() {
        return this.mApiBridge;
    }

    public int getApiVersionCode() {
        return this.mApiVersionCode;
    }

    public Object getInitializeLock() {
        return this.initializeLock;
    }

    public int getInstalledMaxVer() {
        File[] installFiles = getInstallFiles();
        int i10 = -1;
        if (installFiles != null) {
            for (File file : installFiles) {
                int i11 = Integer.parseInt(file.getName().split("-")[1]);
                if (i11 > i10 && u.c().uj(this.mPkgName, i11) && new File(com.byazt.th.ve.tt(this.mPkgName, i11)).exists()) {
                    i10 = i11;
                }
            }
        }
        ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin getInstalledMaxVersion, pkg=" + this.mPkgName + ", maxVer=" + i10);
        return i10;
    }

    public List<Integer> getInstalledVersionCodes() {
        File[] installFiles = getInstallFiles();
        ArrayList arrayList = new ArrayList();
        if (installFiles != null) {
            for (File file : installFiles) {
                int i10 = Integer.parseInt(file.getName().split("-")[1]);
                if (u.c().uj(this.mPkgName, i10)) {
                    arrayList.add(Integer.valueOf(i10));
                }
            }
        }
        return arrayList;
    }

    public String getInternalPath() {
        return this.mInternalPath;
    }

    public int getInternalVersionCode() {
        return this.mInternalVersionCode;
    }

    public JSONObject getJsonConfig() {
        return null;
    }

    public int getLifeCycle() {
        updateInstallStateFromMainProcess();
        return this.mLifeCycle;
    }

    public String getNativeLibraryDir() {
        int i10 = this.mVersionCode;
        return i10 > 0 ? com.byazt.th.ve.uj(this.mPkgName, i10) : com.byazt.th.ve.c(this.mPkgName);
    }

    public Function getPluginBridge() {
        return this.mPluginBridge;
    }

    public int getVersion() {
        updateInstallStateFromMainProcess();
        return this.mVersionCode;
    }

    public void init() {
        if (this.mInitialized) {
            return;
        }
        synchronized (this.initializeLock) {
            if (this.mInitialized) {
                return;
            }
            if (uj.tt(Zeus.getAppApplication())) {
                int iModifyResIfNeed = 0;
                boolean zVe = u.c().tt(this.mPkgName) ? u.c().ve(this.mPkgName) : false;
                deleteIfNeeded();
                int installedMaxVer = getInstalledMaxVer();
                if (checkVersionValid(installedMaxVer, this.mApiVersionCode, zVe)) {
                    iModifyResIfNeed = modifyResIfNeed(installedMaxVer);
                    updateToInstalled(iModifyResIfNeed);
                }
                deleteOtherExpiredVer(iModifyResIfNeed);
                ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin initPlugins result=".concat(String.valueOf(this)));
                u.c().c(this.mPkgName);
                u.c().uj(this.mPkgName);
                u.c().c(this.mPkgName, com.byazt.uq.tt.c(Zeus.getAppApplication()));
                u.c().c(this.mPkgName, this.mApiVersionCode);
            } else {
                updateInstallStateFromMainProcess();
            }
            this.mInitialized = true;
            installInternalPlugin();
        }
    }

    public void injectResponse(String str) {
        this.response = str;
    }

    public boolean install(File file, com.byazt.gy.n nVar) {
        boolean zC = false;
        try {
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin install from local file " + file + ", " + Thread.currentThread().getName());
            String str = nVar.f14803c;
            int i10 = nVar.tt;
            synchronized (this.installLock) {
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin synchronized begin, plugin=".concat(String.valueOf(this)));
                boolean zCheckValid = checkValid(file, str, i10);
                if (zCheckValid) {
                    String str2 = ve.c(file)[0];
                    zC = com.byazt.uwt.ve.c(file, str, i10);
                    if (zC) {
                        u.c().tt(this.mPkgName, str2);
                        u.c().c(this.mPkgName, i10, true);
                        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin markPluginInstalled, " + this.mPkgName + ":" + i10 + " identity=" + str2);
                        sp.c(file);
                    }
                }
                synchronized (this) {
                    try {
                        if (!zCheckValid) {
                            sp.c(file);
                            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin deleting invalid " + str + ":" + i10);
                        } else if (this.mLifeCycle == 3) {
                            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin LIFE_LOADED, valid next restart " + str + ":" + i10);
                        } else if (zC) {
                            updateToInstalled(i10);
                            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin INSTALLED " + str + ":" + i10);
                        } else {
                            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin INSTALL_FAILED" + str + ":" + i10);
                            sp.c(file);
                            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin delete file by failedCount > 0 " + str + ":" + i10);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "Plugin IMPOSSIBLE!!!", th2);
        }
        return zC;
    }

    public boolean isInstalled() {
        updateInstallStateFromMainProcess();
        return this.mLifeCycle >= 2;
    }

    public boolean isIsDexPlugin() {
        return this.mIsDexPlugin;
    }

    public boolean isLoaded() {
        return this.mLifeCycle == 3;
    }

    public boolean isLoading() {
        return this.mLifeCycle == 4;
    }

    public boolean isVersionInstalled(int i10) {
        return u.c().uj(this.mPkgName, i10);
    }

    public void setApiBridge(Function function) {
        this.mApiBridge = function;
    }

    public void setApiCompatVersion(int i10, int i11, int i12) {
        u.c().c(this.mPkgName, i10, i11, i12);
    }

    public void setLifeCycle(int i10) {
        this.mLifeCycle = i10;
        if (i10 == 3) {
            runServiceTask(this.mBindServiceTaskList, i10);
            runServiceTask(this.mStartServiceTaskList, i10);
        }
    }

    public void setPluginBridge(Function function) {
        this.mPluginBridge = function;
    }

    public String toString() {
        return "Plugin{pkg=" + this.mPkgName + ", ver=" + this.mVersionCode + ", life=" + this.mLifeCycle + '}';
    }

    public boolean unInstall(int i10) {
        if (i10 == this.mVersionCode) {
            u.c().sp(this.mPkgName);
            return true;
        }
        File[] installFiles = getInstallFiles();
        if (installFiles != null) {
            for (File file : installFiles) {
                if (Integer.parseInt(file.getName().split("-")[1]) == i10) {
                    u.c().c(this.mPkgName, i10, false);
                    sp.c(file);
                    return true;
                }
            }
        }
        return false;
    }

    public void updateInstallStateFromMainProcess() {
        com.byazt.uk.ve veVarC;
        try {
            if (uj.tt(Zeus.getAppApplication()) || this.mLifeCycle >= 2 || (veVarC = com.byazt.quv.tt.c()) == null || !veVarC.c(this.mPkgName)) {
                return;
            }
            updateToInstalled(veVarC.tt(this.mPkgName));
        } catch (Throwable th) {
            ZeusLogger.w(ZeusLogger.TAG_PPM, "updateInstallStateFromMainProcess error. process = " + uj.c(Zeus.getAppApplication()), th);
        }
    }

    public void updateToInstalled(int i10) {
        this.mVersionCode = i10;
        this.mLifeCycle = 2;
    }
}
