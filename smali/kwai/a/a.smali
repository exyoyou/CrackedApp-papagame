.class public Lkwai/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkwai/a/a$b;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Application;

.field public b:J

.field public c:Z

.field public d:Z

.field public final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lkwai/a/a;->b:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lkwai/a/a;->c:Z

    .line 5
    iput-boolean v0, p0, Lkwai/a/a;->d:Z

    .line 6
    new-instance v0, Lkwai/a/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lkwai/a/a$a;-><init>(Lkwai/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lkwai/a/a;->e:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lkwai/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkwai/a/a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lkwai/a/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkwai/a/a;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "activity"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/app/ActivityManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 34
    .line 35
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 42
    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    const/16 v3, 0x64

    .line 48
    .line 49
    if-ne v2, v3, :cond_1

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkwai/a/a;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, Lkwai/a/a;->e:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x1000

    .line 15
    .line 16
    iput v2, v1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    iget-object v2, p0, Lkwai/a/a;->e:Landroid/os/Handler;

    .line 19
    .line 20
    const-wide/16 v3, 0x2710

    .line 21
    .line 22
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, Lkwai/a/a;->b:J

    .line 26
    .line 27
    const-wide/32 v3, 0xdbba0

    .line 28
    .line 29
    .line 30
    cmp-long v5, v1, v3

    .line 31
    .line 32
    if-ltz v5, :cond_0

    .line 33
    .line 34
    iget-boolean v3, p0, Lkwai/a/a;->c:Z

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    new-instance v3, Lfc/a;

    .line 39
    .line 40
    const-string v4, "EVENT_GAME_REPORT_15MIN_DURATION_AUTOMATIC"

    .line 41
    .line 42
    invoke-direct {v3, v4}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-wide v1, v3, Lfc/a;->c:J

    .line 46
    .line 47
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 48
    .line 49
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Lkwai/a/e;->b(Lfc/a;)V

    .line 52
    .line 53
    .line 54
    iput-boolean v0, p0, Lkwai/a/a;->c:Z

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lkwai/a/a;->a:Landroid/app/Application;

    .line 57
    .line 58
    iget-wide v1, p0, Lkwai/a/a;->b:J

    .line 59
    .line 60
    const-string v3, "ks_active_duration"

    .line 61
    .line 62
    invoke-static {v0, v3, v1, v2}, Lec/c;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "activeTime:"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-wide v1, p0, Lkwai/a/a;->b:J

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, "AutomaticManager"

    .line 85
    .line 86
    invoke-static {v1, v0}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "AutomaticManager"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lfc/a;

    .line 4
    .line 5
    const-string v2, "EVENT_ACTIVE_AUTOMATIC"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 11
    .line 12
    iget-object v3, v2, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Lkwai/a/e;->b(Lfc/a;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lkwai/a/a;->a:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    const-string v3, "ks_active_duration"

    .line 20
    .line 21
    :try_start_1
    invoke-static {v1}, Lec/c;->b(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lec/c;->c:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-wide v6, v4

    .line 36
    :goto_0
    cmp-long v1, v6, v4

    .line 37
    .line 38
    if-lez v1, :cond_1

    .line 39
    .line 40
    new-instance v1, Lfc/a;

    .line 41
    .line 42
    const-string v3, "EVENT_GAME_REPORT_DURATION_AUTOMATIC"

    .line 43
    .line 44
    invoke-direct {v1, v3}, Lfc/a;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-wide v6, v1, Lfc/a;->c:J

    .line 48
    .line 49
    iget-object v2, v2, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lkwai/a/e;->b(Lfc/a;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    instance-of v1, p1, Landroid/app/Application;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Landroid/app/Application;

    .line 60
    .line 61
    iput-object v1, p0, Lkwai/a/a;->a:Landroid/app/Application;

    .line 62
    .line 63
    new-instance v2, Lec/a;

    .line 64
    .line 65
    invoke-direct {v2, p0, p1}, Lec/a;-><init>(Lkwai/a/a;Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lkwai/a/a;->d(Landroid/content/Context;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    iget-boolean p1, p0, Lkwai/a/a;->d:Z

    .line 78
    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    const-string p1, "\u8d70\u8fdb\u515c\u5e95\u8ba1\u65f6\u903b\u8f91\u4efb\u52a1"

    .line 82
    .line 83
    invoke-static {v0, p1}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lkwai/a/a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_1
    return-void
.end method
