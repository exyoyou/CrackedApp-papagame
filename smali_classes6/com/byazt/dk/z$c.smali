.class public Lcom/byazt/dk/z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ou/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x4b5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dk/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/dk/z$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/dk/z$c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/su/DownloadModel;)Z
    .locals 1

    .line 3
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/dk/uj;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/byazt/su/DownloadModel;Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/byazt/dk/uj;->c(Lcom/byazt/su/DownloadModel;Lcom/byazt/t/DownloadInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tt(Lcom/byazt/su/DownloadModel;Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/byazt/dk/uj;->tt(Lcom/byazt/su/DownloadModel;Lcom/byazt/t/DownloadInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method
