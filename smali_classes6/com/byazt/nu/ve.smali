.class public final Lcom/byazt/nu/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x89,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CANCELED:I = -0x4

.field public static final DOWNLOAD_COMPLETE_HANDLE:I = 0xb

.field public static final FAILED:I = -0x1

.field public static final START:I = 0x2

.field public static final SUCCESSED:I = -0x3

.field public static final TYPE_ACTIVE:I = 0x1

.field public static final TYPE_COMPLETE:I = 0x3

.field public static final TYPE_PREPARE:I = 0x4

.field public static final TYPE_WAITING:I = 0x2

.field public static volatile c:Lcom/byazt/nu/ve;


# instance fields
.field public final tt:Landroid/content/Context;

.field public ve:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private c(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 72
    invoke-static {}, Lcom/byazt/nu/c;->gr()I

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 73
    invoke-static {}, Lcom/byazt/nu/c;->gu()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 74
    invoke-static {}, Lcom/byazt/nu/c;->gr()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 75
    :cond_4
    :goto_0
    invoke-static {}, Lcom/byazt/nu/c;->qy()I

    move-result p1

    :goto_1
    return p1
.end method

.method private c(Landroid/content/Context;Landroid/util/Pair;I)Landroid/app/PendingIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 68
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, 0xc000000

    if-eqz v0, :cond_0

    .line 69
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent;

    invoke-static {p1, p3, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent;

    invoke-static {p1, p3, p2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/byazt/nu/ve;->c(Landroid/content/Context;JZ)Landroid/util/Pair;

    move-result-object p4

    .line 50
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 51
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_click_download_ids"

    .line 52
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_click_download_type"

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_from_notification"

    const/4 p2, 0x1

    .line 54
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_package_name"

    .line 55
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object p1, p0, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    invoke-direct {p0, p1, p4, p3}, Lcom/byazt/nu/ve;->c(Landroid/content/Context;Landroid/util/Pair;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/byazt/nu/ve;->c(Landroid/content/Context;JZ)Landroid/util/Pair;

    move-result-object p4

    .line 58
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_click_download_ids"

    .line 60
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_click_download_type"

    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_from_notification"

    const/4 p2, 0x1

    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_package_name"

    .line 63
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_tag"

    .line 64
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_value"

    .line 65
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_log_extra"

    .line 66
    invoke-virtual {v0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object p1, p0, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    invoke-direct {p0, p1, p4, p3}, Lcom/byazt/nu/ve;->c(Landroid/content/Context;Landroid/util/Pair;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/content/Context;JZ)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 45
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/byazt/nu/ApiDownloadHandleNotificationActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    new-instance p1, Landroid/util/Pair;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/byazt/nu/ApiDownloadHandlerService;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    new-instance p1, Landroid/util/Pair;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method private c(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 7
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    .line 9
    :catch_0
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p1
.end method

.method private c(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    const-string v0, "params"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/nu/ve;->ve(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "remote_views"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "builder_content_type"

    .line 13
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "notification_type"

    .line 14
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "channel_id"

    .line 15
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "download_status"

    .line 16
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 17
    invoke-direct {p0, v4}, Lcom/byazt/nu/ve;->c(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v6, "first_time"

    .line 18
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 19
    invoke-virtual {v4, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    const-string v6, "notification_group"

    .line 20
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 21
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 22
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 24
    :cond_0
    new-instance v6, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v6, -0x3

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_3

    const/4 v10, 0x4

    if-eq v3, v10, :cond_3

    const/4 v10, 0x2

    if-ne v3, v10, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v8, :cond_4

    .line 25
    invoke-virtual {v4, v9}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    if-ne v5, v6, :cond_2

    const-string v9, "auto_cancel"

    .line 26
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    instance-of v9, p1, Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    const-string p1, "complete_click_content_intent"

    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "hide_click_content_intent"

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "apa_click_content_intent"

    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 35
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_4
    :goto_1
    if-ne v3, v8, :cond_5

    if-ne v5, v6, :cond_5

    .line 36
    instance-of p1, v2, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 37
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_5
    const-string p1, "builder_small_icon"

    .line 38
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 40
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 41
    :cond_6
    check-cast v1, Landroid/widget/RemoteViews;

    .line 42
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 43
    iput-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "notification"

    .line 44
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 1

    .line 71
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance()Lcom/byazt/nu/ve;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/nu/ve;->c:Lcom/byazt/nu/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/byazt/nu/ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/nu/ve;->c:Lcom/byazt/nu/ve;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/nu/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/nu/ve;->c:Lcom/byazt/nu/ve;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/nu/ve;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/nu/ve;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/nu/ve;->c:Lcom/byazt/nu/ve;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/nu/ve;->c:Lcom/byazt/nu/ve;

    .line 25
    .line 26
    return-object p0
.end method

.method public static isMaterialNotification(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "#7f0b0198"

    .line 6
    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {}, Lcom/byazt/nu/c;->c()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {}, Lcom/byazt/nu/c;->tt()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    filled-new-array {v2, v3}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {}, Lcom/byazt/nu/c;->ve()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 32
    .line 33
    .line 34
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    :catchall_0
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    const/4 p0, 0x0

    .line 47
    :catchall_2
    if-eqz p0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_3
    :cond_2
    :goto_1
    return v0
.end method

.method private tt(Ljava/util/Map;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v11, "notification"

    if-eqz v0, :cond_6

    .line 1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v1, "install_app_name"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "install_icon_bitmap"

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const-string v3, "install_action_type"

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "install_click_type"

    .line 5
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "install_package_name"

    .line 6
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    const-string v5, "install_tag"

    .line 7
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    const-string v5, "install_value"

    .line 8
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    const-string v5, "install_log_extra"

    .line 9
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 10
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    const-string v5, "install_download_id"

    .line 11
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 12
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    const-string v14, "install_enable_target_34"

    .line 13
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 15
    :goto_2
    iget-object v14, v10, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-object v15, v10, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v13, "tt_install_notification_layout"

    move-object/from16 v16, v12

    const-string v12, "layout"

    invoke-virtual {v14, v13, v12, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 16
    new-instance v13, Landroid/widget/RemoteViews;

    iget-object v14, v10, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 17
    invoke-static {}, Lcom/byazt/nu/c;->u()I

    move-result v12

    .line 18
    invoke-static {}, Lcom/byazt/nu/c;->t()I

    move-result v14

    .line 19
    invoke-static {}, Lcom/byazt/nu/c;->yp()I

    move-result v15

    move-object/from16 v17, v11

    .line 20
    invoke-static {}, Lcom/byazt/nu/c;->z()I

    move-result v11

    .line 21
    invoke-static {}, Lcom/byazt/nu/c;->m()I

    move-result v10

    move/from16 p1, v10

    const/4 v10, 0x1

    if-ne v4, v10, :cond_3

    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "\u6253\u5f00"

    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "\u5e94\u7528\u5df2\u5b89\u88c5\u5b8c\u6210"

    const-string v18, "\u53bb\u6253\u5f00"

    goto :goto_3

    .line 23
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "\u5b89\u88c5"

    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "\u5e94\u7528\u5df2\u4e0b\u8f7d\u5b8c\u6210"

    const-string v18, "\u53bb\u5b89\u88c5"

    :goto_3
    move-object/from16 v19, v10

    move-object v10, v1

    move-object/from16 v1, v19

    move-object/from16 v20, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v20

    .line 24
    invoke-virtual {v13, v14, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v13, v15, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v13, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 27
    invoke-static {}, Lcom/byazt/nu/c;->zm()I

    move-result v9

    if-nez v9, :cond_4

    .line 28
    invoke-static {}, Lcom/byazt/nu/c;->gr()I

    move-result v9

    if-nez v9, :cond_4

    .line 29
    invoke-static {}, Lcom/byazt/nu/c;->qy()I

    move-result v9

    :cond_4
    move v14, v9

    .line 30
    invoke-static {v2}, Landroidx/core/graphics/drawable/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v13, v12, v2}, Lk1/a;->a(Landroid/widget/RemoteViews;ILandroid/graphics/drawable/Icon;)V

    move-object v12, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v0

    move-object/from16 v9, v18

    .line 31
    invoke-direct/range {v1 .. v9}, Lcom/byazt/nu/ve;->c(Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    move/from16 v0, p1

    .line 32
    invoke-virtual {v13, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 33
    invoke-virtual {v13, v11, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "csj_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_5

    .line 36
    invoke-static {}, Lk1/d;->a()V

    const-string v0, "csj_install"

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Lcom/aggmoread/sdk/z/a/j/u;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v4, 0x1

    .line 37
    invoke-static {v0, v4}, Lk1/b;->a(Landroid/app/NotificationChannel;Z)V

    .line 38
    invoke-static {v0, v4}, Lk1/c;->a(Landroid/app/NotificationChannel;Z)V

    .line 39
    iget-object v4, v2, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, v17

    :try_start_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 40
    invoke-static {v4, v0}, Lcom/aggmoread/sdk/z/a/j/t;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_5
    move-object/from16 v5, v17

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v5, v17

    .line 41
    :goto_4
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    .line 42
    :goto_5
    invoke-direct {v2, v3}, Lcom/byazt/nu/ve;->c(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 43
    new-instance v3, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 44
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v12}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 48
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v4, -0x1

    .line 49
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 52
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 53
    iput-object v13, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v1, v16

    .line 54
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_6
    move-object v2, v10

    const/4 v0, 0x0

    return-object v0
.end method

.method private tt(Ljava/lang/Object;)Z
    .locals 1

    .line 55
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private ve(Ljava/util/Map;)Ljava/util/Map;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v6, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, v6, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "tt_adl_notification_layout"

    .line 18
    .line 19
    const-string v3, "layout"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-instance v8, Landroid/widget/RemoteViews;

    .line 26
    .line 27
    iget-object v1, v6, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v8, v1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    new-instance v9, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v0, "csj_enable_target_34"

    .line 42
    .line 43
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v10, 0x0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    check-cast v0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    move v11, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v11, 0x0

    .line 59
    :goto_0
    invoke-static {}, Lcom/byazt/nu/c;->da()I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    const-string v0, "notification_type"

    .line 64
    .line 65
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    const-string v0, "notification_opt_2"

    .line 70
    .line 71
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    invoke-static {}, Lcom/byazt/nu/c;->zm()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    move v1, v0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const/4 v1, 0x0

    .line 84
    :goto_1
    instance-of v2, v13, Ljava/lang/Integer;

    .line 85
    .line 86
    const/4 v15, 0x1

    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    instance-of v2, v14, Ljava/lang/Integer;

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    move-object v2, v13

    .line 94
    check-cast v2, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    move-object v3, v14

    .line 101
    check-cast v3, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-ne v3, v15, :cond_2

    .line 108
    .line 109
    const/4 v3, 0x1

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    const/4 v3, 0x0

    .line 112
    :goto_2
    invoke-direct {v6, v2, v3}, Lcom/byazt/nu/ve;->c(IZ)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {v8, v12, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 117
    .line 118
    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    move v1, v2

    .line 124
    :cond_3
    const-string v0, "builder_small_icon"

    .line 125
    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string v0, "click_type"

    .line 134
    .line 135
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    instance-of v1, v0, Ljava/lang/Integer;

    .line 140
    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    check-cast v0, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    move/from16 v16, v0

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_4
    const/16 v16, 0x0

    .line 153
    .line 154
    :goto_3
    const-string v0, "click_download_id"

    .line 155
    .line 156
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    instance-of v1, v0, Ljava/lang/Integer;

    .line 161
    .line 162
    if-eqz v1, :cond_5

    .line 163
    .line 164
    check-cast v0, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    move/from16 v17, v0

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_5
    const/16 v17, 0x0

    .line 174
    .line 175
    :goto_4
    invoke-static {}, Lcom/byazt/nu/c;->i()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    instance-of v4, v14, Ljava/lang/Integer;

    .line 180
    .line 181
    const/16 v18, 0x0

    .line 182
    .line 183
    if-eqz v4, :cond_7

    .line 184
    .line 185
    move-object v0, v14

    .line 186
    check-cast v0, Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eq v0, v15, :cond_7

    .line 193
    .line 194
    const-string v0, "action_click_btn"

    .line 195
    .line 196
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    instance-of v1, v0, Ljava/lang/String;

    .line 201
    .line 202
    if-eqz v1, :cond_6

    .line 203
    .line 204
    check-cast v0, Ljava/lang/String;

    .line 205
    .line 206
    move-object v1, v0

    .line 207
    goto :goto_5

    .line 208
    :cond_6
    move-object/from16 v1, v18

    .line 209
    .line 210
    :goto_5
    const/16 v19, 0x0

    .line 211
    .line 212
    move-object/from16 v0, p0

    .line 213
    .line 214
    move/from16 v2, v16

    .line 215
    .line 216
    move/from16 v3, v17

    .line 217
    .line 218
    move/from16 v20, v4

    .line 219
    .line 220
    move v4, v11

    .line 221
    move v15, v5

    .line 222
    move-object/from16 v5, v19

    .line 223
    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nu/ve;->c(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v8, v15, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_7
    move/from16 v20, v4

    .line 233
    .line 234
    move v15, v5

    .line 235
    :goto_6
    const-string v0, "action_apa"

    .line 236
    .line 237
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    instance-of v1, v0, Ljava/lang/String;

    .line 242
    .line 243
    if-eqz v1, :cond_8

    .line 244
    .line 245
    move-object v1, v0

    .line 246
    check-cast v1, Ljava/lang/String;

    .line 247
    .line 248
    const/4 v5, 0x0

    .line 249
    move-object/from16 v0, p0

    .line 250
    .line 251
    move/from16 v2, v16

    .line 252
    .line 253
    move/from16 v3, v17

    .line 254
    .line 255
    move v4, v11

    .line 256
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nu/ve;->c(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const-string v1, "apa_click_content_intent"

    .line 261
    .line 262
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    :cond_8
    const-string v0, "action_complete"

    .line 266
    .line 267
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    instance-of v1, v0, Ljava/lang/String;

    .line 272
    .line 273
    if-eqz v1, :cond_9

    .line 274
    .line 275
    move-object v1, v0

    .line 276
    check-cast v1, Ljava/lang/String;

    .line 277
    .line 278
    const/4 v5, 0x0

    .line 279
    move-object/from16 v0, p0

    .line 280
    .line 281
    move/from16 v2, v16

    .line 282
    .line 283
    move/from16 v3, v17

    .line 284
    .line 285
    move v4, v11

    .line 286
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nu/ve;->c(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    const-string v1, "complete_click_content_intent"

    .line 291
    .line 292
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    :cond_9
    const-string v0, "action_hide"

    .line 296
    .line 297
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    instance-of v1, v0, Ljava/lang/String;

    .line 302
    .line 303
    if-eqz v1, :cond_a

    .line 304
    .line 305
    move-object v1, v0

    .line 306
    check-cast v1, Ljava/lang/String;

    .line 307
    .line 308
    const/4 v5, 0x0

    .line 309
    move-object/from16 v0, p0

    .line 310
    .line 311
    move/from16 v2, v16

    .line 312
    .line 313
    move/from16 v3, v17

    .line 314
    .line 315
    move v4, v11

    .line 316
    invoke-direct/range {v0 .. v5}, Lcom/byazt/nu/ve;->c(Ljava/lang/String;IIZLjava/lang/String;)Landroid/app/PendingIntent;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    const-string v1, "hide_click_content_intent"

    .line 321
    .line 322
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    :cond_a
    const-string v0, "enable_notification_ui"

    .line 326
    .line 327
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-direct {v6, v0}, Lcom/byazt/nu/ve;->c(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    const-string v2, "setBackgroundResource"

    .line 336
    .line 337
    const/4 v3, -0x1

    .line 338
    if-eqz v1, :cond_b

    .line 339
    .line 340
    invoke-static {}, Lcom/byazt/nu/c;->rl()I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-virtual {v8, v15, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v8, v15, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 348
    .line 349
    .line 350
    :cond_b
    const-string v1, "show_title"

    .line 351
    .line 352
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    if-nez v1, :cond_c

    .line 357
    .line 358
    const-string v1, "\u672a\u547d\u540d"

    .line 359
    .line 360
    :cond_c
    instance-of v4, v1, Ljava/lang/String;

    .line 361
    .line 362
    if-eqz v4, :cond_d

    .line 363
    .line 364
    invoke-static {}, Lcom/byazt/nu/c;->sl()I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    check-cast v1, Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v8, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    :cond_d
    invoke-direct {v6, v0}, Lcom/byazt/nu/ve;->c(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_e

    .line 378
    .line 379
    invoke-static {}, Lcom/byazt/nu/c;->a()I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    goto :goto_7

    .line 384
    :cond_e
    invoke-static {}, Lcom/byazt/nu/c;->n()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    :goto_7
    invoke-virtual {v8, v15, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 389
    .line 390
    .line 391
    const-string v4, "percent"

    .line 392
    .line 393
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    const-string v5, "indeterminate"

    .line 398
    .line 399
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    if-eqz v4, :cond_f

    .line 404
    .line 405
    if-eqz v5, :cond_f

    .line 406
    .line 407
    move-object v11, v4

    .line 408
    check-cast v11, Ljava/lang/Integer;

    .line 409
    .line 410
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 411
    .line 412
    .line 413
    move-result v11

    .line 414
    check-cast v5, Ljava/lang/Boolean;

    .line 415
    .line 416
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    const/16 v3, 0x64

    .line 421
    .line 422
    invoke-virtual {v8, v1, v3, v11, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 423
    .line 424
    .line 425
    :cond_f
    invoke-direct {v6, v0}, Lcom/byazt/nu/ve;->c(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    const-string v5, "setBackgroundColor"

    .line 430
    .line 431
    if-eqz v3, :cond_11

    .line 432
    .line 433
    const-string v3, "bitmap"

    .line 434
    .line 435
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    if-eqz v3, :cond_10

    .line 440
    .line 441
    invoke-virtual {v8, v12, v5, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 442
    .line 443
    .line 444
    check-cast v3, Landroid/graphics/Bitmap;

    .line 445
    .line 446
    invoke-virtual {v8, v12, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 447
    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_10
    invoke-static {}, Lcom/byazt/nu/c;->rl()I

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    invoke-virtual {v8, v12, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 455
    .line 456
    .line 457
    :cond_11
    :goto_8
    invoke-static {}, Lcom/byazt/nu/c;->x()I

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    invoke-static {}, Lcom/byazt/nu/c;->sp()I

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    invoke-static {}, Lcom/byazt/nu/c;->rh()I

    .line 466
    .line 467
    .line 468
    move-result v11

    .line 469
    const-string v12, "is_bind_app"

    .line 470
    .line 471
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v12

    .line 475
    instance-of v10, v12, Ljava/lang/Boolean;

    .line 476
    .line 477
    if-eqz v10, :cond_12

    .line 478
    .line 479
    check-cast v12, Ljava/lang/Boolean;

    .line 480
    .line 481
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    if-eqz v10, :cond_12

    .line 486
    .line 487
    const/4 v10, 0x1

    .line 488
    goto :goto_9

    .line 489
    :cond_12
    const/4 v10, 0x0

    .line 490
    :goto_9
    check-cast v13, Ljava/lang/Integer;

    .line 491
    .line 492
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 493
    .line 494
    .line 495
    move-result v12

    .line 496
    const-string v13, "download_status"

    .line 497
    .line 498
    const-string v19, ""

    .line 499
    .line 500
    move-object/from16 v21, v9

    .line 501
    .line 502
    const-string v9, "download_size"

    .line 503
    .line 504
    move-object/from16 v22, v5

    .line 505
    .line 506
    const/4 v5, 0x1

    .line 507
    if-eq v12, v5, :cond_35

    .line 508
    .line 509
    const/4 v5, 0x4

    .line 510
    if-ne v12, v5, :cond_13

    .line 511
    .line 512
    goto/16 :goto_1e

    .line 513
    .line 514
    :cond_13
    const/4 v5, 0x2

    .line 515
    const-string v23, "\u7ee7\u7eed"

    .line 516
    .line 517
    if-ne v12, v5, :cond_1b

    .line 518
    .line 519
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    instance-of v12, v5, Ljava/lang/String;

    .line 524
    .line 525
    if-eqz v12, :cond_14

    .line 526
    .line 527
    move-object/from16 v19, v5

    .line 528
    .line 529
    check-cast v19, Ljava/lang/String;

    .line 530
    .line 531
    :cond_14
    if-eqz v20, :cond_18

    .line 532
    .line 533
    check-cast v14, Ljava/lang/Integer;

    .line 534
    .line 535
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    const/4 v12, 0x1

    .line 540
    if-ne v5, v12, :cond_16

    .line 541
    .line 542
    const-string v5, "progress_70"

    .line 543
    .line 544
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    check-cast v4, Ljava/lang/Integer;

    .line 549
    .line 550
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    check-cast v5, Ljava/lang/Integer;

    .line 555
    .line 556
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 557
    .line 558
    .line 559
    move-result v5

    .line 560
    if-lt v4, v5, :cond_15

    .line 561
    .line 562
    const/4 v4, 0x0

    .line 563
    invoke-virtual {v8, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 564
    .line 565
    .line 566
    move v1, v2

    .line 567
    const/16 v5, 0x8

    .line 568
    .line 569
    goto :goto_a

    .line 570
    :cond_15
    const/4 v4, 0x0

    .line 571
    const/16 v5, 0x8

    .line 572
    .line 573
    invoke-virtual {v8, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v8, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v8, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v8, v11, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 583
    .line 584
    .line 585
    const-string v1, "\u4e0b\u8f7d\u6682\u505c\u4e2d\uff0c\u70b9\u51fb\u7ee7\u7eed\u3002"

    .line 586
    .line 587
    goto :goto_b

    .line 588
    :cond_16
    const/4 v4, 0x0

    .line 589
    const/16 v5, 0x8

    .line 590
    .line 591
    invoke-virtual {v8, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 592
    .line 593
    .line 594
    invoke-direct {v6, v0}, Lcom/byazt/nu/ve;->tt(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    if-eqz v2, :cond_17

    .line 599
    .line 600
    const/4 v4, 0x0

    .line 601
    goto :goto_a

    .line 602
    :cond_17
    const/16 v4, 0x8

    .line 603
    .line 604
    :goto_a
    invoke-virtual {v8, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v8, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 608
    .line 609
    .line 610
    :cond_18
    const-string v1, "\u6682\u505c\u4e2d"

    .line 611
    .line 612
    :goto_b
    if-nez v10, :cond_1a

    .line 613
    .line 614
    const/4 v2, 0x0

    .line 615
    invoke-virtual {v8, v15, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 616
    .line 617
    .line 618
    invoke-direct {v6, v0}, Lcom/byazt/nu/ve;->tt(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-eqz v0, :cond_19

    .line 623
    .line 624
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    instance-of v2, v0, Ljava/lang/String;

    .line 629
    .line 630
    if-eqz v2, :cond_19

    .line 631
    .line 632
    check-cast v0, Ljava/lang/String;

    .line 633
    .line 634
    move-object/from16 v19, v0

    .line 635
    .line 636
    :cond_19
    move-object/from16 v0, v18

    .line 637
    .line 638
    move-object/from16 v4, v19

    .line 639
    .line 640
    move-object/from16 v2, v23

    .line 641
    .line 642
    goto/16 :goto_23

    .line 643
    .line 644
    :cond_1a
    move-object/from16 v4, v19

    .line 645
    .line 646
    move-object/from16 v19, v23

    .line 647
    .line 648
    :goto_c
    const/16 v0, 0x8

    .line 649
    .line 650
    goto/16 :goto_1b

    .line 651
    .line 652
    :cond_1b
    const/4 v4, 0x3

    .line 653
    if-ne v12, v4, :cond_34

    .line 654
    .line 655
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    instance-of v5, v4, Ljava/lang/Integer;

    .line 660
    .line 661
    const-string v10, "is_wait_wifi_and_in_net"

    .line 662
    .line 663
    const-string v12, "is_insufficient_space_error"

    .line 664
    .line 665
    const-string v13, "is_network_error"

    .line 666
    .line 667
    if-eqz v5, :cond_2e

    .line 668
    .line 669
    move-object/from16 v20, v4

    .line 670
    .line 671
    check-cast v20, Ljava/lang/Integer;

    .line 672
    .line 673
    move-object/from16 v24, v4

    .line 674
    .line 675
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    move/from16 v20, v5

    .line 680
    .line 681
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    move-object/from16 v25, v13

    .line 686
    .line 687
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v13

    .line 691
    move-object/from16 v26, v12

    .line 692
    .line 693
    const/4 v12, -0x1

    .line 694
    if-eq v4, v12, :cond_23

    .line 695
    .line 696
    const/4 v12, -0x4

    .line 697
    if-ne v4, v12, :cond_1c

    .line 698
    .line 699
    goto/16 :goto_11

    .line 700
    .line 701
    :cond_1c
    const/4 v5, -0x3

    .line 702
    if-ne v4, v5, :cond_22

    .line 703
    .line 704
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    instance-of v5, v4, Ljava/lang/String;

    .line 709
    .line 710
    if-eqz v5, :cond_1d

    .line 711
    .line 712
    check-cast v4, Ljava/lang/String;

    .line 713
    .line 714
    goto :goto_d

    .line 715
    :cond_1d
    move-object/from16 v4, v19

    .line 716
    .line 717
    :goto_d
    const-string v5, "is_mime_apk"

    .line 718
    .line 719
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v5

    .line 723
    instance-of v12, v5, Ljava/lang/Boolean;

    .line 724
    .line 725
    if-eqz v12, :cond_1f

    .line 726
    .line 727
    check-cast v5, Ljava/lang/Boolean;

    .line 728
    .line 729
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 730
    .line 731
    .line 732
    move-result v5

    .line 733
    if-eqz v5, :cond_1f

    .line 734
    .line 735
    const-string v5, "is_apk_installed"

    .line 736
    .line 737
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    instance-of v12, v5, Ljava/lang/Boolean;

    .line 742
    .line 743
    if-eqz v12, :cond_1e

    .line 744
    .line 745
    check-cast v5, Ljava/lang/Boolean;

    .line 746
    .line 747
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    if-eqz v5, :cond_1e

    .line 752
    .line 753
    const-string v5, "\u5b89\u88c5\u5b8c\u6210\uff0c\u70b9\u51fb\u6253\u5f00\u3002"

    .line 754
    .line 755
    const-string v19, "\u6253\u5f00"

    .line 756
    .line 757
    goto :goto_e

    .line 758
    :cond_1e
    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5\u3002"

    .line 759
    .line 760
    const-string v19, "\u5b89\u88c5"

    .line 761
    .line 762
    goto :goto_e

    .line 763
    :cond_1f
    const-string v5, "is_have_notification_click_callback"

    .line 764
    .line 765
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    instance-of v12, v5, Ljava/lang/Boolean;

    .line 770
    .line 771
    if-eqz v12, :cond_20

    .line 772
    .line 773
    check-cast v5, Ljava/lang/Boolean;

    .line 774
    .line 775
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 776
    .line 777
    .line 778
    move-result v5

    .line 779
    if-eqz v5, :cond_20

    .line 780
    .line 781
    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u6253\u5f00\u3002"

    .line 782
    .line 783
    goto :goto_e

    .line 784
    :cond_20
    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 785
    .line 786
    :goto_e
    move-object/from16 v12, v19

    .line 787
    .line 788
    check-cast v14, Ljava/lang/Integer;

    .line 789
    .line 790
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 791
    .line 792
    .line 793
    move-result v13

    .line 794
    const/4 v14, 0x1

    .line 795
    if-ne v13, v14, :cond_21

    .line 796
    .line 797
    invoke-virtual {v8, v15, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 798
    .line 799
    .line 800
    const/16 v13, 0x8

    .line 801
    .line 802
    invoke-virtual {v8, v11, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 803
    .line 804
    .line 805
    goto :goto_f

    .line 806
    :cond_21
    const/16 v13, 0x8

    .line 807
    .line 808
    invoke-virtual {v8, v15, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 809
    .line 810
    .line 811
    :goto_f
    move-object/from16 v18, v5

    .line 812
    .line 813
    move-object/from16 v19, v12

    .line 814
    .line 815
    goto :goto_10

    .line 816
    :cond_22
    move-object/from16 v4, v19

    .line 817
    .line 818
    move-object v5, v4

    .line 819
    :goto_10
    const/16 v12, 0x8

    .line 820
    .line 821
    goto/16 :goto_15

    .line 822
    .line 823
    :cond_23
    :goto_11
    invoke-direct {v6, v0}, Lcom/byazt/nu/ve;->tt(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v12

    .line 827
    if-eqz v12, :cond_26

    .line 828
    .line 829
    const/4 v12, -0x1

    .line 830
    if-ne v4, v12, :cond_26

    .line 831
    .line 832
    instance-of v12, v5, Ljava/lang/Boolean;

    .line 833
    .line 834
    if-eqz v12, :cond_24

    .line 835
    .line 836
    check-cast v5, Ljava/lang/Boolean;

    .line 837
    .line 838
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 839
    .line 840
    .line 841
    move-result v5

    .line 842
    if-nez v5, :cond_25

    .line 843
    .line 844
    :cond_24
    instance-of v5, v13, Ljava/lang/Boolean;

    .line 845
    .line 846
    if-eqz v5, :cond_26

    .line 847
    .line 848
    move-object v5, v13

    .line 849
    check-cast v5, Ljava/lang/Boolean;

    .line 850
    .line 851
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 852
    .line 853
    .line 854
    move-result v5

    .line 855
    if-eqz v5, :cond_26

    .line 856
    .line 857
    :cond_25
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    instance-of v12, v5, Ljava/lang/String;

    .line 862
    .line 863
    if-eqz v12, :cond_26

    .line 864
    .line 865
    move-object/from16 v19, v5

    .line 866
    .line 867
    check-cast v19, Ljava/lang/String;

    .line 868
    .line 869
    :cond_26
    const/16 v5, 0x8

    .line 870
    .line 871
    invoke-virtual {v8, v11, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 872
    .line 873
    .line 874
    const-string v5, "is_error_code_insufficient_space_error"

    .line 875
    .line 876
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v5

    .line 880
    const-string v12, "is_need_show_wait_net_text"

    .line 881
    .line 882
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v12

    .line 886
    instance-of v14, v5, Ljava/lang/Boolean;

    .line 887
    .line 888
    if-eqz v14, :cond_27

    .line 889
    .line 890
    check-cast v5, Ljava/lang/Boolean;

    .line 891
    .line 892
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 893
    .line 894
    .line 895
    move-result v5

    .line 896
    if-eqz v5, :cond_27

    .line 897
    .line 898
    const-string v5, "SdCard\u7a7a\u95f4\u4e0d\u8db3, \u4e0b\u8f7d\u5931\u8d25\u3002"

    .line 899
    .line 900
    goto :goto_13

    .line 901
    :cond_27
    instance-of v5, v12, Ljava/lang/Boolean;

    .line 902
    .line 903
    if-eqz v5, :cond_2a

    .line 904
    .line 905
    check-cast v12, Ljava/lang/Boolean;

    .line 906
    .line 907
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 908
    .line 909
    .line 910
    move-result v5

    .line 911
    if-eqz v5, :cond_2a

    .line 912
    .line 913
    const-string v5, "is_wait_wifi"

    .line 914
    .line 915
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v5

    .line 919
    instance-of v12, v5, Ljava/lang/Boolean;

    .line 920
    .line 921
    if-eqz v12, :cond_28

    .line 922
    .line 923
    check-cast v5, Ljava/lang/Boolean;

    .line 924
    .line 925
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 926
    .line 927
    .line 928
    move-result v5

    .line 929
    if-eqz v5, :cond_28

    .line 930
    .line 931
    const/4 v5, 0x1

    .line 932
    goto :goto_12

    .line 933
    :cond_28
    const/4 v5, 0x0

    .line 934
    :goto_12
    if-eqz v5, :cond_29

    .line 935
    .line 936
    const-string v5, "\u7b49\u5f85wifi\u5f00\u59cb\u4e0b\u8f7d"

    .line 937
    .line 938
    goto :goto_13

    .line 939
    :cond_29
    const-string v5, "\u7b49\u5f85\u7f51\u7edc\u7ee7\u7eed\u4e0b\u8f7d"

    .line 940
    .line 941
    goto :goto_13

    .line 942
    :cond_2a
    const-string v5, "\u4e0b\u8f7d\u5931\u8d25\u3002"

    .line 943
    .line 944
    :goto_13
    const/16 v12, 0x8

    .line 945
    .line 946
    invoke-virtual {v8, v15, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 947
    .line 948
    .line 949
    invoke-direct {v6, v0}, Lcom/byazt/nu/ve;->tt(Ljava/lang/Object;)Z

    .line 950
    .line 951
    .line 952
    move-result v12

    .line 953
    const-string v14, "\u91cd\u65b0\u4e0b\u8f7d"

    .line 954
    .line 955
    if-eqz v12, :cond_2d

    .line 956
    .line 957
    const/4 v12, -0x1

    .line 958
    if-ne v4, v12, :cond_2d

    .line 959
    .line 960
    const-string v4, "is_net_work_error"

    .line 961
    .line 962
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v4

    .line 966
    instance-of v12, v4, Ljava/lang/Boolean;

    .line 967
    .line 968
    if-eqz v12, :cond_2c

    .line 969
    .line 970
    check-cast v4, Ljava/lang/Boolean;

    .line 971
    .line 972
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 973
    .line 974
    .line 975
    move-result v4

    .line 976
    if-eqz v4, :cond_2c

    .line 977
    .line 978
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v4

    .line 982
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 983
    .line 984
    if-eqz v5, :cond_2b

    .line 985
    .line 986
    check-cast v4, Ljava/lang/Boolean;

    .line 987
    .line 988
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 989
    .line 990
    .line 991
    move-result v4

    .line 992
    if-eqz v4, :cond_2b

    .line 993
    .line 994
    const-string v4, "\u65e0Wi-Fi \u5df2\u6682\u505c"

    .line 995
    .line 996
    move-object v5, v4

    .line 997
    move-object/from16 v4, v19

    .line 998
    .line 999
    move-object/from16 v19, v23

    .line 1000
    .line 1001
    goto/16 :goto_10

    .line 1002
    .line 1003
    :cond_2b
    const-string v4, "\u4e0b\u8f7d\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 1004
    .line 1005
    move-object v5, v4

    .line 1006
    goto :goto_14

    .line 1007
    :cond_2c
    instance-of v4, v13, Ljava/lang/Boolean;

    .line 1008
    .line 1009
    if-eqz v4, :cond_2d

    .line 1010
    .line 1011
    check-cast v13, Ljava/lang/Boolean;

    .line 1012
    .line 1013
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1014
    .line 1015
    .line 1016
    move-result v4

    .line 1017
    if-eqz v4, :cond_2d

    .line 1018
    .line 1019
    const-string v4, "download_size_diff"

    .line 1020
    .line 1021
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    instance-of v12, v4, Ljava/lang/String;

    .line 1026
    .line 1027
    if-eqz v12, :cond_2d

    .line 1028
    .line 1029
    const/4 v12, 0x1

    .line 1030
    new-array v5, v12, [Ljava/lang/Object;

    .line 1031
    .line 1032
    check-cast v4, Ljava/lang/String;

    .line 1033
    .line 1034
    const/4 v12, 0x0

    .line 1035
    aput-object v4, v5, v12

    .line 1036
    .line 1037
    const-string v4, "\u7a7a\u95f4\u4e0d\u8db3 \u8fd8\u9700%s"

    .line 1038
    .line 1039
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v5

    .line 1043
    :cond_2d
    :goto_14
    move-object/from16 v4, v19

    .line 1044
    .line 1045
    const/16 v12, 0x8

    .line 1046
    .line 1047
    move-object/from16 v19, v14

    .line 1048
    .line 1049
    :goto_15
    invoke-virtual {v8, v1, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1050
    .line 1051
    .line 1052
    const/4 v13, 0x0

    .line 1053
    invoke-virtual {v8, v3, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v8, v2, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1057
    .line 1058
    .line 1059
    move-object/from16 v12, v25

    .line 1060
    .line 1061
    goto :goto_16

    .line 1062
    :cond_2e
    move-object/from16 v24, v4

    .line 1063
    .line 1064
    move/from16 v20, v5

    .line 1065
    .line 1066
    move-object/from16 v26, v12

    .line 1067
    .line 1068
    move-object v12, v13

    .line 1069
    move-object/from16 v4, v19

    .line 1070
    .line 1071
    move-object v5, v4

    .line 1072
    :goto_16
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v12

    .line 1076
    move-object/from16 v13, v26

    .line 1077
    .line 1078
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v13

    .line 1082
    invoke-direct {v6, v0}, Lcom/byazt/nu/ve;->tt(Ljava/lang/Object;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v0

    .line 1086
    if-eqz v0, :cond_33

    .line 1087
    .line 1088
    if-eqz v20, :cond_33

    .line 1089
    .line 1090
    move-object/from16 v0, v24

    .line 1091
    .line 1092
    check-cast v0, Ljava/lang/Integer;

    .line 1093
    .line 1094
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1095
    .line 1096
    .line 1097
    move-result v0

    .line 1098
    const/4 v14, -0x1

    .line 1099
    if-ne v0, v14, :cond_33

    .line 1100
    .line 1101
    instance-of v0, v12, Ljava/lang/Boolean;

    .line 1102
    .line 1103
    if-eqz v0, :cond_30

    .line 1104
    .line 1105
    check-cast v12, Ljava/lang/Boolean;

    .line 1106
    .line 1107
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1108
    .line 1109
    .line 1110
    move-result v0

    .line 1111
    if-nez v0, :cond_2f

    .line 1112
    .line 1113
    goto :goto_18

    .line 1114
    :cond_2f
    :goto_17
    const/4 v0, 0x0

    .line 1115
    goto :goto_19

    .line 1116
    :cond_30
    :goto_18
    instance-of v0, v13, Ljava/lang/Boolean;

    .line 1117
    .line 1118
    if-eqz v0, :cond_33

    .line 1119
    .line 1120
    check-cast v13, Ljava/lang/Boolean;

    .line 1121
    .line 1122
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1123
    .line 1124
    .line 1125
    move-result v0

    .line 1126
    if-eqz v0, :cond_33

    .line 1127
    .line 1128
    goto :goto_17

    .line 1129
    :goto_19
    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1130
    .line 1131
    .line 1132
    const/16 v1, 0x8

    .line 1133
    .line 1134
    invoke-virtual {v8, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1138
    .line 1139
    .line 1140
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 1145
    .line 1146
    if-eqz v2, :cond_32

    .line 1147
    .line 1148
    check-cast v1, Ljava/lang/Boolean;

    .line 1149
    .line 1150
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v1

    .line 1154
    if-eqz v1, :cond_32

    .line 1155
    .line 1156
    invoke-virtual {v8, v15, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1157
    .line 1158
    .line 1159
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v0

    .line 1163
    instance-of v1, v0, Ljava/lang/String;

    .line 1164
    .line 1165
    if-eqz v1, :cond_31

    .line 1166
    .line 1167
    check-cast v0, Ljava/lang/String;

    .line 1168
    .line 1169
    goto :goto_1a

    .line 1170
    :cond_31
    move-object v0, v4

    .line 1171
    :goto_1a
    move-object v4, v0

    .line 1172
    goto :goto_1c

    .line 1173
    :cond_32
    move-object v1, v5

    .line 1174
    goto/16 :goto_c

    .line 1175
    .line 1176
    :goto_1b
    invoke-virtual {v8, v15, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1177
    .line 1178
    .line 1179
    goto :goto_1d

    .line 1180
    :cond_33
    :goto_1c
    move-object v1, v5

    .line 1181
    :goto_1d
    move-object/from16 v0, v18

    .line 1182
    .line 1183
    move-object/from16 v2, v19

    .line 1184
    .line 1185
    goto :goto_23

    .line 1186
    :cond_34
    move-object/from16 v0, v18

    .line 1187
    .line 1188
    move-object/from16 v1, v19

    .line 1189
    .line 1190
    move-object v2, v1

    .line 1191
    move-object v4, v2

    .line 1192
    goto :goto_23

    .line 1193
    :cond_35
    :goto_1e
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v4

    .line 1197
    instance-of v5, v4, Ljava/lang/String;

    .line 1198
    .line 1199
    if-eqz v5, :cond_36

    .line 1200
    .line 1201
    check-cast v4, Ljava/lang/String;

    .line 1202
    .line 1203
    goto :goto_1f

    .line 1204
    :cond_36
    move-object/from16 v4, v19

    .line 1205
    .line 1206
    :goto_1f
    const/4 v5, 0x1

    .line 1207
    if-ne v12, v5, :cond_38

    .line 1208
    .line 1209
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v5

    .line 1213
    instance-of v7, v5, Ljava/lang/Integer;

    .line 1214
    .line 1215
    if-eqz v7, :cond_39

    .line 1216
    .line 1217
    check-cast v5, Ljava/lang/Integer;

    .line 1218
    .line 1219
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1220
    .line 1221
    .line 1222
    move-result v5

    .line 1223
    const/16 v7, 0xb

    .line 1224
    .line 1225
    if-ne v5, v7, :cond_37

    .line 1226
    .line 1227
    const-string v5, "\u5904\u7406\u4e2d"

    .line 1228
    .line 1229
    goto :goto_20

    .line 1230
    :cond_37
    const-string v19, "\u6b63\u5728\u4e0b\u8f7d"

    .line 1231
    .line 1232
    goto :goto_21

    .line 1233
    :cond_38
    const-string v5, "\u51c6\u5907\u4e2d"

    .line 1234
    .line 1235
    :goto_20
    move-object/from16 v19, v5

    .line 1236
    .line 1237
    :cond_39
    :goto_21
    const/4 v5, 0x0

    .line 1238
    invoke-virtual {v8, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1239
    .line 1240
    .line 1241
    const/16 v1, 0x8

    .line 1242
    .line 1243
    invoke-virtual {v8, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v8, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1247
    .line 1248
    .line 1249
    if-eqz v10, :cond_3a

    .line 1250
    .line 1251
    const/16 v10, 0x8

    .line 1252
    .line 1253
    goto :goto_22

    .line 1254
    :cond_3a
    const/4 v10, 0x0

    .line 1255
    :goto_22
    invoke-virtual {v8, v15, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1256
    .line 1257
    .line 1258
    invoke-direct {v6, v0}, Lcom/byazt/nu/ve;->tt(Ljava/lang/Object;)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    if-eqz v0, :cond_3b

    .line 1263
    .line 1264
    invoke-virtual {v8, v15, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1265
    .line 1266
    .line 1267
    :cond_3b
    const-string v0, "\u6682\u505c"

    .line 1268
    .line 1269
    move-object v2, v0

    .line 1270
    move-object/from16 v0, v18

    .line 1271
    .line 1272
    move-object/from16 v1, v19

    .line 1273
    .line 1274
    :goto_23
    invoke-static {}, Lcom/byazt/nu/c;->nu()I

    .line 1275
    .line 1276
    .line 1277
    move-result v3

    .line 1278
    invoke-virtual {v8, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1279
    .line 1280
    .line 1281
    invoke-static {}, Lcom/byazt/nu/c;->my()I

    .line 1282
    .line 1283
    .line 1284
    move-result v3

    .line 1285
    invoke-virtual {v8, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v8, v11, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1289
    .line 1290
    .line 1291
    invoke-static {}, Lcom/byazt/nu/c;->gt()I

    .line 1292
    .line 1293
    .line 1294
    move-result v3

    .line 1295
    invoke-virtual {v8, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1296
    .line 1297
    .line 1298
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v1

    .line 1302
    if-eqz v1, :cond_3c

    .line 1303
    .line 1304
    const/16 v1, 0x8

    .line 1305
    .line 1306
    invoke-virtual {v8, v15, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1307
    .line 1308
    .line 1309
    goto :goto_24

    .line 1310
    :cond_3c
    invoke-virtual {v8, v15, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1311
    .line 1312
    .line 1313
    :goto_24
    :try_start_0
    iget-object v1, v6, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    .line 1314
    .line 1315
    invoke-static {v1}, Lcom/byazt/nu/ve;->isMaterialNotification(Landroid/content/Context;)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v1

    .line 1319
    if-eqz v1, :cond_3d

    .line 1320
    .line 1321
    invoke-static {}, Lcom/byazt/nu/c;->uj()I

    .line 1322
    .line 1323
    .line 1324
    move-result v1

    .line 1325
    const-string v2, "#fffafafa"

    .line 1326
    .line 1327
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1328
    .line 1329
    .line 1330
    move-result v2

    .line 1331
    move-object/from16 v3, v22

    .line 1332
    .line 1333
    invoke-virtual {v8, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    .line 1335
    .line 1336
    :catchall_0
    :cond_3d
    const-string v1, "remote_views"

    .line 1337
    .line 1338
    move-object/from16 v2, v21

    .line 1339
    .line 1340
    invoke-interface {v2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    const-string v1, "builder_content_type"

    .line 1344
    .line 1345
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    .line 1347
    .line 1348
    return-object v2
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/byazt/rl/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    const v0, -0x5f5e0f3

    .line 3
    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v0

    const v1, -0x5f5e0f1

    .line 4
    const-class v2, Ljava/lang/Class;

    invoke-interface {p1, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const v2, -0x5f5e0f2

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/byazt/rl/ve;->c()Lcom/byazt/rl/ve;

    move-result-object p1

    const/16 v0, 0x2710

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/byazt/rl/ve;->c(II)Lcom/byazt/rl/ve;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x0

    .line 9
    const-class v3, Ljava/util/Map;

    invoke-interface {p1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {p1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/byazt/nu/ve;->callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/nu/ve;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const v1, -0x5f5e0f3

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/nu/ve;->ve:Ljava/util/function/Function;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    const-string p1, "api:"

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "xgc_dl"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_5

    .line 17
    .line 18
    const/16 p1, 0x9f

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eq p2, p1, :cond_3

    .line 22
    .line 23
    const/16 p1, 0xa1

    .line 24
    .line 25
    if-eq p2, p1, :cond_2

    .line 26
    .line 27
    const/16 p1, 0x9b

    .line 28
    .line 29
    if-eq p2, p1, :cond_1

    .line 30
    .line 31
    const/16 p1, 0x9c

    .line 32
    .line 33
    if-eq p2, p1, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    invoke-direct {p0, p3}, Lcom/byazt/nu/ve;->c(Ljava/util/Map;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    const-string p1, "custom_authority"

    .line 42
    .line 43
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    const-string p2, "custom_file_path"

    .line 50
    .line 51
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/byazt/nu/ve;->getCustomUriForFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_2
    invoke-direct {p0, p3}, Lcom/byazt/nu/ve;->tt(Ljava/util/Map;)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_3
    if-eqz p3, :cond_4

    .line 68
    .line 69
    const-string p1, "n"

    .line 70
    .line 71
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Ln0/b;->a(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/byazt/nu/ve;->ve:Ljava/util/function/Function;

    .line 86
    .line 87
    :cond_4
    return-object v0

    .line 88
    :cond_5
    iget-object p1, p0, Lcom/byazt/nu/ve;->ve:Ljava/util/function/Function;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    new-instance p1, Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 95
    .line 96
    .line 97
    const p2, -0x5f5e0f3

    .line 98
    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/byazt/nu/ve;->ve:Ljava/util/function/Function;

    .line 112
    .line 113
    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    return-object p1
.end method

.method public getCustomUriForFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/nu/ve;->tt:Landroid/content/Context;

    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    return-object p1
.end method
