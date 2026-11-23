.class public Lcom/sdk/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:J = 0xea60L

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/sdk/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/b/c<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/sdk/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "GET"

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sdk/a/b;->b:I

    sput-wide p2, Lcom/sdk/a/b;->c:J

    new-instance p2, Lcom/sdk/a/b$a;

    invoke-direct {p2, p0, p1}, Lcom/sdk/a/b$a;-><init>(Lcom/sdk/a/b;I)V

    iput-object p2, p0, Lcom/sdk/a/b;->a:Lcom/sdk/b/c;

    return-void
.end method

.method public static a()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/sdk/a/b;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sdk/a/b;->a:Lcom/sdk/b/c;

    .line 2
    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-virtual {v2, p1}, Lcom/sdk/b/b;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-virtual {v3, p1}, Lcom/sdk/b/b;->a(Ljava/lang/Object;)Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget v3, v1, Lcom/sdk/b/c;->b:I

    invoke-virtual {v1, p1, v2}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v3, p1

    iput v3, v1, Lcom/sdk/b/c;->b:I

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 6
    :cond_1
    iget-object v2, v1, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    monitor-exit v1

    move-object v0, p1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7
    :goto_0
    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 8
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x1

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sdk/a/b;->a:Lcom/sdk/b/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p3

    .line 9
    monitor-enter v0

    :try_start_0
    iget p3, v0, Lcom/sdk/b/c;->b:I

    invoke-virtual {v0, p1, p2}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p4

    add-int/2addr p3, p4

    iput p3, v0, Lcom/sdk/b/c;->b:I

    iget-object p3, v0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, v0, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/sdk/b/b;->a(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    if-eqz p2, :cond_1

    iget p3, v0, Lcom/sdk/b/c;->b:I

    invoke-virtual {v0, p1, p2}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, v0, Lcom/sdk/b/c;->b:I

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, v0, Lcom/sdk/b/c;->c:I

    invoke-virtual {v0, p1}, Lcom/sdk/b/c;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sdk/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method
