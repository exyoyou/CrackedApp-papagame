.class public final Lcom/byazt/uy/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x49c,
        0x47
    }
.end annotation


# static fields
.field public static a:Lcom/byazt/rx/tt; = null

.field public static c:Landroid/content/Context; = null

.field public static volatile da:I = 0x0

.field public static i:Lcom/byazt/rx/x; = null

.field public static n:Lcom/byazt/rx/c; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static volatile sl:Ljava/lang/String; = null

.field public static sp:Lcom/byazt/uy/tt; = null

.field public static tt:J = 0x0L

.field public static uj:Z = false

.field public static ve:Ljava/lang/String; = "default"

.field public static volatile x:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/rx/tt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/rx/tt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/uy/x;->a:Lcom/byazt/rx/tt;

    .line 7
    .line 8
    new-instance v0, Lcom/byazt/uy/tt;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/byazt/uy/tt;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/uy/x;->sp:Lcom/byazt/uy/tt;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/byazt/uy/x;->i:Lcom/byazt/rx/x;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/uy/x;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static c()Lcom/byazt/rx/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/uy/x;->n:Lcom/byazt/rx/c;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/uy/n;)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/uy/x;->tt:J

    .line 3
    sput-object p0, Lcom/byazt/uy/x;->c:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/byazt/rx/c;

    invoke-direct {v0, p0, p1}, Lcom/byazt/rx/c;-><init>(Landroid/content/Context;Lcom/byazt/uy/n;)V

    sput-object v0, Lcom/byazt/uy/x;->n:Lcom/byazt/rx/c;

    return-void
.end method

.method public static da()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/uy/x;->da:I

    .line 2
    .line 3
    return v0
.end method

.method public static i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/byazt/uy/x;->x:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static n()Lcom/byazt/rx/tt;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/uy/x;->a:Lcom/byazt/rx/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/uy/x;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/uy/x;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static tt()Lcom/byazt/uy/tt;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/uy/x;->sp:Lcom/byazt/uy/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public static uj()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/uy/x;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static ve()Lcom/byazt/rx/x;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/uy/x;->i:Lcom/byazt/rx/x;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/byazt/uy/x;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/byazt/rx/x;

    .line 9
    .line 10
    sget-object v2, Lcom/byazt/uy/x;->c:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/byazt/rx/x;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/byazt/uy/x;->i:Lcom/byazt/rx/x;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1

    .line 22
    :cond_0
    :goto_0
    sget-object v0, Lcom/byazt/uy/x;->i:Lcom/byazt/rx/x;

    .line 23
    .line 24
    return-object v0
.end method

.method public static x()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/uy/x;->uj:Z

    .line 2
    .line 3
    return v0
.end method
