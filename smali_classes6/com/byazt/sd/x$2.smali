.class public Lcom/byazt/sd/x$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d6,
        0x3b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sd/x;->ve(Lcom/byazt/dd/tt;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/dd/tt;

.field public final synthetic ve:Lcom/byazt/sd/x;


# direct methods
.method public constructor <init>(Lcom/byazt/sd/x;ILcom/byazt/dd/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sd/x$2;->ve:Lcom/byazt/sd/x;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/sd/x$2;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/sd/x$2;->tt:Lcom/byazt/dd/tt;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/byazt/sd/x$2;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "ttdownloader_type"

    .line 26
    .line 27
    invoke-static {v1, v3, v2}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/byazt/hu/a;->ve(Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/sd/x$2;->tt:Lcom/byazt/dd/tt;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/byazt/hu/u;->tt(Lcom/byazt/dd/tt;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const/16 v0, 0x3ea

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "error_code"

    .line 48
    .line 49
    invoke-static {v1, v2, v0}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/byazt/sd/x$2;->ve:Lcom/byazt/sd/x;

    .line 54
    .line 55
    iget v2, p0, Lcom/byazt/sd/x$2;->c:I

    .line 56
    .line 57
    iget-object v3, p0, Lcom/byazt/sd/x$2;->tt:Lcom/byazt/dd/tt;

    .line 58
    .line 59
    invoke-static {v0, v2, v3, v1}, Lcom/byazt/sd/x;->c(Lcom/byazt/sd/x;ILcom/byazt/dd/tt;Lorg/json/JSONObject;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "download_notification_try_show"

    .line 67
    .line 68
    iget-object v3, p0, Lcom/byazt/sd/x$2;->tt:Lcom/byazt/dd/tt;

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1, v3}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
