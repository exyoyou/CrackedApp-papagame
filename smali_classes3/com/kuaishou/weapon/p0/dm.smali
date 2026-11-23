.class public Lcom/kuaishou/weapon/p0/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kuaishou/weapon/p0/dm$d;,
        Lcom/kuaishou/weapon/p0/dm$c;,
        Lcom/kuaishou/weapon/p0/dm$b;,
        Lcom/kuaishou/weapon/p0/dm$a;,
        Lcom/kuaishou/weapon/p0/dm$e;
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

.method public static declared-synchronized a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 4

    .line 1
    const-class v0, Lcom/kuaishou/weapon/p0/dm;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_6

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x19

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lb2/a;->a()I

    .line 20
    .line 21
    .line 22
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    :cond_1
    if-le v1, v2, :cond_3

    .line 26
    .line 27
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$d;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    :try_start_2
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$b;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :cond_3
    const/16 v2, 0x18

    .line 38
    .line 39
    if-ne v1, v2, :cond_4

    .line 40
    .line 41
    :try_start_3
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$c;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_1
    move-exception v1

    .line 47
    :try_start_4
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_2
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 52
    :cond_4
    const/16 v2, 0x17

    .line 53
    .line 54
    if-lt v1, v2, :cond_5

    .line 55
    .line 56
    :try_start_6
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$b;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :catchall_3
    move-exception v1

    .line 62
    :try_start_7
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 63
    .line 64
    .line 65
    :goto_0
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_4
    :try_start_8
    throw v1

    .line 68
    :cond_5
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 69
    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :catchall_5
    move-exception p0

    .line 74
    monitor-exit v0

    .line 75
    throw p0

    .line 76
    :cond_6
    :goto_1
    monitor-exit v0

    .line 77
    return-void
.end method
