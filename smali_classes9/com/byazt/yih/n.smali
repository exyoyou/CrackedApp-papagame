.class public Lcom/byazt/yih/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yih/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2da,
        0x2e
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/yih/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/yih/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yih/n;->c:Lcom/byazt/yih/ve;

    .line 5
    .line 6
    return-void
.end method

.method public static c(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 14
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 16
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 18
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    .line 20
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 22
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 23
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 52
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "notification_a"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/byazt/qt/c;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/qt/c;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object v0

    const/4 v1, 0x2

    .line 10
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/yih/n$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/yih/n$2;-><init>(Lcom/byazt/yih/n;Lcom/byazt/qt/c;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 11
    invoke-interface {v0, v1, p1}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/yih/n;Lcom/byazt/qt/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/yih/n;->c(Lcom/byazt/qt/c;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "notification_a"

    invoke-interface {v0, v1, p0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/qt/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 12
    invoke-virtual {p1}, Lcom/byazt/qt/c;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/qt/c;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/byazt/yih/n$3;

    invoke-direct {v2, p2, p1, p4, p5}, Lcom/byazt/yih/n$3;-><init>(Ljava/lang/String;Lcom/byazt/qt/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p3, v0, v1, v2}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method private uj(Lcom/byazt/qt/c;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/yih/n;->c:Lcom/byazt/yih/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yih/ve;->tt()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "enable_action_notification=0"

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/qt/c;->a()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string p1, "enable_notification=0"

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 34
    .line 35
    const/16 v0, 0x21

    .line 36
    .line 37
    if-lt p1, v0, :cond_2

    .line 38
    .line 39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    if-lt p1, v0, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/byazt/xgx/n;->c()Lcom/byazt/xgx/n;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/byazt/xgx/n;->tt(Landroid/content/Context;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    const-string p1, "post_notifications_deny"

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/byazt/yih/n;->c:Lcom/byazt/yih/ve;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/byazt/yih/ve;->a()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iget-object p1, p0, Lcom/byazt/yih/n;->c:Lcom/byazt/yih/ve;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/byazt/yih/ve;->n()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    const-wide/16 v4, 0x3e8

    .line 75
    .line 76
    mul-long v4, v4, v0

    .line 77
    .line 78
    const-wide/16 v1, 0x5a0

    .line 79
    .line 80
    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/yih/n;->c(JIJ)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    const-string p1, "max_times_limit"

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_3
    const/4 p1, 0x0

    .line 91
    return-object p1
.end method

.method private ve(Lcom/byazt/qt/c;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/yih/n;->c:Lcom/byazt/yih/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yih/ve;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "enable_install_notification"

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/omf/x;->nu()Lcom/byazt/dj/uj;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseMessage()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string p1, "isCanUseMessage"

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/qt/c;->a()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    const-string p1, "enable_notification=0"

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 53
    .line 54
    const/16 v0, 0x21

    .line 55
    .line 56
    if-lt p1, v0, :cond_3

    .line 57
    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    if-lt p1, v0, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lcom/byazt/xgx/n;->c()Lcom/byazt/xgx/n;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Lcom/byazt/xgx/n;->tt(Landroid/content/Context;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    const-string p1, "post_notifications_deny"

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/byazt/yih/n;->c:Lcom/byazt/yih/ve;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/byazt/yih/ve;->a()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iget-object p1, p0, Lcom/byazt/yih/n;->c:Lcom/byazt/yih/ve;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/byazt/yih/ve;->n()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    const-wide/16 v4, 0x3e8

    .line 94
    .line 95
    mul-long v4, v4, v0

    .line 96
    .line 97
    const-wide/16 v1, 0x5a0

    .line 98
    .line 99
    move-object v0, p0

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/yih/n;->c(JIJ)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    const-string p1, "max_times_limit"

    .line 107
    .line 108
    return-object p1

    .line 109
    :cond_4
    const/4 p1, 0x0

    .line 110
    return-object p1
.end method


# virtual methods
.method public c(JIJ)Z
    .locals 15

    const-string v1, "xgc_notification"

    const-string v2, "_"

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    .line 24
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v6, 0x3c

    mul-long v6, v6, p1

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    const/4 v4, 0x1

    .line 25
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, p3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v7, "error"

    aput-object v7, v0, v5

    .line 26
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 27
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_9

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 28
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v10, v6, v8

    if-eqz v10, :cond_9

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 29
    :cond_1
    invoke-static {}, Lcom/byazt/yih/n;->c()Ljava/lang/String;

    move-result-object v6

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 32
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 33
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yih/n;->c(Ljava/lang/String;)V

    return v4

    .line 35
    :cond_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 36
    array-length v10, v6

    if-ge v10, v0, :cond_5

    add-int/lit8 v0, v10, -0x1

    .line 37
    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long v11, v8, v11

    cmp-long v0, v11, p4

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v10, :cond_3

    .line 38
    aget-object v3, v6, v0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yih/n;->c(Ljava/lang/String;)V

    return v4

    :cond_4
    return v5

    :cond_5
    sub-int v0, v10, v0

    .line 41
    aget-object v11, v6, v0

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    add-int/lit8 v12, v10, -0x1

    .line 42
    aget-object v12, v6, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 43
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v8, v12

    cmp-long v14, v12, p4

    if-lez v14, :cond_6

    .line 44
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v11, v8, v11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v3, v11, v13

    if-lez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_9

    move v3, v0

    :goto_3
    if-ge v3, v10, :cond_8

    .line 45
    aget-object v11, v6, v3

    if-eq v3, v0, :cond_7

    .line 46
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 47
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 48
    :cond_8
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yih/n;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v4

    :cond_9
    :goto_4
    return v5

    :catch_1
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public c(Lcom/byazt/qt/c;)Z
    .locals 6

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/yih/n;->ve(Lcom/byazt/qt/c;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/yih/n$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/yih/n$1;-><init>(Lcom/byazt/yih/n;Lcom/byazt/qt/c;)V

    iget-object p1, p0, Lcom/byazt/yih/n;->c:Lcom/byazt/yih/ve;

    .line 5
    invoke-virtual {p1}, Lcom/byazt/yih/ve;->uj()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "notification"

    const-string v2, "install"

    const-string v3, "othershow"

    const-string v5, "failure"

    move-object v1, p1

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/byazt/yih/n;->c(Ljava/lang/String;Lcom/byazt/qt/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public tt(Lcom/byazt/qt/c;)Z
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/yih/n;->uj(Lcom/byazt/qt/c;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "pushUnActiveFromMarketMessage"

    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Lcom/byazt/yih/n;->c(Lcom/byazt/qt/c;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const-string v0, "notification"

    .line 19
    .line 20
    const-string v2, "open"

    .line 21
    .line 22
    const-string v3, "othershow"

    .line 23
    .line 24
    const-string v5, "failure"

    .line 25
    .line 26
    move-object v1, p1

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/byazt/yih/n;->c(Ljava/lang/String;Lcom/byazt/qt/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1
.end method
