.class public Lcom/byazt/di/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pk/c;
.implements Lcom/byazt/z/tt$ve;
.implements Lcom/byazt/g/c$c;
.implements Lcom/byazt/c/zb;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x159,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/di/c$c;,
        Lcom/byazt/di/c$tt;
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String; = "c"

.field public static volatile uj:Lcom/byazt/di/c;


# instance fields
.field public tt:J

.field public ve:Lcom/byazt/di/c$tt;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/byazt/z/tt;->c(Lcom/byazt/z/tt$ve;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/byazt/g/c;->c(Lcom/byazt/g/c$c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private c(Lcom/byazt/dd/tt;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 5

    .line 183
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    invoke-static {v0, p2}, Lcom/byazt/z/ve;->tt(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;)I

    move-result v0

    .line 185
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/byazt/hu/u;->tt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    if-eq v0, v1, :cond_1

    if-le v1, v0, :cond_0

    const/16 p1, 0xbc3

    return p1

    :cond_0
    const/16 p1, 0xbc2

    return p1

    .line 186
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "install_finish_check_ttmd5"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 187
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_ttdownloader_md5"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/byazt/ut/a;->getKVStore(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 190
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hu/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    :cond_2
    invoke-static {p3}, Lcom/byazt/hu/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/byazt/hu/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :try_start_0
    const-string p2, "ttmd5_status"

    .line 192
    invoke-virtual {p4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-nez p1, :cond_3

    const/16 p1, 0xbb8

    return p1

    :cond_3
    if-ne p1, v2, :cond_4

    const/16 p1, 0xbba

    return p1

    :cond_4
    const/16 p1, 0xbb9

    return p1
.end method

.method public static c()Lcom/byazt/di/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/di/c;->uj:Lcom/byazt/di/c;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/byazt/di/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/di/c;->uj:Lcom/byazt/di/c;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/byazt/di/c;

    invoke-direct {v1}, Lcom/byazt/di/c;-><init>()V

    sput-object v1, Lcom/byazt/di/c;->uj:Lcom/byazt/di/c;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/di/c;->uj:Lcom/byazt/di/c;

    return-object v0
.end method

.method private static c(Ljava/util/List;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/byazt/t/DownloadInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 102
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/t/DownloadInfo;

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 105
    :cond_2
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, p1}, Lcom/byazt/hu/u;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private c(Lcom/byazt/dd/tt;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 10

    .line 241
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 242
    :try_start_0
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v1

    const-string v2, "scene"

    .line 243
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result p3

    invoke-static {v0, p3}, Lcom/byazt/hu/a;->c(Lorg/json/JSONObject;I)V

    .line 245
    invoke-static {p1, v0}, Lcom/byazt/hu/a;->c(Lcom/byazt/dd/tt;Lorg/json/JSONObject;)V

    const-string p3, "is_update_download"

    .line 246
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->lt()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "install_after_back_app"

    .line 247
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->kk()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v0, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "clean_space_install_params"

    .line 248
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->lr()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_2

    :cond_2
    const-string v2, "2"

    :goto_2
    invoke-virtual {v0, p3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p3, 0x0

    if-eqz v1, :cond_5

    .line 249
    invoke-static {v0, v1}, Lcom/byazt/di/c;->c(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "uninstall_resume_count"

    .line 250
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getUninstallResumeCount()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->h()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_4

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->h()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-string v2, "install_time"

    .line 253
    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 254
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v2

    const-string v7, "check_install_finish_expired_duration"

    const-wide/32 v8, 0x5265c00

    invoke-virtual {v2, v7, v8, v9}, Lcom/byazt/k/c;->c(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "install_expired"

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 255
    :try_start_2
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 256
    :cond_3
    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    :catchall_0
    :cond_4
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string v5, "ah_attempt"

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/byazt/w/a;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 259
    invoke-static {v2}, Lcom/byazt/z/c;->c(Ljava/lang/String;)Lcom/byazt/z/c;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 260
    invoke-virtual {v2, v0}, Lcom/byazt/z/c;->c(Lorg/json/JSONObject;)V

    .line 261
    :cond_5
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/byazt/di/c;->c(Lcom/byazt/dd/tt;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result p1

    const-string p2, "fail_status"

    .line 262
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 p2, 0xbb8

    const-string v1, "hijack"

    if-ne p1, p2, :cond_6

    .line 263
    :try_start_4
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    const/16 p2, 0xbb9

    if-ne p1, p2, :cond_7

    .line 264
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    .line 265
    :cond_7
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 266
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;
    .locals 9

    if-eqz p0, :cond_10

    if-nez p1, :cond_0

    goto/16 :goto_c

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "download_event_opt"

    const/4 v2, 0x1

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    :try_start_0
    const-string v0, "download_id"

    .line 109
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "name"

    .line 110
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cur_bytes"

    .line 111
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "total_bytes"

    .line 112
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "network_quality"

    .line 113
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getNetworkQuality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-static {}, Lcom/byazt/hs/sl;->c()Lcom/byazt/hs/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hs/sl;->tt()Lcom/byazt/hs/t;

    move-result-object v0

    const-string v1, "current_network_quality"

    .line 115
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "only_wifi"

    .line 116
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isOnlyWifi()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "need_https_degrade"

    .line 117
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isNeedHttpsToHttpRetry()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "https_degrade_retry_used"

    .line 118
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isHttpsToHttpRetryUsed()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "chunk_count"

    .line 119
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "retry_count"

    .line 120
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getRetryCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "cur_retry_time"

    .line 121
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurRetryTime()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "need_retry_delay"

    .line 122
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isNeedRetryDelay()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "backup_url_used"

    .line 123
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isBackUpUrlUsed()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "head_connection_error_msg"

    .line 124
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getHeadConnectionException()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getHeadConnectionException()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    const-string v1, ""

    :goto_5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "need_independent_process"

    .line 125
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isNeedIndependentProcess()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "total_retry_count"

    .line 126
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalRetryCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "cur_retry_time_in_total"

    .line 127
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurRetryTimeInTotal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "real_download_time"

    .line 128
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getRealDownloadTime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "first_speed_time"

    .line 129
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getFirstSpeedTime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "all_connect_time"

    .line 130
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getAllConnectTime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "download_prepare_time"

    .line 131
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getDownloadPrepareTime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "download_time"

    .line 132
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getRealDownloadTime()J

    move-result-wide v4

    .line 133
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getAllConnectTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getDownloadPrepareTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 134
    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "chunk_downgrade_retry_used"

    .line 135
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isChunkDowngradeRetryUsed()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "need_chunk_downgrade_retry"

    .line 136
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isNeedChunkDowngradeRetry()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "failed_resume_count"

    .line 137
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getFailedResumeCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getPreconnectLevel()I

    move-result v0

    const-string v1, "preconnect_level"

    .line 139
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "md5"

    .line 140
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "expect_file_length"

    .line 141
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getExpectFileLength()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "retry_schedule_count"

    .line 142
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getRetryScheduleCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "rw_concurrent"

    .line 143
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isRwConcurrent()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_9

    :cond_b
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v4

    .line 145
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getRealDownloadTime()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v6

    if-lez v8, :cond_c

    cmpl-double v8, v4, v6

    if-lez v8, :cond_c

    div-double/2addr v0, v4

    :try_start_1
    const-string v4, "download_speed"

    .line 146
    invoke-virtual {p0, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :catch_0
    :try_start_2
    sget-object v4, Lcom/byazt/di/c;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download speed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "MB/s"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :cond_c
    :try_start_3
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/zz/Downloader;->isDownloadServiceForeground(I)Z

    move-result v0

    const-string v1, "is_download_service_foreground"

    if-eqz v0, :cond_d

    const/4 v3, 0x1

    .line 150
    :cond_d
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 151
    :try_start_4
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 152
    :goto_a
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "backup_url_count"

    .line 153
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "cur_backup_url_index"

    .line 154
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBackUpUrlIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_e
    const-string v0, "clear_space_restart_times"

    .line 155
    invoke-static {}, Lcom/byazt/ie/uj;->c()Lcom/byazt/ie/uj;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/byazt/ie/uj;->tt(Ljava/lang/String;)I

    move-result v1

    .line 156
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mime_type"

    .line 157
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_available"

    .line 158
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/w/a;->ve(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_b

    :cond_f
    const/4 v2, 0x2

    :goto_b
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "status_code"

    .line 159
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getHttpStatusCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    invoke-static {p0, p1}, Lcom/byazt/di/c;->tt(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception p1

    .line 161
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_10
    :goto_c
    return-object p0
.end method

.method private static c(Lcom/byazt/dd/tt;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/dd/tt;->hd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/byazt/dd/tt;->hd()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/byazt/dd/tt;->my()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v2

    .line 164
    invoke-virtual {p0, v1}, Lcom/byazt/dd/tt;->t(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V

    .line 166
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v2}, Lcom/byazt/di/c;->c(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "finish_reason"

    .line 167
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "finish_from_reserve_wifi"

    .line 168
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isDownloadFromReserveWifi()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 170
    :goto_2
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    move-result-object v0

    .line 171
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v4

    invoke-static {v1, v4}, Lcom/byazt/hu/a;->c(Lorg/json/JSONObject;I)V

    :try_start_1
    const-string v4, "download_failed_times"

    .line 172
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->gr()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "can_show_notification"

    .line 173
    invoke-static {}, Lcom/byazt/p/uj;->c()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x2

    :goto_3
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getExpectFileLength()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-lez v9, :cond_4

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    cmp-long v9, v4, v7

    if-lez v9, :cond_4

    .line 175
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getExpectFileLength()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v7

    sub-long/2addr v4, v7

    const-string v7, "file_length_gap"

    .line 176
    invoke-virtual {v1, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_4
    const-string v4, "ttmd5_status"

    .line 177
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTTMd5CheckStatus()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "has_send_download_failed_finally"

    .line 178
    iget-object v4, v0, Lcom/byazt/dd/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x2

    :goto_4
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "is_update_download"

    .line 179
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->lt()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x2

    :goto_5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    invoke-static {v0, v1}, Lcom/byazt/hu/a;->c(Lcom/byazt/dd/tt;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 181
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 182
    :goto_6
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    const-string v2, "download_finish"

    invoke-virtual {v0, v2, v1, p0}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/di/c;Ljava/util/concurrent/ConcurrentHashMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/di/c;->c(Ljava/util/concurrent/ConcurrentHashMap;I)V

    return-void
.end method

.method public static declared-synchronized c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/dd/tt;)V
    .locals 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/byazt/di/c;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p0

    const-string p1, "onDownloadFinish info null"

    invoke-virtual {p0, p1}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 10
    :try_start_1
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p0

    const-string p1, "onDownloadFinish nativeModel null"

    invoke-virtual {p0, p1}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit v0

    return-void

    .line 12
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->or()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/byazt/sd/x;->c()Lcom/byazt/sd/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/sd/x;->uj(Lcom/byazt/dd/tt;)V

    .line 15
    invoke-static {p0, p1}, Lcom/byazt/di/c;->ve(Lcom/byazt/t/DownloadInfo;Lcom/byazt/dd/tt;)Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Lcom/byazt/nn/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Lcom/byazt/nn/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/byazt/dd/tt;->a(J)V

    const/4 v3, 0x2

    .line 19
    invoke-virtual {p1, v3}, Lcom/byazt/dd/tt;->n(I)V

    .line 20
    invoke-virtual {p1, v10}, Lcom/byazt/dd/tt;->tt(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/byazt/nn/i;->c(Ljava/util/Collection;)V

    .line 23
    invoke-static {p1}, Lcom/byazt/di/c;->c(Lcom/byazt/dd/tt;)V

    .line 24
    invoke-static {}, Lcom/byazt/gq/sl;->c()Lcom/byazt/gq/sl;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->rl()Lcom/byazt/su/DownloadModel;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Lcom/byazt/gq/sl;->tt(Lcom/byazt/su/DownloadModel;Lcom/byazt/t/DownloadInfo;)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/byazt/dd/tt;->t(J)V

    .line 26
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object v1

    invoke-virtual {v1, p0, v10}, Lcom/byazt/di/x;->c(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    .line 27
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    invoke-static {p1}, Lcom/byazt/hu/n;->c(Lcom/byazt/dd/c;)Lcom/byazt/k/c;

    move-result-object v1

    const-string v3, "enable_app_install_receiver"

    invoke-virtual {v1, v3, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "enable_app_install_receiver"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 29
    invoke-static {}, Lcom/byazt/gq/u;->c()Lcom/byazt/gq/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/gq/u;->c(Lcom/byazt/dd/tt;)V

    .line 30
    :cond_3
    invoke-static {}, Lcom/byazt/di/c;->c()Lcom/byazt/di/c;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/byazt/di/c;->tt(Lcom/byazt/t/DownloadInfo;Lcom/byazt/dd/tt;)V

    .line 31
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->bx()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    invoke-static {}, Lcom/byazt/de/c;->c()Lcom/byazt/de/c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->t()J

    move-result-wide v8

    .line 33
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->uj()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v13

    .line 34
    invoke-virtual/range {v3 .. v13}, Lcom/byazt/de/c;->c(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->tt()J

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->uj()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :cond_5
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private c(Ljava/util/concurrent/ConcurrentHashMap;I)V
    .locals 9
    .param p1    # Ljava/util/concurrent/ConcurrentHashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/byazt/dd/tt;",
            ">;I)V"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 199
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/dd/tt;

    .line 200
    iget-object v4, v3, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const-string v5, "start_event_expire_hours"

    const/16 v6, 0xa8

    if-eqz v4, :cond_1

    .line 201
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->cu()J

    move-result-wide v7

    sub-long v7, v1, v7

    .line 202
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->my()I

    move-result v4

    invoke-static {v4}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v6, v7, v4

    if-ltz v6, :cond_0

    .line 203
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->or()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 205
    invoke-direct {p0, v3}, Lcom/byazt/di/c;->tt(Lcom/byazt/dd/tt;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 206
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->cu()J

    move-result-wide v7

    sub-long v7, v1, v7

    .line 207
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->my()I

    move-result v4

    invoke-static {v4}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v6, v7, v4

    if-ltz v6, :cond_0

    .line 208
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->or()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 210
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->kp()Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    invoke-static {v3}, Lcom/byazt/hu/u;->tt(Lcom/byazt/dd/tt;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_4

    .line 212
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->pf()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 213
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->pf()I

    move-result p2

    .line 214
    invoke-static {}, Lcom/byazt/gq/t;->qy()Lcom/byazt/ou/da;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 215
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->rl()Lcom/byazt/su/DownloadModel;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/byazt/ou/da;->c(Lcom/byazt/su/DownloadModel;)Z

    :cond_3
    const/4 v4, 0x0

    .line 216
    invoke-virtual {v3, v4}, Lcom/byazt/dd/tt;->da(Z)V

    .line 217
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->n()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/byazt/di/c;->c(Lcom/byazt/dd/tt;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 218
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/byazt/zn/c;->c(Lorg/json/JSONObject;Lcom/byazt/dd/tt;)V

    .line 219
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {v3}, Lcom/byazt/ie/uj;->c(Lcom/byazt/dd/tt;)V

    goto/16 :goto_0

    .line 221
    :cond_4
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->kp()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/byazt/dd/tt;->pf()I

    move-result v4

    if-ne v4, v5, :cond_5

    if-ne p2, v7, :cond_5

    invoke-static {v3}, Lcom/byazt/hu/u;->tt(Lcom/byazt/dd/tt;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 222
    invoke-static {}, Lcom/byazt/hu/t;->c()Lcom/byazt/hu/t;

    move-result-object v4

    sget-object v5, Lcom/byazt/di/c;->c:Ljava/lang/String;

    const-string v6, "trySendAndRefreshAdEvent"

    const-string v7, "\u547d\u4e2d\u515c\u5e95\u903b\u8f91,\u5c1d\u8bd5\u5bf9\u5e7f\u64ad\u76d1\u542c\u6267\u884c\u51b7\u542f\u515c\u5e95\u903b\u8f91"

    invoke-virtual {v4, v5, v6, v7}, Lcom/byazt/hu/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/byazt/di/i;->c()Lcom/byazt/di/i;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/byazt/di/i;->c(Lcom/byazt/dd/tt;)V

    goto/16 :goto_0

    .line 224
    :cond_5
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->cu()J

    move-result-wide v4

    sub-long v4, v1, v4

    .line 225
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->my()I

    move-result v7

    invoke-static {v7}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v7

    const-string v8, "finish_event_expire_hours"

    invoke-virtual {v7, v8, v6}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_6

    .line 226
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 227
    :cond_6
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 229
    :cond_7
    invoke-virtual {v3}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 230
    :cond_8
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/nn/a;->c(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/di/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private tt(Lcom/byazt/dd/tt;)I
    .locals 10

    .line 16
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "download_failed_finally_hours"

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_0

    return v4

    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 18
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->cu()J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-double v2, v2

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v5

    mul-double v0, v0, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v5

    const/4 v5, 0x1

    cmpg-double v6, v2, v0

    if-gez v6, :cond_1

    return v5

    .line 19
    :cond_1
    iget-object v0, p1, Lcom/byazt/dd/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    .line 20
    :cond_2
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return v4

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_9

    const/4 v3, -0x4

    if-ne v2, v3, :cond_4

    goto/16 :goto_1

    .line 22
    :cond_4
    invoke-static {v2}, Lcom/byazt/ev/DownloadStatus;->isDownloading(I)Z

    move-result v3

    if-eqz v3, :cond_5

    return v5

    .line 23
    :cond_5
    iget-object v3, p1, Lcom/byazt/dd/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 24
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 25
    invoke-static {v3, v0}, Lcom/byazt/di/c;->c(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;

    const-string v4, "download_status"

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fail_status"

    .line 27
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->eo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fail_msg"

    .line 28
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->zb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "download_failed_times"

    .line 29
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->gr()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_6

    const-string v2, "download_percent"

    .line 31
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_6
    const-string v0, "is_update_download"

    .line 32
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->lt()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->da()Ljava/lang/String;

    move-result-object v2

    const-string v4, "download_failed_finally"

    invoke-virtual {v0, v2, v4, v3, p1}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 34
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_8
    return v5

    :cond_9
    :goto_1
    return v4
.end method

.method private tt(Lcom/byazt/t/DownloadInfo;Lcom/byazt/z/c;)Lorg/json/JSONObject;
    .locals 3
    .param p1    # Lcom/byazt/t/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    invoke-virtual {p2, v1}, Lcom/byazt/z/c;->c(Lorg/json/JSONObject;)V

    :try_start_0
    const-string p2, "download_id"

    .line 39
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "name"

    .line 40
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 41
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    invoke-static {v1, p1}, Lcom/byazt/hu/a;->c(Lorg/json/JSONObject;I)V

    .line 43
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    const-string p2, "embeded_ad"

    const-string v2, "ah_result"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-object v1
.end method

.method public static tt(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;
    .locals 13

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "download_event_opt"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-wide/16 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Lcom/byazt/hu/u;->tt(J)J

    move-result-wide v2

    const-string v4, "available_space"

    long-to-double v5, v2

    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    div-double v9, v5, v7

    .line 4
    invoke-virtual {p0, v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v9

    const-string p1, "apk_size"

    long-to-double v11, v9

    div-double v7, v11, v7

    .line 6
    invoke-virtual {p0, p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    cmp-long p1, v9, v0

    if-lez p1, :cond_2

    const-string p1, "available_space_ratio"

    div-double/2addr v5, v11

    .line 7
    invoke-virtual {p0, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static ve(Lcom/byazt/t/DownloadInfo;Lcom/byazt/dd/tt;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/byazt/t/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/byazt/z/ve;->c()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "real_package_name"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "input_package_name"

    .line 10
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 12
    :goto_1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p0

    const-string v1, "embeded_ad"

    const-string v3, "package_name_error"

    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-object v2

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(I)V
    .locals 8

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 194
    iget-wide v2, p0, Lcom/byazt/di/c;->tt:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object v2

    new-instance v3, Lcom/byazt/di/c$c;

    invoke-direct {v3, p0, p1}, Lcom/byazt/di/c$c;-><init>(Lcom/byazt/di/c;I)V

    iget-wide v4, p0, Lcom/byazt/di/c;->tt:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    const-wide/16 v4, 0x7d0

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x1f40

    :goto_0
    invoke-virtual {v2, v3, v4, v5}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;J)V

    .line 196
    iput-wide v0, p0, Lcom/byazt/di/c;->tt:J

    return-void
.end method

.method public c(J)V
    .locals 5

    .line 79
    :try_start_0
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 80
    invoke-static {p1}, Lcom/byazt/hu/u;->tt(Lcom/byazt/dd/tt;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-static {}, Lcom/byazt/nn/uj;->c()Lcom/byazt/nn/uj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/nn/uj;->tt(Lcom/byazt/dd/tt;)Landroid/util/Pair;

    move-result-object p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 82
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/byazt/nn/uj$c;

    .line 83
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {}, Lcom/byazt/nn/uj;->c()Lcom/byazt/nn/uj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/nn/uj;->c(Lcom/byazt/dd/tt;)Lcom/byazt/nn/uj$c;

    move-result-object v1

    const/4 p2, -0x1

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 85
    :cond_2
    invoke-static {}, Lcom/byazt/nn/uj;->c()Lcom/byazt/nn/uj;

    move-result-object v2

    iget-object v3, v1, Lcom/byazt/nn/uj$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/byazt/nn/uj;->tt(Ljava/lang/String;)V

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "installed_app_name"

    .line 87
    iget-object v4, v1, Lcom/byazt/nn/uj$c;->uj:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "installed_pkg_name"

    .line 88
    iget-object v1, v1, Lcom/byazt/nn/uj$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eq p2, v0, :cond_3

    const-string v0, "error_code"

    .line 89
    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result p2

    invoke-static {v2, p2}, Lcom/byazt/hu/a;->c(Lorg/json/JSONObject;I)V

    .line 91
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p2

    const-string v0, "install_finish_hijack"

    invoke-virtual {p2, v0, v2, p1}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void

    .line 92
    :cond_3
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p2

    const-string v0, "install_finish_may_hijack"

    invoke-virtual {p2, v0, v2, p1}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 93
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p2

    const-string v0, "trySendInstallFinishHijack"

    invoke-virtual {p2, p1, v0}, Lcom/byazt/dm/ve;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public c(JI)V
    .locals 4

    .line 75
    invoke-static {p3}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p3

    const-string v0, "check_install_finish_hijack_delay_time"

    const-wide/32 v1, 0xdbba0

    .line 76
    invoke-virtual {p3, v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    return-void

    :cond_0
    const-wide/32 v2, 0x493e0

    .line 77
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 78
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object p3

    new-instance v2, Lcom/byazt/di/c$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/byazt/di/c$2;-><init>(Lcom/byazt/di/c;J)V

    invoke-virtual {p3, v2, v0, v1}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;JJJJJZ)V
    .locals 10

    move-object v0, p1

    move-wide v1, p2

    .line 267
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    move-result-object v3

    if-nez v3, :cond_0

    .line 268
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object v0

    const-string v1, "trySendClearSpaceEvent nativeModel null"

    invoke-virtual {v0, v1}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return-void

    .line 269
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "space_before"

    long-to-double v6, v1

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double/2addr v6, v8

    .line 270
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "space_cleaned"

    sub-long v1, p4, v1

    long-to-double v1, v1

    div-double/2addr v1, v8

    .line 271
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clean_up_time_cost"

    .line 272
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_download_restarted"

    if-eqz p12, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 273
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "byte_required"

    .line 274
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "byte_required_after"

    sub-long v5, p6, p4

    long-to-double v5, v5

    div-double/2addr v5, v8

    .line 275
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clear_sleep_time"

    .line 276
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    invoke-static {p1, v4}, Lcom/byazt/hu/a;->ve(Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)V

    .line 278
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    const-string v1, "cleanup"

    invoke-virtual {v0, v1, v4, v3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 279
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/dd/tt;I)V
    .locals 11

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/di/c;->uj()V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 67
    invoke-virtual {p2, v4, v5}, Lcom/byazt/dd/tt;->tt(J)V

    .line 68
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/byazt/hu/u;->c(Ljava/io/File;J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/byazt/dd/tt;->sp(J)V

    const/16 v0, 0x7d0

    if-eq p3, v0, :cond_1

    const-wide/16 v0, 0x7d0

    :goto_0
    move-wide v8, v0

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "check_install_failed_delay_time"

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/k/c;->c(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    return-void

    :cond_2
    const-wide/16 v2, 0x7530

    .line 70
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 71
    :goto_1
    new-instance v10, Lcom/byazt/di/c$tt;

    invoke-virtual {p2}, Lcom/byazt/dd/tt;->tt()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v3

    const/4 v7, 0x0

    move-object v0, v10

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/byazt/di/c$tt;-><init>(JIJILcom/byazt/di/c$1;)V

    .line 72
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object p1

    invoke-virtual {p1, v10, v8, v9}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;J)V

    .line 73
    iput-object v10, p0, Lcom/byazt/di/c;->ve:Lcom/byazt/di/c$tt;

    .line 74
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/z/c;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "ah_report_config"

    .line 232
    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->n(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 233
    iget v1, p2, Lcom/byazt/z/c;->tt:I

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/byazt/di/c;->tt(Lcom/byazt/t/DownloadInfo;Lcom/byazt/z/c;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "ah_ext_json"

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/byazt/t/DownloadInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 237
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "info is null"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return-void

    .line 238
    :cond_0
    invoke-static {p1}, Lcom/byazt/k/c;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/k/c;

    move-result-object p2

    const-string v0, "check_applink_mode"

    invoke-virtual {p2, v0}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    .line 239
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    const-string v0, "ah_ext_json"

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 240
    invoke-static {}, Lcom/byazt/us/n;->c()Lcom/byazt/us/n;

    move-result-object v0

    new-instance v1, Lcom/byazt/di/c$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/di/c$4;-><init>(Lcom/byazt/di/c;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/byazt/us/n;->tt(Lcom/byazt/us/uj;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 38
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/byazt/hu/u;->tt()Z

    move-result v0

    if-nez v0, :cond_7

    .line 40
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/a;->c(Ljava/lang/String;)Lcom/byazt/dd/tt;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lcom/byazt/nn/uj;->c()Lcom/byazt/nn/uj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/uj;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/byazt/dd/tt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/di/x;->c(Ljava/lang/String;)Lcom/byazt/gq/n;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {v1}, Lcom/byazt/gq/n;->a()V

    .line 45
    :cond_2
    iget-object v1, v0, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 46
    monitor-exit p0

    return-void

    .line 47
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->my()I

    move-result v1

    invoke-static {v1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 48
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object v1

    invoke-virtual {v0}, Lcom/byazt/dd/tt;->my()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/byazt/n/tt;->a(I)V

    .line 49
    :cond_4
    new-instance v1, Lcom/byazt/us/tt;

    invoke-direct {v1}, Lcom/byazt/us/tt;-><init>()V

    .line 50
    invoke-static {v0}, Lcom/byazt/hu/n;->c(Lcom/byazt/dd/c;)Lcom/byazt/k/c;

    move-result-object v3

    const-string v4, "try_applink_delay_after_installed"

    const/4 v5, 0x0

    .line 51
    invoke-virtual {v3, v4, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v3

    .line 52
    new-instance v4, Lcom/byazt/di/c$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/byazt/di/c$1;-><init>(Lcom/byazt/di/c;Lcom/byazt/dd/tt;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4, v3}, Lcom/byazt/us/tt;->c(Lcom/byazt/dd/tt;Lcom/byazt/us/sp;I)V

    .line 53
    invoke-static {}, Lcom/byazt/sd/x;->c()Lcom/byazt/sd/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/sd/x;->a(Lcom/byazt/dd/tt;)V

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/byazt/di/c;->c(Ljava/lang/String;Lcom/byazt/dd/tt;)V

    .line 55
    invoke-static {}, Lcom/byazt/de/c;->c()Lcom/byazt/de/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/de/c;->tt(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Lcom/byazt/zz/Downloader;->getSuccessedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-static {v0, p1}, Lcom/byazt/di/c;->c(Ljava/util/List;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 58
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v1

    const-string v3, "no_hide_notification"

    invoke-virtual {v1, v3}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 59
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object v1

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/n/tt;->c(I)V

    .line 60
    :cond_5
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/byazt/di/x;->tt(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lcom/byazt/ie/uj;->c(Lcom/byazt/t/DownloadInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 62
    :cond_6
    :try_start_4
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/byazt/di/x;->tt(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 64
    :cond_7
    :try_start_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "handleAppInstalled in main thread."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;Lcom/byazt/dd/tt;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-static {p2}, Lcom/byazt/hu/u;->tt(Lcom/byazt/dd/tt;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 95
    :cond_1
    iget-object v0, p2, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->pf()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 97
    invoke-static {}, Lcom/byazt/gq/t;->qy()Lcom/byazt/ou/da;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->rl()Lcom/byazt/su/DownloadModel;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/byazt/ou/da;->c(Lcom/byazt/su/DownloadModel;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    .line 99
    :cond_3
    :goto_0
    invoke-direct {p0, p2, p1, v1}, Lcom/byazt/di/c;->c(Lcom/byazt/dd/tt;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 100
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    invoke-virtual {p2}, Lcom/byazt/dd/tt;->da()Ljava/lang/String;

    move-result-object v1

    const-string v2, "install_finish"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 101
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V

    :cond_4
    return-void
.end method

.method public tt()V
    .locals 2

    .line 13
    sget-object v0, Lcom/byazt/di/c;->c:Ljava/lang/String;

    const-string v1, "onAppForeground()"

    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/byazt/di/c;->uj()V

    const/4 v0, 0x5

    .line 15
    invoke-virtual {p0, v0}, Lcom/byazt/di/c;->c(I)V

    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;Lcom/byazt/dd/tt;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "install_finish_check_ttmd5"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object v0

    new-instance v1, Lcom/byazt/di/c$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/di/c$3;-><init>(Lcom/byazt/di/c;Ljava/lang/String;Lcom/byazt/dd/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/di/n;->tt(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized uj()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/di/c;->ve:Lcom/byazt/di/c$tt;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/di/c$tt;->c(Lcom/byazt/di/c$tt;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/byazt/di/c;->ve:Lcom/byazt/di/c$tt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public ve()V
    .locals 2

    .line 14
    sget-object v0, Lcom/byazt/di/c;->c:Ljava/lang/String;

    const-string v1, "onAppBackground()"

    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 15
    invoke-virtual {p0, v0}, Lcom/byazt/di/c;->c(I)V

    return-void
.end method
