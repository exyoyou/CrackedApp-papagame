.class public interface abstract Lcom/join/kotlin/base/impl/GInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/base/impl/GameType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/base/impl/GInfo$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016J\u0008\u0010\u0011\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0016J\u0008\u0010\u0018\u001a\u00020\rH\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001eH&J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0003H&J\n\u0010#\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010$\u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0003H&J\n\u0010%\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010&\u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0003H&J\n\u0010\'\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010(\u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0003H&J\n\u0010)\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010*\u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0003H&\u00a8\u0006+"
    }
    d2 = {
        "Lcom/join/kotlin/base/impl/GInfo;",
        "Lcom/join/kotlin/base/impl/GameType;",
        "getModGameId",
        "",
        "getGameId",
        "getIcon",
        "getPackageName",
        "getVersionCode",
        "",
        "getDownStatus",
        "getPayTagInfo",
        "Lcom/join/mgps/dto/PayTagInfo;",
        "needPurchase",
        "",
        "needUpdate",
        "vCode",
        "getGameBook",
        "getBespeakSwitch",
        "getPluginNum",
        "getSpTagInfo",
        "Lcom/join/mgps/dto/TipNew;",
        "getTagInfo",
        "",
        "Lcom/join/mgps/dto/TipBean;",
        "isNetGame",
        "getDownArgs",
        "Lcom/join/mgps/dto/DownloadGameArgsBean;",
        "getIntentDataBean",
        "Lcom/join/mgps/Util/IntentDateBean;",
        "buildDownloadTask",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "getExt",
        "setExt",
        "",
        "str",
        "getExt1",
        "setExt1",
        "getExt2",
        "setExt2",
        "getExt3",
        "setExt3",
        "getExt4",
        "setExt4",
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


# virtual methods
.method public abstract buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getBespeakSwitch()I
.end method

.method public abstract getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDownStatus()I
.end method

.method public abstract getExt()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getExt1()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getExt2()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getExt3()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getExt4()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getGameBook()I
.end method

.method public abstract getGameId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getIcon()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getModGameId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPackageName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPayTagInfo()Lcom/join/mgps/dto/PayTagInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPluginNum()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSpTagInfo()Lcom/join/mgps/dto/TipNew;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTagInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract isNetGame()Z
.end method

.method public abstract needPurchase()Z
.end method

.method public abstract needUpdate(I)Z
.end method

.method public abstract setExt(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setExt1(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setExt2(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setExt3(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setExt4(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
