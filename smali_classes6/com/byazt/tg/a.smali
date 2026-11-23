.class public Lcom/byazt/tg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/tg/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7a4,
        0x22
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/de/uj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(I)I
    .locals 2

    .line 16
    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p1

    const-string v0, "pause_optimise_download_percent"

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static c()Lcom/byazt/de/uj;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/tg/a;->c:Lcom/byazt/de/uj;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/de/uj;)Lcom/byazt/de/uj;
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/tg/a;->c:Lcom/byazt/de/uj;

    return-object p0
.end method

.method private c(Lcom/byazt/dd/c;)Z
    .locals 3

    .line 17
    invoke-static {p1}, Lcom/byazt/hu/n;->c(Lcom/byazt/dd/c;)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "pause_optimise_download_percent_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 18
    invoke-interface {p1}, Lcom/byazt/dd/c;->nu()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2
.end method


# virtual methods
.method public c(Lcom/byazt/dd/tt;ILcom/byazt/tg/x;)Z
    .locals 9

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return p2

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/tg/a;->c(Lcom/byazt/dd/c;)Z

    move-result v0

    if-nez v0, :cond_2

    return p2

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->oz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 6
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->oz()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/di/da;->c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/di/da;->tt(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    return p2

    .line 8
    :cond_4
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    .line 9
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_6

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    .line 10
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    const-wide/16 v6, 0x64

    mul-long v2, v2, v6

    div-long/2addr v2, v4

    long-to-int v3, v2

    invoke-static {v0, v3}, Lcom/byazt/gq/da;->c(II)I

    move-result v0

    .line 11
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/byazt/tg/a;->c(I)I

    move-result v2

    if-le v0, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 12
    new-instance v2, Lcom/byazt/tg/a$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/byazt/tg/a$1;-><init>(Lcom/byazt/tg/a;Lcom/byazt/dd/tt;Lcom/byazt/tg/x;)V

    sput-object v2, Lcom/byazt/tg/a;->c:Lcom/byazt/de/uj;

    new-array p3, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p2

    const-string p2, "\u5df2\u4e0b\u8f7d%s%%\uff0c\u5373\u5c06\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "\u7ee7\u7eed"

    const-string v0, "\u6682\u505c"

    .line 14
    invoke-static {p1, p2, p3, v0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->tt(Lcom/byazt/dd/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v1}, Lcom/byazt/dd/tt;->z(Z)V

    return v1

    :cond_6
    return p2
.end method
