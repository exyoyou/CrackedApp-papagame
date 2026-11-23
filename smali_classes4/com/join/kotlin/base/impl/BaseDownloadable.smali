.class public abstract Lcom/join/kotlin/base/impl/BaseDownloadable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/base/impl/Downloadable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011H\u0016J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016J\u0008\u0010\u001a\u001a\u00020\u0011H\u0016J\u0008\u0010\u001b\u001a\u00020\u0011H\u0016J\u0008\u0010\u001c\u001a\u00020\u0011H\u0016J\u0008\u0010\u001d\u001a\u00020\u0011H\u0016J\u0008\u0010\u001e\u001a\u00020\u0011H\u0016J\u0008\u0010\u001f\u001a\u00020\u0011H\u0016J\u0008\u0010 \u001a\u00020\u0011H\u0016J\u0008\u0010!\u001a\u00020\u0011H\u0016J\u0008\u0010\"\u001a\u00020\u0011H\u0016J\u0008\u0010#\u001a\u00020\u0011H\u0016J\u0008\u0010$\u001a\u00020\u0011H\u0016J\u0008\u0010%\u001a\u00020\u0011H\u0016J\u0008\u0010&\u001a\u00020\u0011H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/join/kotlin/base/impl/BaseDownloadable;",
        "Lcom/join/kotlin/base/impl/Downloadable;",
        "<init>",
        "()V",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "extBean$delegate",
        "Lkotlin/Lazy;",
        "downloadTask",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "getDownloadTask",
        "()Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "setDownloadTask",
        "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V",
        "exposure",
        "",
        "getExposure",
        "()Z",
        "setExposure",
        "(Z)V",
        "update",
        "",
        "notify",
        "hasGInfo",
        "isModGameVm",
        "isSingleGameVm",
        "isNetGameVm",
        "isNetGame",
        "isMiniGame",
        "is64Bit",
        "isBtGame",
        "isGameVm",
        "isGame",
        "isH5Game",
        "isHmCloud",
        "isCpsGame",
        "isAndroidGame",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private exposure:Z

.field private final extBean$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv5/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lv5/a;-><init>(Lcom/join/kotlin/base/impl/BaseDownloadable;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/base/impl/BaseDownloadable;->extBean$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/base/impl/BaseDownloadable;)Lcom/join/mgps/dto/ExtBean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->extBean_delegate$lambda$0(Lcom/join/kotlin/base/impl/BaseDownloadable;)Lcom/join/mgps/dto/ExtBean;

    move-result-object p0

    return-object p0
.end method

.method private static final extBean_delegate$lambda$0(Lcom/join/kotlin/base/impl/BaseDownloadable;)Lcom/join/mgps/dto/ExtBean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/dto/ExtBean;->game(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/impl/BaseDownloadable;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/base/impl/BaseDownloadable;->exposure:Z

    .line 2
    .line 3
    return v0
.end method

.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/impl/BaseDownloadable;->extBean$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    return-object v0
.end method

.method public getGInfo()Lcom/join/kotlin/base/impl/GInfo;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/Downloadable$DefaultImpls;->getGInfo(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/join/kotlin/base/impl/GInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public hasGInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public is64Bit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAndroidGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBtGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCpsGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGameVm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isH5Game()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isH5VmGame()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/Downloadable$DefaultImpls;->isH5VmGame(Lcom/join/kotlin/base/impl/Downloadable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isHmCloud()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMiniGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isModGameVm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNetGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNetGameVm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSingleGameVm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/impl/BaseDownloadable;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-void
.end method

.method public setExposure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/base/impl/BaseDownloadable;->exposure:Z

    .line 2
    .line 3
    return-void
.end method

.method public update(Z)V
    .locals 0

    return-void
.end method
