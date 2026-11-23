.class public Lcom/byazt/tg/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/tg/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7a4,
        0x2e
    }
.end annotation


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


# virtual methods
.method public c(Lcom/byazt/dd/tt;ILcom/byazt/tg/x;Lcom/byazt/de/ve;)Z
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->oz()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->oz()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/di/da;->c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/t/DownloadInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->c()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/byazt/di/da;->tt(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    move-object v2, v0

    .line 51
    const/4 v5, 0x1

    .line 52
    move-object v1, p1

    .line 53
    move v3, p2

    .line 54
    move-object v4, p3

    .line 55
    move-object v6, p4

    .line 56
    invoke-static/range {v1 .. v6}, Lcom/byazt/gq/z;->c(Lcom/byazt/dd/tt;Lcom/byazt/t/DownloadInfo;ILcom/byazt/tg/x;ZLcom/byazt/de/ve;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method
