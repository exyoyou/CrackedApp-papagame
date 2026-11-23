.class public Lcom/sigmob/sdk/base/common/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/o$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/o;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "adUnit"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadTask()Lcom/sigmob/sdk/downloader/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/l;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "downloadId"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p1

    const-string v2, "action.interstitial.download.pause"

    invoke-static {p0, p1, v1, v2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/sigmob/sdk/base/common/s1;

    invoke-direct {p1, v0}, Lcom/sigmob/sdk/base/common/s1;-><init>(Lcom/sigmob/sdk/downloader/f;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adUnit",
            "url"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkMd5()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Md5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".apk"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Landroid/content/Context;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/q;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 4
    instance-of v0, p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error"

    const-string v1, "cancel download"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected static a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "adUnit",
            "isMThread"
        }
    .end annotation

    .line 5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "downloadAction_"

    const-string v3, "action.interstitial.download.start"

    const-string v4, "downloadId"

    const-string v5, "result"

    const-string v6, "_"

    const-string v7, "download_start"

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v8

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadTask()Lcom/sigmob/sdk/downloader/f;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v11, "1"

    const/4 v12, 0x1

    if-eqz v10, :cond_3

    :try_start_1
    invoke-virtual {v10}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {v10}, Lcom/sigmob/sdk/downloader/l;->c(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "download_finish"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v6, Lcom/sigmob/sdk/base/common/n1;

    invoke-direct {v6, v8, v10, v2}, Lcom/sigmob/sdk/base/common/n1;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {v10}, Lcom/sigmob/sdk/downloader/l;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-static {v8, v0, v12}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v0, v3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_7

    :cond_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkName()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/sigmob/sdk/downloader/f$a;

    invoke-static {v8}, Lcom/sigmob/sdk/base/utils/o;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    invoke-direct {v13, v1, v14}, Lcom/sigmob/sdk/downloader/f$a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v13, v10}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object v10

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/sigmob/sdk/downloader/f$a;->c(Z)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object v10

    const-string v14, "User-Agent"

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getUserAgent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    :goto_0
    invoke-virtual {v10}, Lcom/sigmob/sdk/downloader/f$a;->a()Lcom/sigmob/sdk/downloader/f;

    move-result-object v10

    goto :goto_1

    :cond_4
    invoke-virtual {v10, v12}, Lcom/sigmob/sdk/downloader/f$a;->a(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object v10

    goto :goto_0

    :goto_1
    invoke-static {v10}, Lcom/sigmob/sdk/downloader/l;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/core/a;)Z

    :cond_5
    invoke-virtual {v10}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    :cond_7
    new-instance v14, Lcom/sigmob/sdk/base/common/o$3;

    invoke-direct {v14, v8, v2, v8}, Lcom/sigmob/sdk/base/common/o$3;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadButtonAction_"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v12, Lcom/sigmob/sdk/base/common/o$a;

    invoke-direct {v12, v10, v9, v2}, Lcom/sigmob/sdk/base/common/o$a;-><init>(Lcom/sigmob/sdk/downloader/f;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    new-instance v13, Landroid/content/IntentFilter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v16, v3

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v17, v4

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {v8, v12, v13}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/sigmob/sdk/videoAd/d;

    const-string v6, "download_quarter"

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-direct {v4, v6, v9}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/sigmob/sdk/videoAd/d;

    const-string v6, "download_two_quarter"

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {v4, v6, v9}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/sigmob/sdk/videoAd/d;

    const-string v6, "download_three_quarter"

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-direct {v4, v6, v9}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setDownloadQuarterTrack(Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v0, v4, v6}, Lcom/sigmob/sdk/downloader/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v0, v4, :cond_8

    const/high16 v0, 0xc000000

    const/4 v4, 0x0

    invoke-static {v8, v4, v15, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/sigmob/sdk/downloader/h;->a(Landroid/app/PendingIntent;)V

    invoke-static {v8, v4, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_2
    invoke-virtual {v14, v0}, Lcom/sigmob/sdk/downloader/h;->b(Landroid/app/PendingIntent;)V

    goto :goto_3

    :cond_8
    const/high16 v0, 0x8000000

    const/4 v4, 0x0

    invoke-static {v8, v4, v15, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/sigmob/sdk/downloader/h;->a(Landroid/app/PendingIntent;)V

    invoke-static {v8, v4, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_2

    :goto_3
    invoke-virtual {v10, v14}, Lcom/sigmob/sdk/downloader/f;->a(Lcom/sigmob/sdk/downloader/c;)V

    invoke-virtual {v2, v10}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setDownloadTask(Lcom/sigmob/sdk/downloader/f;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isResumableDownload()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v10}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->b(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_9
    const/4 v9, 0x0

    :goto_4
    :try_start_6
    invoke-virtual {v10}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setDownloadId(Ljava/lang/Long;)V

    invoke-virtual {v10}, Lcom/sigmob/sdk/downloader/f;->B()V

    const-string v0, "\u5df2\u5f00\u59cb\u4e0b\u8f7d"

    const/4 v3, 0x1

    invoke-static {v8, v0, v3}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isRecord()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v2, v7}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/sdk/base/common/o1;

    invoke-direct {v0, v1, v9}, Lcom/sigmob/sdk/base/common/o1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v11, v2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v16, v3

    :goto_5
    move-object/from16 v17, v4

    :goto_6
    const/4 v9, 0x0

    :goto_7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v6, v17

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v16

    invoke-static {v8, v5, v3, v6}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    new-instance v3, Lcom/sigmob/sdk/base/common/p1;

    invoke-direct {v3, v1, v9}, Lcom/sigmob/sdk/base/common/p1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v4, v2, v3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    new-instance v1, Lcom/sigmob/sdk/base/common/q1;

    invoke-direct {v1, v0, v8}, Lcom/sigmob/sdk/base/common/q1;-><init>(Ljava/lang/Throwable;Landroid/content/Context;)V

    const-string v0, "apkdownload"

    const-string v3, "start"

    invoke-static {v0, v3, v2, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_a
    :goto_8
    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 6
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "apkfile"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "apkurl"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "apkName",
            "url",
            "iconUrl",
            "title",
            "isMThread"
        }
    .end annotation

    .line 7
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sigmob/sdk/base/common/o;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/downloader/f;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/sigmob/sdk/downloader/l;->c(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/common/o$1;

    invoke-direct {v1, v2, v4}, Lcom/sigmob/sdk/base/common/o$1;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/downloader/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_0
    invoke-static {v4}, Lcom/sigmob/sdk/downloader/l;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-static {v2, v0, v5}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_1
    const-string v0, "\u7ee7\u7eed\u4e0b\u8f7d"

    invoke-static {v2, v0, v5}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->B()V

    goto/16 :goto_2

    :cond_2
    new-instance v4, Lcom/sigmob/sdk/downloader/f$a;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/o;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v1, v6}, Lcom/sigmob/sdk/downloader/f$a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v4, p0}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sigmob/sdk/downloader/f$a;->c(Z)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object v4

    const-string v7, "User-Agent"

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v5}, Lcom/sigmob/sdk/downloader/f$a;->a(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f$a;->a()Lcom/sigmob/sdk/downloader/f;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/downloader/l;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/core/a;)Z

    :cond_4
    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/sigmob/sdk/videoAd/d;

    const-string v9, "download_quarter"

    const/high16 v10, 0x3e800000    # 0.25f

    invoke-direct {v8, v9, v10}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/sigmob/sdk/videoAd/d;

    const-string v9, "download_two_quarter"

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct {v8, v9, v10}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/sigmob/sdk/videoAd/d;

    const-string v9, "download_three_quarter"

    const/high16 v10, 0x3f400000    # 0.75f

    invoke-direct {v8, v9, v10}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/sigmob/sdk/base/common/o$2;

    invoke-direct {v8, v2, v2, v1, v7}, Lcom/sigmob/sdk/base/common/o$2;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadButtonAction_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v10, Lcom/sigmob/sdk/base/common/o$a;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v1, v11}, Lcom/sigmob/sdk/base/common/o$a;-><init>(Lcom/sigmob/sdk/downloader/f;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    new-instance v11, Landroid/content/IntentFilter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloadAction_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {v2, v10, v11}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v1, Landroid/content/Intent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-virtual {v8, v7, v10, p0}, Lcom/sigmob/sdk/downloader/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1f

    if-lt v7, v10, :cond_7

    const/high16 v7, 0xc000000

    goto :goto_1

    :cond_7
    const/high16 v7, 0x8000000

    :goto_1
    invoke-static {v2, v6, v9, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sigmob/sdk/downloader/h;->a(Landroid/app/PendingIntent;)V

    invoke-static {v2, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/sigmob/sdk/downloader/h;->b(Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v8}, Lcom/sigmob/sdk/downloader/f;->a(Lcom/sigmob/sdk/downloader/c;)V

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/f;->B()V

    const-string v1, "\u5df2\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v2, v1, v5}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .line 8
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\uff0c"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "adUnit"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadTask()Lcom/sigmob/sdk/downloader/f;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/downloader/l;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result p1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/f;->B()V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "apkfile"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "apkurl"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "adUnit"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadTask()Lcom/sigmob/sdk/downloader/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/f;->a(Lcom/sigmob/sdk/downloader/c;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->E()V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->b(I)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "downloadId"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v2

    const-string v4, "action.interstitial.download.end"

    invoke-static {p0, v2, v0, v4}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setDownloadId(Ljava/lang/Long;)V

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setDownloadTask(Lcom/sigmob/sdk/downloader/f;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isRecord()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "download_end"

    invoke-static {p0, v3, p1, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_4
    new-instance p0, Lcom/sigmob/sdk/base/common/r1;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/r1;-><init>()V

    const-string v0, "apkdownload"

    const-string v1, "end"

    invoke-static {v0, v1, p1, p0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/o;->a(Landroid/content/Context;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)[J
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "adUnit"
        }
    .end annotation

    .line 2
    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadTask()Lcom/sigmob/sdk/downloader/f;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->y()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/o;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lcom/sigmob/sdk/downloader/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/l$a;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v5

    aput-wide v5, v1, p0

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->j()J

    move-result-wide p0

    aput-wide p0, v1, v4

    invoke-static {v2}, Lcom/sigmob/sdk/downloader/l;->b(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/l$a;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/sigmob/sdk/base/common/o$4;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x2

    if-eq p0, v4, :cond_5

    if-eq p0, p1, :cond_4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const-wide/16 v2, 0x10

    aput-wide v2, v1, p1

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x4

    aput-wide v2, v1, p1

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x1

    aput-wide v2, v1, p1

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x8

    aput-wide v2, v1, p1

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x2

    aput-wide v2, v1, p1

    :goto_1
    return-object v1

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        0x0
    .end array-data
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Throwable;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/o;->a(Ljava/lang/Throwable;Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/o;->a(Ljava/lang/Object;)V

    return-void
.end method
