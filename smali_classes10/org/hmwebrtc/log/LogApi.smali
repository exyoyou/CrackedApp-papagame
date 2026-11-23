.class public Lorg/hmwebrtc/log/LogApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/log/LogApi$LogSink;,
        Lorg/hmwebrtc/log/LogApi$LogMessage;
    }
.end annotation


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_ERROR:I = 0x4

.field public static final LOG_LEVEL_INFO:I = 0x2

.field public static final LOG_LEVEL_VERBOSE:I = 0x0

.field public static final LOG_LEVEL_WARING:I = 0x3

.field private static mCurrentLevel:I = 0x3

.field private static mLogAdapter:Lorg/hmwebrtc/log/LogAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, p0, p1}, Lorg/hmwebrtc/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1, p0, p1}, Lorg/hmwebrtc/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static getAdapter()Lorg/hmwebrtc/log/LogAdapter;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/log/LogApi;->mLogAdapter:Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/hmwebrtc/log/LogAdapter;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/hmwebrtc/log/LogAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/hmwebrtc/log/LogApi;->mLogAdapter:Lorg/hmwebrtc/log/LogAdapter;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lorg/hmwebrtc/log/LogApi;->mLogAdapter:Lorg/hmwebrtc/log/LogAdapter;

    .line 13
    .line 14
    return-object v0
.end method

.method public static getLevel()I
    .locals 1

    .line 1
    sget v0, Lorg/hmwebrtc/log/LogApi;->mCurrentLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public static getLevelString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "VER"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "INF"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "DBG"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "WAR"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "ERR"

    return-object p0

    :cond_4
    const-string p0, "NUL"

    return-object p0
.end method

.method public static getSinkCount()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/log/LogAdapter;->getSinkCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1, p0, p1}, Lorg/hmwebrtc/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static initializate(Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/hmwebrtc/log/LogAdapter;->initializate(Z)Z

    move-result p0

    return p0
.end method

.method public static initializate(ZJJ[Ljava/lang/String;)Z
    .locals 7

    .line 2
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    move-result-object v0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/hmwebrtc/log/LogAdapter;->initializate(ZJJ[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/hmwebrtc/log/LogAdapter;->addSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setLevel(I)V
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-gt p0, v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lorg/hmwebrtc/log/LogAdapter;->setLevel(I)V

    .line 11
    .line 12
    .line 13
    sput p0, Lorg/hmwebrtc/log/LogApi;->mCurrentLevel:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static terminate()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/log/LogAdapter;->terminate()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    sput v0, Lorg/hmwebrtc/log/LogApi;->mCurrentLevel:I

    .line 10
    .line 11
    return-void
.end method

.method public static unregisterAllSink()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/log/LogAdapter;->removeAll()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static unregisterSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/hmwebrtc/log/LogAdapter;->removeSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p0, p1}, Lorg/hmwebrtc/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogApi;->getAdapter()Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1, p0, p1}, Lorg/hmwebrtc/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
