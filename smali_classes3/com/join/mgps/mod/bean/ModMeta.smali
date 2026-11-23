.class public Lcom/join/mgps/mod/bean/ModMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MOD_TYPE_MOD:I = 0x0

.field public static final MOD_TYPE_VA:I = 0x1


# instance fields
.field private androidId:Ljava/lang/String;

.field private archiveCloudSwitch:Ljava/lang/String;

.field private channelNum:Ljava/lang/String;

.field private classLoader:Ldalvik/system/DexClassLoader;

.field private entryClass:Ljava/lang/String;

.field private entryDataClass:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private goldFingerSwitch:Ljava/lang/String;

.field private hostApp:Landroid/app/Application;

.field private hostPackage:Ljava/lang/String;

.field private introductionSwitch:Ljava/lang/String;

.field private modCode:I

.field private modPath:Ljava/lang/String;

.field private modType:I

.field private modVersion:Ljava/lang/String;

.field private nativeLibDir:Ljava/lang/String;

.field private packageInfo:Landroid/content/pm/PackageInfo;

.field private packageName:Ljava/lang/String;

.field private package_type:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private pluginLibDir:Ljava/lang/String;

.field private processName:Ljava/lang/String;

.field private resources:Landroid/content/res/Resources;

.field private targetApp:Landroid/app/Application;

.field private target_version:I

.field private typeId:Ljava/lang/String;

.field private useNativeLibDir:Z

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modType:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hostApp",
            "packageName",
            "processName",
            "targetApp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostApp:Landroid/app/Application;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/mod/bean/ModMeta;->processName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/mod/bean/ModMeta;->targetApp:Landroid/app/Application;

    .line 8
    .line 9
    return-void
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->androidId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchiveCloudSwitch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->archiveCloudSwitch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChannelNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->channelNum:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClassLoader()Ldalvik/system/DexClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->classLoader:Ldalvik/system/DexClassLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEntryClass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryClass:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEntryDataClass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryDataClass:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGoldFingerSwitch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->goldFingerSwitch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostApp()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostApp:Landroid/app/Application;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntroductionSwitch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->introductionSwitch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getModPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modType:I

    .line 2
    .line 3
    return v0
.end method

.method public getModVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->modVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeLibDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->nativeLibDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackage_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->package_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->platform:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPluginLibDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->pluginLibDir:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->processName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->resources:Landroid/content/res/Resources;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTargetApp()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->targetApp:Landroid/app/Application;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTarget_version()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->target_version:I

    .line 2
    .line 3
    return v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->typeId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseNativeLibDir()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->useNativeLibDir:Z

    .line 2
    .line 3
    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->userId:I

    .line 2
    .line 3
    return v0
.end method

.method public isUseNativeLibDir()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/mod/bean/ModMeta;->useNativeLibDir:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "androidId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->androidId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchiveCloudSwitch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveCloudSwitch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->archiveCloudSwitch:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setChannelNum(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNum"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->channelNum:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClassLoader(Ldalvik/system/DexClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classLoader"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->classLoader:Ldalvik/system/DexClassLoader;

    .line 2
    .line 3
    return-void
.end method

.method public setEntryClass(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryClass"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryClass:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEntryDataClass(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryDataClass"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryDataClass:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGoldFingerSwitch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goldFingerSwitch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->goldFingerSwitch:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHostApp(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostApp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostApp:Landroid/app/Application;

    .line 2
    .line 3
    return-void
.end method

.method public setHostPackage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostPackage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostPackage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIntroductionSwitch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "introductionSwitch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->introductionSwitch:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setModCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modCode"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modCode:I

    .line 2
    .line 3
    return-void
.end method

.method public setModInfo(Ljava/lang/String;Landroid/content/pm/PackageInfo;Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modPath",
            "packageInfo",
            "classLoader",
            "resources",
            "entryClass"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modPath:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/mod/bean/ModMeta;->classLoader:Ldalvik/system/DexClassLoader;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/mod/bean/ModMeta;->resources:Landroid/content/res/Resources;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryClass:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setModPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setModType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modType:I

    .line 2
    .line 3
    return-void
.end method

.method public setModVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modVersion"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeLibDir(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeLibDir"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->nativeLibDir:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPackage_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "package_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->package_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platform"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->platform:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPluginLibDir(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginLibDir"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->pluginLibDir:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->processName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->resources:Landroid/content/res/Resources;

    .line 2
    .line 3
    return-void
.end method

.method public setTargetApp(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetApp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->targetApp:Landroid/app/Application;

    .line 2
    .line 3
    return-void
.end method

.method public setTarget_version(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target_version"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->target_version:I

    .line 2
    .line 3
    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->typeId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUseNativeLibDir(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useNativeLibDir"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->useNativeLibDir:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/mod/bean/ModMeta;->userId:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ModMeta{hostApp="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostApp:Landroid/app/Application;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", targetApp="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/mod/bean/ModMeta;->targetApp:Landroid/app/Application;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", packageName=\'"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x27

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", processName=\'"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->processName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", modPath=\'"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->modPath:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ", nativeLibDir=\'"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->nativeLibDir:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, ", classLoader="

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->classLoader:Ldalvik/system/DexClassLoader;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, ", resources="

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->resources:Landroid/content/res/Resources;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, ", packageInfo="

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v2, ", entryClass=\'"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryClass:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, ", entryDataClass=\'"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->entryDataClass:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, ", modCode="

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->modCode:I

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, ", modVersion=\'"

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->modVersion:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, ", pluginLibDir=\'"

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->pluginLibDir:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, ", gameId=\'"

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->gameId:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, ", userId="

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->userId:I

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v2, ", useNativeLibDir="

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-boolean v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->useNativeLibDir:Z

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, ", hostPackage=\'"

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v2, p0, Lcom/join/mgps/mod/bean/ModMeta;->hostPackage:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, ", modType="

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget v1, p0, Lcom/join/mgps/mod/bean/ModMeta;->modType:I

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const/16 v1, 0x7d

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    return-object v0
.end method
