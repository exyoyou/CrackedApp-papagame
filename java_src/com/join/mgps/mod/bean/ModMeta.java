package com.join.mgps.mod.bean;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import dalvik.system.DexClassLoader;

/* JADX INFO: loaded from: classes3.dex */
public class ModMeta {
    public static final int MOD_TYPE_MOD = 0;
    public static final int MOD_TYPE_VA = 1;
    private String androidId;
    private String archiveCloudSwitch;
    private String channelNum;
    private DexClassLoader classLoader;
    private String entryClass;
    private String entryDataClass;
    private String gameId;
    private String goldFingerSwitch;
    private Application hostApp;
    private String hostPackage;
    private String introductionSwitch;
    private int modCode;
    private String modPath;
    private int modType = 0;
    private String modVersion;
    private String nativeLibDir;
    private PackageInfo packageInfo;
    private String packageName;
    private String package_type;
    private String platform;
    private String pluginLibDir;
    private String processName;
    private Resources resources;
    private Application targetApp;
    private int target_version;
    private String typeId;
    private boolean useNativeLibDir;
    private int userId;

    public void bind(Application hostApp, String packageName, String processName, Application targetApp) {
        this.hostApp = hostApp;
        this.packageName = packageName;
        this.processName = processName;
        this.targetApp = targetApp;
    }

    public String getAndroidId() {
        return this.androidId;
    }

    public String getArchiveCloudSwitch() {
        return this.archiveCloudSwitch;
    }

    public String getChannelNum() {
        return this.channelNum;
    }

    public DexClassLoader getClassLoader() {
        return this.classLoader;
    }

    public String getEntryClass() {
        return this.entryClass;
    }

    public String getEntryDataClass() {
        return this.entryDataClass;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGoldFingerSwitch() {
        return this.goldFingerSwitch;
    }

    public Application getHostApp() {
        return this.hostApp;
    }

    public String getHostPackage() {
        return this.hostPackage;
    }

    public String getIntroductionSwitch() {
        return this.introductionSwitch;
    }

    public int getModCode() {
        return this.modCode;
    }

    public String getModPath() {
        return this.modPath;
    }

    public int getModType() {
        return this.modType;
    }

    public String getModVersion() {
        return this.modVersion;
    }

    public String getNativeLibDir() {
        return this.nativeLibDir;
    }

    public PackageInfo getPackageInfo() {
        return this.packageInfo;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPackage_type() {
        return this.package_type;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getPluginLibDir() {
        return this.pluginLibDir;
    }

    public String getProcessName() {
        return this.processName;
    }

    public Resources getResources() {
        return this.resources;
    }

    public Application getTargetApp() {
        return this.targetApp;
    }

    public int getTarget_version() {
        return this.target_version;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public boolean getUseNativeLibDir() {
        return this.useNativeLibDir;
    }

    public int getUserId() {
        return this.userId;
    }

    public boolean isUseNativeLibDir() {
        return this.useNativeLibDir;
    }

    public void setAndroidId(String androidId) {
        this.androidId = androidId;
    }

    public void setArchiveCloudSwitch(String archiveCloudSwitch) {
        this.archiveCloudSwitch = archiveCloudSwitch;
    }

    public void setChannelNum(String channelNum) {
        this.channelNum = channelNum;
    }

    public void setClassLoader(DexClassLoader classLoader) {
        this.classLoader = classLoader;
    }

    public void setEntryClass(String entryClass) {
        this.entryClass = entryClass;
    }

    public void setEntryDataClass(String entryDataClass) {
        this.entryDataClass = entryDataClass;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGoldFingerSwitch(String goldFingerSwitch) {
        this.goldFingerSwitch = goldFingerSwitch;
    }

    public void setHostApp(Application hostApp) {
        this.hostApp = hostApp;
    }

    public void setHostPackage(String hostPackage) {
        this.hostPackage = hostPackage;
    }

    public void setIntroductionSwitch(String introductionSwitch) {
        this.introductionSwitch = introductionSwitch;
    }

    public void setModCode(int modCode) {
        this.modCode = modCode;
    }

    public void setModInfo(String modPath, PackageInfo packageInfo, DexClassLoader classLoader, Resources resources, String entryClass) {
        this.modPath = modPath;
        this.packageInfo = packageInfo;
        this.classLoader = classLoader;
        this.resources = resources;
        this.entryClass = entryClass;
    }

    public void setModPath(String modPath) {
        this.modPath = modPath;
    }

    public void setModType(int modType) {
        this.modType = modType;
    }

    public void setModVersion(String modVersion) {
        this.modVersion = modVersion;
    }

    public void setNativeLibDir(String nativeLibDir) {
        this.nativeLibDir = nativeLibDir;
    }

    public void setPackageInfo(PackageInfo packageInfo) {
        this.packageInfo = packageInfo;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPackage_type(String package_type) {
        this.package_type = package_type;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public void setPluginLibDir(String pluginLibDir) {
        this.pluginLibDir = pluginLibDir;
    }

    public void setProcessName(String processName) {
        this.processName = processName;
    }

    public void setResources(Resources resources) {
        this.resources = resources;
    }

    public void setTargetApp(Application targetApp) {
        this.targetApp = targetApp;
    }

    public void setTarget_version(int target_version) {
        this.target_version = target_version;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public void setUseNativeLibDir(boolean useNativeLibDir) {
        this.useNativeLibDir = useNativeLibDir;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String toString() {
        return "ModMeta{hostApp=" + this.hostApp + ", targetApp=" + this.targetApp + ", packageName='" + this.packageName + "', processName='" + this.processName + "', modPath='" + this.modPath + "', nativeLibDir='" + this.nativeLibDir + "', classLoader=" + this.classLoader + ", resources=" + this.resources + ", packageInfo=" + this.packageInfo + ", entryClass='" + this.entryClass + "', entryDataClass='" + this.entryDataClass + "', modCode=" + this.modCode + ", modVersion='" + this.modVersion + "', pluginLibDir='" + this.pluginLibDir + "', gameId='" + this.gameId + "', userId=" + this.userId + ", useNativeLibDir=" + this.useNativeLibDir + ", hostPackage='" + this.hostPackage + "', modType=" + this.modType + '}';
    }
}
