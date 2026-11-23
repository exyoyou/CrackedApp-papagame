.class public Lcom/byazt/gq/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x85
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/de/uj;

.field public static tt:Lcom/byazt/de/ve;


# direct methods
.method public static c()Lcom/byazt/de/uj;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/gq/z;->c:Lcom/byazt/de/uj;

    return-object v0
.end method

.method public static c(Lcom/byazt/de/uj;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/byazt/gq/z;->c:Lcom/byazt/de/uj;

    return-void
.end method

.method public static c(Lcom/byazt/de/ve;)V
    .locals 0

    .line 4
    sput-object p0, Lcom/byazt/gq/z;->tt:Lcom/byazt/de/ve;

    return-void
.end method

.method public static c(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static c(Lcom/byazt/dd/tt;Lcom/byazt/t/DownloadInfo;ILcom/byazt/tg/x;ZLcom/byazt/de/ve;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p0

    const-string p1, "tryReverseWifi nativeModel null"

    invoke-virtual {p0, p1}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p0

    const-string p1, "tryReverseWifi info null"

    invoke-virtual {p0, p1}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return v0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    if-eqz p4, :cond_2

    .line 8
    invoke-static {p0}, Lcom/byazt/hu/n;->ve(Lcom/byazt/dd/c;)Z

    move-result v2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/byazt/hu/n;->tt(Lcom/byazt/dd/c;)Z

    move-result v2

    .line 10
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "switch_status"

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 11
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 12
    invoke-static {v5}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p4, :cond_4

    .line 13
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v5

    const-string v6, "cancel_pause_reserve_wifi_switch_status"

    invoke-virtual {v5, v6, v3, p0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    goto :goto_3

    .line 14
    :cond_4
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v5

    const-string v6, "pause_reserve_wifi_switch_status"

    invoke-virtual {v5, v6, v3, p0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    :goto_3
    if-nez v2, :cond_5

    return v0

    .line 15
    :cond_5
    invoke-static {p2}, Lcom/byazt/gq/z;->c(I)Z

    move-result p2

    if-nez p2, :cond_6

    return v0

    .line 16
    :cond_6
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/w/a;->tt(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    return v0

    :cond_7
    if-nez p4, :cond_9

    .line 17
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->hasPauseReservedOnWifi()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    return v0

    .line 18
    :cond_9
    :goto_4
    new-instance p1, Lcom/byazt/gq/z$1;

    invoke-direct {p1, v1, p4, p0, p3}, Lcom/byazt/gq/z$1;-><init>(IZLcom/byazt/dd/tt;Lcom/byazt/tg/x;)V

    .line 19
    invoke-static {p1}, Lcom/byazt/gq/z;->c(Lcom/byazt/de/uj;)V

    if-eqz p4, :cond_a

    if-eqz p5, :cond_a

    .line 20
    new-instance p1, Lcom/byazt/gq/z$2;

    invoke-direct {p1, p0, p5}, Lcom/byazt/gq/z$2;-><init>(Lcom/byazt/dd/tt;Lcom/byazt/de/ve;)V

    invoke-static {p1}, Lcom/byazt/gq/z;->c(Lcom/byazt/de/ve;)V

    :cond_a
    if-eqz p4, :cond_b

    const-string p1, "\u5220\u9664"

    .line 21
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/byazt/dd/c;Ljava/lang/String;)V

    goto :goto_5

    .line 22
    :cond_b
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->tt(Lcom/byazt/dd/c;)V

    :goto_5
    return v4
.end method

.method public static tt()Lcom/byazt/de/ve;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/gq/z;->tt:Lcom/byazt/de/ve;

    .line 2
    .line 3
    return-object v0
.end method
