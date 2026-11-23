.class public Lcom/join/mgps/mod/utils/PluginConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG:Z = true

.field public static sPluginClassloader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/mod/utils/PluginConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/join/mgps/mod/utils/PluginConfig;->sPluginClassloader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "key",
            "def"
        }
    .end annotation

    .line 1
    const-string v0, "plugin_configs"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getArchiveSection(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "archiveInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getLastLaunchPkg(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    const-string v0, "launchPackage"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getModConfig(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "config"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getModGameId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "gameInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string v0, "gameId"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static getModMenuSwitch(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "switch"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getModMetaObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "tClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "modMeta"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v1, "modMetaStr"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static getModPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "soInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string v0, "modPath"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static getSoCode(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    const-string v0, "plugin_configs"

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "soCode"

    const/4 v1, 0x0

    .line 7
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSoCode(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "code"

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cxt",
            "soName"
        }
    .end annotation

    .line 1
    const-string v0, "plugin_configs"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method public static getSoVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    const-string v0, "soVersion"

    const-string v1, ""

    .line 4
    invoke-static {p0, v0, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSoVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-string v0, "version"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUtilsConfigState(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "config"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const-string v0, "utilsConfigState"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "1"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "key",
            "value"
        }
    .end annotation

    .line 1
    const-string v0, "plugin_configs"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static savaModMetaStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "modMetaStr"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "modMeta"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "modMetaStr"

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Lcom/join/mgps/Util/y$c;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static setArchivePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "archivePath",
            "archivePath2",
            "archiveId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "archiveInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "archivePath"

    .line 23
    .line 24
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    const-string p0, "archivePath2"

    .line 34
    .line 35
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    const-string p0, "archiveId"

    .line 45
    .line 46
    invoke-virtual {v1, p0, p3}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static setLastLaunchPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "pkg"
        }
    .end annotation

    .line 1
    const-string v0, "launchPackage"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lcom/join/mgps/mod/utils/PluginConfig;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setModConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "modPath",
            "version",
            "code",
            "lastModifyTime"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/y$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    :cond_0
    const-string p0, "modPath"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "version"

    .line 6
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "code"

    invoke-virtual {v1, p2, p0}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "lastModifyTime"

    invoke-virtual {v1, p1, p0}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    return-void
.end method

.method public static setModConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "goldSwitch",
            "archiveSwitch",
            "introductionSwitch",
            "channelNum",
            "targetVersion",
            "androidId",
            "platform",
            "package_type",
            "typeId"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/join/mgps/Util/y;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    const-string p0, "switch"

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/join/mgps/Util/y$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    :cond_0
    const-string p0, "goldFingerSwitch"

    .line 14
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "archiveCloudSwitch"

    .line 15
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "introductionSwitch"

    .line 16
    invoke-virtual {v1, p0, p3}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "config"

    .line 17
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    move-result-object p1

    if-nez p1, :cond_1

    .line 18
    new-instance p1, Lcom/join/mgps/Util/y$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    :cond_1
    const-string p0, "channelNum"

    .line 20
    invoke-virtual {p1, p0, p4}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "targetVersion"

    .line 21
    invoke-virtual {p1, p0, p5}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "androidId"

    .line 22
    invoke-virtual {p1, p0, p6}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "platform"

    .line 23
    invoke-virtual {p1, p0, p7}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "package_type"

    .line 24
    invoke-virtual {p1, p0, p8}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "typeId"

    .line 25
    invoke-virtual {p1, p0, p9}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    return-void
.end method

.method public static setModGameId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "gameInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "gameId"

    .line 23
    .line 24
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static setModPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "modPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "gameInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "modPath"

    .line 23
    .line 24
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static setSoCode(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "code"
        }
    .end annotation

    .line 1
    const-string v0, "plugin_configs"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "soCode"

    .line 13
    .line 14
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cxt",
            "soName",
            "time"
        }
    .end annotation

    .line 1
    const-string v0, "plugin_configs"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static setSoVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "ver"
        }
    .end annotation

    .line 1
    const-string v0, "soVersion"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lcom/join/mgps/mod/utils/PluginConfig;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setUtilsConfigState(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "enabled"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "config"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string p0, "1"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p0, "0"

    .line 28
    .line 29
    :goto_0
    const-string p1, "utilsConfigState"

    .line 30
    .line 31
    invoke-virtual {v1, p1, p0}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
