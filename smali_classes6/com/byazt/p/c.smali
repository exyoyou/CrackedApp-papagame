.class public Lcom/byazt/p/c;
.super Lcom/byazt/n/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15e,
        0x14
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public final tt:Landroid/content/Context;

.field public uj:Ljava/lang/String;

.field public final ve:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/byazt/n/c;-><init>(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/byazt/p/c;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/byazt/p/c;->uj:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/byazt/p/c;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/byazt/p/c;->tt:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/byazt/p/c;->ve:Landroid/content/res/Resources;

    .line 21
    .line 22
    return-void
.end method

.method private c(Lcom/byazt/s/ve;Lcom/byazt/m/BaseException;Z)Landroid/app/Notification;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/n/c;->n()I

    move-result v2

    .line 11
    invoke-static {v2}, Lcom/byazt/z/ve;->c(I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 12
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "click_type"

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/n/c;->c()I

    move-result v5

    const-string v6, "click_download_id"

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v5}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v6

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/n/c;->tt()J

    move-result-wide v7

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/n/c;->ve()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v14, v9, v11

    if-lez v14, :cond_1

    const-wide/16 v11, 0x64

    mul-long v11, v11, v7

    .line 19
    div-long/2addr v11, v9

    long-to-int v12, v11

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 20
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/n/c;->uj()Ljava/lang/String;

    move-result-object v11

    const-string v14, "notification_opt_2"

    .line 21
    invoke-virtual {v6, v14}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v15

    .line 22
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    if-eq v15, v13, :cond_2

    const-string v14, "action_click_btn"

    const-string v13, "android.ss.intent.action.DOWNLOAD_CLICK_BTN"

    .line 23
    invoke-interface {v4, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v13, "enable_notification_ui"

    .line 24
    invoke-virtual {v6, v13}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v14

    .line 25
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "show_title"

    .line 26
    invoke-interface {v4, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "percent"

    .line 27
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "indeterminate"

    .line 28
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v4, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "notification_type"

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/z/uj;->da()Ljava/lang/String;

    move-result-object v1

    .line 31
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 32
    iget-object v1, v0, Lcom/byazt/p/c;->tt:Landroid/content/Context;

    invoke-static {v1}, Lcom/byazt/z/ve;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v12, "channel_id"

    .line 33
    invoke-interface {v4, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v12, "download_status"

    invoke-interface {v4, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/n/c;->a()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v13, "first_time"

    invoke-interface {v4, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x18

    if-lt v11, v1, :cond_4

    const-string v1, "set_notification_group"

    const/4 v13, 0x0

    .line 36
    invoke-virtual {v6, v1, v13}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v1

    const/4 v13, 0x1

    if-ne v1, v13, :cond_4

    const-string v1, "notification_group"

    const-string v13, "com.ss.android.socialbase.APP_DOWNLOADER"

    .line 37
    invoke-interface {v4, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 v1, 0x1f

    if-lt v11, v1, :cond_5

    .line 38
    invoke-static {v5}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v1

    const-string v11, "enable_target_34"

    invoke-virtual {v1, v11}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const-string v11, "csj_enable_target_34"

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v14, :cond_6

    .line 40
    invoke-static {}, Lcom/byazt/p/ve;->c()Lcom/byazt/p/ve;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/byazt/p/ve;->c(I)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v11, "bitmap"

    .line 41
    invoke-interface {v4, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "is_bind_app"

    const-string v13, "/"

    const-string v11, "download_size"

    move/from16 v18, v2

    const/4 v2, 0x1

    if-eq v3, v2, :cond_1b

    const/4 v2, 0x4

    if-ne v3, v2, :cond_7

    goto/16 :goto_9

    :cond_7
    const/4 v2, 0x2

    if-ne v3, v2, :cond_a

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Lcom/byazt/z/ve;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {v9, v10}, Lcom/byazt/z/ve;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne v15, v2, :cond_8

    const-string v2, "noti_progress_show_th"

    const/16 v5, 0x46

    .line 45
    invoke-virtual {v6, v2, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "progress_70"

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_8
    iget-object v2, v0, Lcom/byazt/p/c;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/byazt/z/ve;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, v0, Lcom/byazt/p/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/byazt/z/ve;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x2

    if-lt v14, v1, :cond_9

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v7, v8, v2}, Lcom/byazt/z/ve;->c(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {v9, v10, v2}, Lcom/byazt/z/ve;->c(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-interface {v4, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v21, v6

    const/4 v2, 0x0

    move/from16 v23, v3

    move-object v3, v0

    move/from16 v0, v23

    goto/16 :goto_a

    :cond_a
    const/4 v1, 0x3

    if-ne v3, v1, :cond_1a

    .line 52
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v1

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/n/c;->n()I

    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "is_wait_wifi_and_in_net"

    const-string v15, "is_insufficient_space_error"

    move/from16 v19, v3

    const-string v3, "is_network_error"

    move-object/from16 v20, v12

    const/4 v12, -0x1

    if-eq v2, v12, :cond_11

    const/4 v12, -0x4

    if-ne v2, v12, :cond_b

    goto/16 :goto_4

    :cond_b
    const/4 v12, -0x3

    if-ne v2, v12, :cond_10

    .line 55
    invoke-static {v9, v10}, Lcom/byazt/z/ve;->c(J)Ljava/lang/String;

    move-result-object v12

    .line 56
    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_c

    .line 57
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v6

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_2

    :cond_c
    move-object/from16 v21, v6

    :cond_d
    const/4 v6, 0x0

    :goto_2
    const-string v12, "is_mime_apk"

    .line 58
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v6, v0, Lcom/byazt/p/c;->tt:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v6, v1, v12}, Lcom/byazt/z/ve;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Z)Z

    move-result v6

    const-string v12, "is_apk_installed"

    .line 60
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/byazt/zz/uj;->c()Lcom/byazt/zz/uj;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/byazt/zz/uj;->u(I)Lcom/byazt/c/eo;

    move-result-object v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_3

    :cond_e
    const/4 v5, 0x0

    .line 62
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "is_have_notification_click_callback"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p2

    move-object/from16 v22, v11

    :cond_f
    move-object/from16 v11, v20

    goto/16 :goto_7

    :cond_10
    move-object/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v11, v20

    move-object/from16 v6, p2

    goto/16 :goto_7

    :cond_11
    :goto_4
    move-object/from16 v21, v6

    .line 63
    invoke-static/range {p2 .. p2}, Lcom/byazt/w/a;->i(Ljava/lang/Throwable;)Z

    move-result v5

    .line 64
    invoke-static/range {p2 .. p2}, Lcom/byazt/w/a;->x(Ljava/lang/Throwable;)Z

    move-result v6

    .line 65
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v4, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v4, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x2

    if-lt v14, v12, :cond_13

    const/4 v12, -0x1

    if-ne v2, v12, :cond_13

    if-nez v5, :cond_12

    if-eqz v6, :cond_13

    .line 67
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Lcom/byazt/z/ve;->c(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {v9, v10}, Lcom/byazt/z/ve;->c(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-interface {v4, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    move-object/from16 v6, p2

    if-eqz v6, :cond_14

    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v12

    move-object/from16 v22, v11

    const/16 v11, 0x3ee

    if-ne v12, v11, :cond_15

    const-string v11, "is_error_code_insufficient_space_error"

    .line 71
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_14
    move-object/from16 v22, v11

    :cond_15
    move-object/from16 v11, v21

    .line 72
    invoke-direct {v0, v6, v11, v1}, Lcom/byazt/p/c;->c(Lcom/byazt/m/BaseException;Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;)Z

    move-result v12

    if-eqz v12, :cond_17

    const-string v12, "is_need_show_wait_net_text"

    move-object/from16 v21, v11

    .line 73
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_16

    .line 74
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->isOnlyWifi()Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v11, 0x1

    goto :goto_5

    :cond_16
    const/4 v11, 0x0

    :goto_5
    const-string v12, "is_wait_wifi"

    .line 75
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_17
    move-object/from16 v21, v11

    :goto_6
    const/4 v11, 0x2

    if-lt v14, v11, :cond_f

    const/4 v11, -0x1

    if-ne v2, v11, :cond_f

    if-eqz v5, :cond_f

    .line 76
    invoke-static {v6, v1}, Lcom/byazt/w/a;->tt(Lcom/byazt/m/BaseException;Lcom/byazt/t/DownloadInfo;)Z

    move-result v5

    .line 77
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v11, v20

    invoke-interface {v4, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/byazt/w/a;->i(Ljava/lang/Throwable;)Z

    move-result v5

    .line 79
    invoke-static/range {p2 .. p2}, Lcom/byazt/w/a;->x(Ljava/lang/Throwable;)Z

    move-result v12

    .line 80
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    if-lt v14, v0, :cond_19

    const/4 v0, -0x1

    if-ne v2, v0, :cond_19

    if-nez v5, :cond_18

    if-eqz v12, :cond_19

    .line 82
    :cond_18
    invoke-static {v6, v1}, Lcom/byazt/w/a;->tt(Lcom/byazt/m/BaseException;Lcom/byazt/t/DownloadInfo;)Z

    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_19

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v7, v8, v2}, Lcom/byazt/z/ve;->c(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v9, v10, v2}, Lcom/byazt/z/ve;->c(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v22

    .line 86
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_19
    const/4 v2, 0x0

    :goto_8
    move-object/from16 v3, p0

    move/from16 v0, v19

    goto :goto_a

    :cond_1a
    move-object/from16 v21, v6

    const/4 v2, 0x0

    move v0, v3

    move-object/from16 v3, p0

    goto :goto_a

    :cond_1b
    :goto_9
    move/from16 v19, v3

    move-object/from16 v21, v6

    move-object v3, v11

    const/4 v2, 0x0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Lcom/byazt/z/ve;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v9, v10}, Lcom/byazt/z/ve;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, v19

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/n/c;->n()I

    move-result v3

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    move-object/from16 v3, p0

    .line 92
    iget-object v5, v3, Lcom/byazt/p/c;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/byazt/z/ve;->c(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    const-string v1, "android.ss.intent.action.DOWNLOAD_CLICK_CONTENT"

    const/4 v5, 0x1

    if-eq v0, v5, :cond_22

    const/4 v6, 0x4

    if-eq v0, v6, :cond_22

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1d

    goto :goto_d

    :cond_1d
    const/4 v6, 0x3

    if-ne v0, v6, :cond_23

    move/from16 v0, v18

    const/4 v6, -0x1

    if-eq v0, v6, :cond_21

    const/4 v6, -0x4

    if-ne v0, v6, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v6, -0x3

    if-ne v0, v6, :cond_20

    const-string v0, "notification_click_install_auto_cancel"

    move-object/from16 v1, v21

    .line 93
    invoke-virtual {v1, v0, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1f

    const/4 v13, 0x1

    goto :goto_b

    :cond_1f
    const/4 v13, 0x0

    :goto_b
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "auto_cancel"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    const-string v1, "android.ss.intent.action.DOWNLOAD_OPEN"

    :cond_21
    :goto_c
    const-string v0, "action_complete"

    .line 94
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "action_hide"

    const-string v1, "android.ss.intent.action.DOWNLOAD_HIDE"

    .line 95
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_22
    :goto_d
    const-string v0, "action_apa"

    .line 96
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_e
    move-object/from16 v0, p1

    .line 97
    invoke-interface {v0, v4}, Lcom/byazt/s/ve;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "notification"

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    iput-object v0, v3, Lcom/byazt/n/c;->c:Landroid/app/Notification;

    return-object v0
.end method

.method private c(Lcom/byazt/m/BaseException;Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x3f5

    if-eq v1, v2, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result p1

    const/16 v1, 0x419

    if-ne p1, v1, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "application/vnd.android.package-archive"

    .line 101
    invoke-virtual {p3}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "notification_text_opt"

    .line 102
    invoke-virtual {p2, p1, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    return v0
.end method


# virtual methods
.method public c(Lcom/byazt/m/BaseException;Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/p/c;->tt:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/z/uj;->c()Lcom/byazt/s/ve;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, v0, p1, p2}, Lcom/byazt/p/c;->c(Lcom/byazt/s/ve;Lcom/byazt/m/BaseException;Z)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/n/c;->c:Landroid/app/Notification;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/byazt/n/c;->c:Landroid/app/Notification;

    invoke-virtual {p0, p1}, Lcom/byazt/n/c;->c(Landroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/n/c;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 2
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/p/c;->n:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/p/c;->uj:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/p/c;->a:Ljava/lang/String;

    return-void
.end method
