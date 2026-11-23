.class public Lcom/byazt/bp/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x380,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/bp/tt$c;
    }
.end annotation


# static fields
.field public static volatile c:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static volatile tt:Lcom/byazt/qe/ve;

.field public static volatile ve:Lcom/byazt/le/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/le/c<",
            "Lcom/byazt/ng/c;",
            ">;"
        }
    .end annotation
.end field


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

.method public static c()Lcom/byazt/le/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/le/c<",
            "Lcom/byazt/ng/c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/bp/tt;->ve:Lcom/byazt/le/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/bp/tt;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/bp/tt;->ve:Lcom/byazt/le/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/le/tt;

    invoke-direct {v1}, Lcom/byazt/le/tt;-><init>()V

    sput-object v1, Lcom/byazt/bp/tt;->ve:Lcom/byazt/le/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/bp/tt;->ve:Lcom/byazt/le/c;

    return-object v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/byazt/bp/tt;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/byazt/bp/tt;->c:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 8
    const-class v1, Lcom/byazt/bp/tt;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    invoke-static {}, Lcom/byazt/bp/tt$c;->c()Landroid/app/Application;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 10
    :try_start_2
    invoke-static {}, Lcom/byazt/bp/tt$c;->c()Landroid/app/Application;

    move-result-object v2

    .line 11
    sput-object v2, Lcom/byazt/bp/tt;->c:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 12
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    nop

    :cond_0
    if-eqz p0, :cond_1

    .line 13
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/byazt/bp/tt;->c:Landroid/content/Context;

    .line 14
    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 15
    :cond_2
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bp/tt;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/byazt/bp/tt;->c(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/byazt/bp/tt;->c:Landroid/content/Context;

    .line 10
    .line 11
    return-object v0
.end method

.method public static tt()Lcom/byazt/qe/ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/bp/tt;->tt:Lcom/byazt/qe/ve;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/qe/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/bp/tt;->tt:Lcom/byazt/qe/ve;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/qe/ve;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/qe/ve;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/bp/tt;->tt:Lcom/byazt/qe/ve;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/bp/tt;->tt:Lcom/byazt/qe/ve;

    .line 25
    .line 26
    return-object v0
.end method
