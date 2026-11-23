.class public Lcom/byazt/r/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zz/t;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3bd,
        0xd
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Landroid/content/BroadcastReceiver;


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

.method public static synthetic c(Lcom/byazt/r/tt;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/r/tt;->tt:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/r/tt;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    return-object p0
.end method

.method private c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;ZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    if-eqz v1, :cond_19

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->isShowNotification()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 11
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I

    move-result v3

    const/4 v4, -0x5

    const-string v6, ", canShowNotification = "

    const-string v7, "LaunchResume"

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    const-wide/high16 v10, 0x4052000000000000L    # 72.0

    const-wide v12, 0x414b774000000000L    # 3600000.0

    const/4 v14, 0x0

    if-ne v3, v4, :cond_d

    const-string v4, "application/ttpatch"

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->isDownloaded()Z

    move-result v4

    if-nez v4, :cond_d

    .line 13
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v3

    invoke-static {v3}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v3

    const-string v4, "failed_resume_max_count"

    .line 14
    invoke-virtual {v3, v4, v14}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "failed_resume_max_hours"

    .line 15
    invoke-virtual {v3, v5, v10, v11}, Lcom/byazt/k/c;->c(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v5, "failed_resume_min_hours"

    .line 16
    invoke-virtual {v3, v5, v8, v9}, Lcom/byazt/k/c;->c(Ljava/lang/String;D)D

    move-result-wide v8

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getFailedResumeCount()I

    move-result v5

    if-ge v5, v4, :cond_2

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getLastDownloadTime()J

    move-result-wide v4

    sub-long v4, v14, v4

    long-to-double v4, v4

    mul-double v10, v10, v12

    cmpg-double v16, v4, v10

    if-gez v16, :cond_2

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getLastFailedResumeTime()J

    move-result-wide v4

    sub-long v4, v14, v4

    long-to-double v4, v4

    mul-double v8, v8, v12

    cmpl-double v10, v4, v8

    if-lez v10, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 21
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-eqz v4, :cond_b

    const-string v5, "failed_resume_need_wifi"

    const/4 v8, 0x1

    .line 22
    invoke-virtual {v3, v5, v8}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    const-string v5, "failed_resume_need_wait_wifi"

    const/4 v10, 0x0

    .line 23
    invoke-virtual {v3, v5, v10}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-nez p3, :cond_9

    if-eqz v9, :cond_9

    if-nez v3, :cond_6

    goto :goto_4

    .line 24
    :cond_6
    iget-object v2, v0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    if-nez v2, :cond_7

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    .line 26
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    .line 27
    iget-object v3, v0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 28
    iget-object v3, v0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v1, v3}, Lcom/byazt/t/DownloadInfo;->setOnlyWifi(Z)V

    .line 30
    invoke-static {}, Lcom/byazt/b/rh;->c()Lcom/byazt/b/rh;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/byazt/b/rh;->c(Lcom/byazt/t/DownloadInfo;)V

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v3, 0x1

    .line 31
    invoke-static {v1, v3, v9}, Lcom/byazt/z/ve;->c(Lcom/byazt/t/DownloadInfo;ZZ)V

    .line 32
    invoke-virtual {v1, v14, v15}, Lcom/byazt/t/DownloadInfo;->setLastFailedResumeTime(J)V

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getFailedResumeCount()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/byazt/t/DownloadInfo;->setFailedResumeCount(I)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->updateSpData()V

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p3, :cond_a

    .line 36
    invoke-virtual {v1, v3}, Lcom/byazt/t/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 37
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/z/uj;->z()Lcom/byazt/zz/rh;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v5, 0x5

    .line 38
    invoke-interface {v3, v1, v5, v2}, Lcom/byazt/zz/rh;->c(Lcom/byazt/t/DownloadInfo;II)V

    :cond_a
    const/4 v14, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v14, 0x0

    .line 39
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "launchResume, name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", downloadResumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/z/uj;->yp()Lcom/byazt/s/x;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 41
    invoke-interface {v2, v1, v14}, Lcom/byazt/s/x;->c(Lcom/byazt/t/DownloadInfo;Z)V

    :cond_c
    return-void

    :cond_d
    const/4 v4, -0x3

    if-ne v3, v4, :cond_12

    .line 42
    invoke-direct {v0, v1}, Lcom/byazt/r/tt;->c(Lcom/byazt/t/DownloadInfo;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v2

    .line 44
    invoke-static/range {p1 .. p2}, Lcom/byazt/z/ve;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_e

    return-void

    :cond_e
    const-string v3, "uninstall_resume_max_count"

    const/4 v4, 0x0

    .line 45
    invoke-virtual {v2, v3, v4}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "uninstall_resume_max_hours"

    .line 46
    invoke-virtual {v2, v4, v10, v11}, Lcom/byazt/k/c;->c(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v4, "uninstall_resume_min_hours"

    .line 47
    invoke-virtual {v2, v4, v8, v9}, Lcom/byazt/k/c;->c(Ljava/lang/String;D)D

    move-result-wide v8

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getUninstallResumeCount()I

    move-result v2

    if-ge v2, v3, :cond_f

    .line 50
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getLastDownloadTime()J

    move-result-wide v2

    sub-long v2, v14, v2

    long-to-double v2, v2

    mul-double v10, v10, v12

    cmpg-double v4, v2, v10

    if-gez v4, :cond_f

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getLastUninstallResumeTime()J

    move-result-wide v2

    sub-long v2, v14, v2

    long-to-double v2, v2

    mul-double v8, v8, v12

    cmpl-double v4, v2, v8

    if-lez v4, :cond_f

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    .line 52
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uninstallResume, name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_11

    .line 53
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/n/tt;->n(I)Lcom/byazt/n/c;

    move-result-object v2

    if-nez v2, :cond_10

    .line 54
    new-instance v2, Lcom/byazt/p/c;

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v12

    move-object v6, v2

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/byazt/p/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/byazt/n/tt;->c(Lcom/byazt/n/c;)V

    goto :goto_8

    .line 56
    :cond_10
    invoke-virtual {v2, v1}, Lcom/byazt/n/c;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 57
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/byazt/n/c;->tt(J)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/byazt/n/c;->c(J)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/byazt/n/c;->c(ILcom/byazt/m/BaseException;ZZ)V

    .line 60
    invoke-virtual {v1, v14, v15}, Lcom/byazt/t/DownloadInfo;->setLastUninstallResumeTime(J)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getUninstallResumeCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/byazt/t/DownloadInfo;->setUninstallResumeCount(I)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->updateSpData()V

    :cond_11
    return-void

    :cond_12
    const/4 v4, -0x2

    if-ne v3, v4, :cond_19

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz p3, :cond_15

    const/4 v3, 0x1

    .line 64
    invoke-static {v1, v3, v3}, Lcom/byazt/z/ve;->c(Lcom/byazt/t/DownloadInfo;ZZ)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->updateSpData()V

    .line 66
    invoke-virtual {v1, v3}, Lcom/byazt/t/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 67
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/z/uj;->yp()Lcom/byazt/s/x;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 68
    invoke-interface {v4, v1, v3}, Lcom/byazt/s/x;->c(Lcom/byazt/t/DownloadInfo;Z)V

    .line 69
    :cond_13
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/z/uj;->z()Lcom/byazt/zz/rh;

    move-result-object v3

    if-eqz v3, :cond_14

    const/4 v4, 0x5

    .line 70
    invoke-interface {v3, v1, v4, v2}, Lcom/byazt/zz/rh;->c(Lcom/byazt/t/DownloadInfo;II)V

    :cond_14
    return-void

    .line 71
    :cond_15
    iget-object v2, v0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    if-nez v2, :cond_16

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    .line 73
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    .line 74
    iget-object v3, v0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 75
    iget-object v3, v0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_17
    invoke-static {}, Lcom/byazt/b/rh;->c()Lcom/byazt/b/rh;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/byazt/b/rh;->c(Lcom/byazt/t/DownloadInfo;)V

    :cond_18
    move-object/from16 v2, p1

    .line 77
    invoke-direct {v0, v1, v2}, Lcom/byazt/r/tt;->c(Lcom/byazt/t/DownloadInfo;Landroid/content/Context;)V

    :cond_19
    :goto_9
    return-void
.end method

.method public static synthetic c(Lcom/byazt/r/tt;Landroid/content/Context;Lcom/byazt/t/DownloadInfo;ZI)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/r/tt;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;ZI)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/r/tt;Ljava/util/List;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/r/tt;->tt(Ljava/util/List;I)V

    return-void
.end method

.method private c(Lcom/byazt/t/DownloadInfo;Landroid/content/Context;)V
    .locals 13

    .line 78
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "paused_resume_max_count"

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "paused_resume_max_hours"

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    .line 80
    invoke-virtual {v0, v3, v4, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;D)D

    move-result-wide v3

    .line 81
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getPausedResumeCount()I

    move-result v0

    const/4 v5, 0x1

    if-ge v0, v1, :cond_0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getLastDownloadTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x414b774000000000L    # 3600000.0

    mul-double v3, v3, v8

    cmpg-double v1, v6, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 83
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/byazt/n/tt;->n(I)Lcom/byazt/n/c;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Lcom/byazt/p/c;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v8

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v12

    move-object v6, v1

    move-object v7, p2

    invoke-direct/range {v6 .. v12}, Lcom/byazt/p/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/byazt/n/tt;->c(Lcom/byazt/n/c;)V

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v1, p1}, Lcom/byazt/n/c;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 87
    :goto_1
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/byazt/n/c;->tt(J)V

    .line 88
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/byazt/n/c;->c(J)V

    .line 89
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2, v2}, Lcom/byazt/n/c;->c(ILcom/byazt/m/BaseException;ZZ)V

    add-int/2addr v0, v5

    .line 90
    invoke-virtual {p1, v0}, Lcom/byazt/t/DownloadInfo;->setPausedResumeCount(I)V

    .line 91
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->updateSpData()V

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 3

    .line 92
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "uninstall_can_not_resume_for_force_task"

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;ZLjava/lang/String;)Z

    move-result p1

    return p1

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isDownloaded()Z

    move-result p1

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/r/tt;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/r/tt;->tt:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private tt(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    .line 4
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/byazt/w/a;->tt(Landroid/content/Context;)Z

    move-result v1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/t/DownloadInfo;

    .line 7
    invoke-direct {p0, v0, v2, v1, p2}, Lcom/byazt/r/tt;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;ZI)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/byazt/r/tt;->c:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/byazt/r/tt;->tt:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_3

    .line 10
    new-instance p1, Lcom/byazt/r/tt$2;

    invoke-direct {p1, p0}, Lcom/byazt/r/tt$2;-><init>(Lcom/byazt/r/tt;)V

    iput-object p1, p0, Lcom/byazt/r/tt;->tt:Landroid/content/BroadcastReceiver;

    .line 11
    :try_start_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/byazt/r/tt;->tt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/byazt/r/tt;->tt:Landroid/content/BroadcastReceiver;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/byazt/z/ve;->ve()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;I)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/byazt/w/a;->uj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/byazt/r/tt$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/r/tt$1;-><init>(Lcom/byazt/r/tt;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/r/tt;->tt(Ljava/util/List;I)V

    return-void
.end method
