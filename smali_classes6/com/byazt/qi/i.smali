.class public Lcom/byazt/qi/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20f,
        0x2a
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/qi/i;

.field public static volatile tt:Z

.field public static ve:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/qi/i;->ve:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/qi/i;
    .locals 6

    .line 1
    sget-object v0, Lcom/byazt/qi/i;->c:Lcom/byazt/qi/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/qi/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/qi/i;->c:Lcom/byazt/qi/i;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "panglearmor"

    .line 5
    invoke-static {v3}, Lcom/byazt/bzd/sp;->c(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 6
    sput-boolean v3, Lcom/byazt/qi/i;->tt:Z

    .line 7
    sget-object v4, Lcom/byazt/qi/i;->ve:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v3, 0x0

    .line 8
    :try_start_2
    sput-boolean v3, Lcom/byazt/qi/i;->tt:Z

    .line 9
    sget-object v3, Lcom/byazt/qi/i;->ve:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 10
    :goto_0
    new-instance v3, Lcom/byazt/qi/i;

    invoke-direct {v3}, Lcom/byazt/qi/i;-><init>()V

    sput-object v3, Lcom/byazt/qi/i;->c:Lcom/byazt/qi/i;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 12
    invoke-static {}, Lcom/byazt/qi/a;->a()Lcom/byazt/qi/x;

    move-result-object v5

    if-eqz v5, :cond_0

    sub-long/2addr v3, v1

    .line 13
    sget-boolean v1, Lcom/byazt/qi/i;->tt:Z

    invoke-interface {v5, v3, v4, v1}, Lcom/byazt/qi/x;->c(JZ)V

    .line 14
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 15
    :cond_1
    :goto_1
    sget-object v0, Lcom/byazt/qi/i;->c:Lcom/byazt/qi/i;

    return-object v0
.end method

.method public static tt()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/qi/i;->tt:Z

    return v0
.end method

.method public static ve()I
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qi/i;->ve:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/byazt/qi/i;->tt:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/byazt/qi/i;->tt([B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 18
    sget-boolean v1, Lcom/byazt/qi/i;->tt:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/qi/i;->c([B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 20
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "message"

    .line 23
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cypher"

    const/4 v2, 0x4

    .line 24
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public c([B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 16
    array-length v1, p1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/byazt/qi/i;->tt:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3f2

    .line 17
    :try_start_0
    invoke-static {v1, p1}, Lcom/byakv/z/SoftDecTool;->bc(I[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public tt([B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    array-length v1, p1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/byazt/qi/i;->tt:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3f3

    .line 3
    :try_start_0
    invoke-static {v1, p1}, Lcom/byakv/z/SoftDecTool;->bc(I[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method
