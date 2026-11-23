.class public Lcom/byazt/lk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2cb,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ut/i;


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

.method private c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;)Landroid/util/Pair;
    .locals 1

    .line 26
    invoke-virtual {p1, p2}, Lcom/byazt/ut/sl;->c(Lcom/byazt/dna/c;)Ljava/lang/Object;

    move-result-object p2

    .line 27
    invoke-static {p2}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {p2}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/rj/c;->tt(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Lcom/byazt/ut/sl;->tt()Ljava/util/function/Function;

    move-result-object p1

    if-nez p1, :cond_0

    .line 30
    invoke-static {}, Lcom/byazt/ut/uj;->getInstance()Lcom/byazt/ut/uj;

    move-result-object p1

    .line 31
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/byazt/dna/c;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :sswitch_0
    new-instance p1, Lcom/byazt/ut/n;

    invoke-direct {p1, p2}, Lcom/byazt/ut/n;-><init>(Lcom/byazt/dna/c;)V

    return-object p1

    :sswitch_1
    new-instance p1, Lcom/byazt/eq/c;

    invoke-static {}, Lcom/byazt/xky/c;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/byazt/xky/c;->c()Lcom/byazt/lz/ve;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/byazt/eq/c;-><init>(Landroid/content/Context;Lcom/byazt/lz/ve;)V

    return-object p1

    :sswitch_2
    new-instance p1, Lcom/byazt/ukr/uj;

    invoke-direct {p1}, Lcom/byazt/ukr/uj;-><init>()V

    return-object p1

    :sswitch_3
    new-instance p1, Lcom/byazt/ut/a;

    invoke-direct {p1}, Lcom/byazt/ut/a;-><init>()V

    return-object p1

    :sswitch_4
    new-instance p1, Lcom/byazt/xq/c;

    invoke-direct {p1, p2}, Lcom/byazt/xq/c;-><init>(Lcom/byazt/dna/c;)V

    return-object p1

    :sswitch_5
    new-instance p1, Lcom/byazt/ut/ve;

    invoke-direct {p1}, Lcom/byazt/ut/ve;-><init>()V

    return-object p1

    :sswitch_6
    new-instance p1, Lcom/byazt/bdf/c;

    invoke-direct {p1}, Lcom/byazt/bdf/c;-><init>()V

    return-object p1

    :sswitch_7
    new-instance p1, Lcom/byazt/dc/c;

    invoke-direct {p1}, Lcom/byazt/dc/c;-><init>()V

    return-object p1

    :sswitch_8
    new-instance p1, Lcom/byazt/ut/sp;

    invoke-direct {p1}, Lcom/byazt/ut/sp;-><init>()V

    return-object p1

    :sswitch_9
    new-instance p1, Lcom/byazt/ukr/ve;

    invoke-direct {p1}, Lcom/byazt/ukr/ve;-><init>()V

    return-object p1

    :sswitch_a
    new-instance p1, Lcom/byazt/omf/AdSdkInitializerHolder;

    invoke-direct {p1}, Lcom/byazt/omf/AdSdkInitializerHolder;-><init>()V

    return-object p1

    :sswitch_b
    new-instance p1, Lcom/byazt/ut/x;

    invoke-direct {p1}, Lcom/byazt/ut/x;-><init>()V

    return-object p1

    :sswitch_c
    new-instance p1, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;

    invoke-direct {p1}, Lcom/byazt/tjo/DispatchAdSdkInitializerHolder;-><init>()V

    return-object p1

    :sswitch_d
    new-instance p1, Lcom/byazt/ut/u;

    invoke-direct {p1}, Lcom/byazt/ut/u;-><init>()V

    return-object p1

    :sswitch_e
    new-instance p1, Lcom/byazt/yj/nb;

    invoke-direct {p1}, Lcom/byazt/yj/nb;-><init>()V

    return-object p1

    :sswitch_f
    new-instance p1, Lcom/byazt/whk/a;

    invoke-direct {p1}, Lcom/byazt/whk/a;-><init>()V

    return-object p1

    :sswitch_10
    new-instance p1, Lcom/byazt/vif/ve;

    invoke-direct {p1}, Lcom/byazt/vif/ve;-><init>()V

    return-object p1

    :sswitch_11
    new-instance p1, Lcom/byazt/oz/tt;

    invoke-static {}, Lcom/byazt/xky/c;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/byazt/xky/c;->tt()Lcom/byazt/yj/my;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/byazt/oz/tt;-><init>(Landroid/content/Context;Lcom/byazt/yj/my;)V

    return-object p1

    :sswitch_12
    new-instance p1, Lcom/byazt/ut/t;

    invoke-direct {p1}, Lcom/byazt/ut/t;-><init>()V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b854f42 -> :sswitch_12
        -0x40916dc7 -> :sswitch_11
        -0x3bfcfb0f -> :sswitch_10
        -0x3ae36052 -> :sswitch_f
        -0x2937e69d -> :sswitch_e
        -0x198d2e80 -> :sswitch_d
        0x6d -> :sswitch_c
        0x1a521 -> :sswitch_b
        0x59923a3 -> :sswitch_a
        0x5c6729a -> :sswitch_9
        0x62cb486 -> :sswitch_8
        0x22e91727 -> :sswitch_7
        0x24fd9757 -> :sswitch_6
        0x27461fb5 -> :sswitch_5
        0x2f00538a -> :sswitch_4
        0x481be7d8 -> :sswitch_3
        0x52dde1a9 -> :sswitch_2
        0x53e80a58 -> :sswitch_1
        0x5dc004c8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Z)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ut/sl;",
            "Lcom/byazt/dna/c;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/util/function/Function;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/ut/sl;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ut/sl;->tt()Ljava/util/function/Function;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_0

    .line 6
    :try_start_1
    iget-object v1, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-static {p3, v1, p2}, Lcom/byazt/rj/c;->c(Ljava/util/function/Function;Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_2

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p3, v0

    goto :goto_2

    :cond_1
    move-object p3, v0

    move-object v1, p3

    .line 7
    :goto_0
    :try_start_2
    iget v2, p1, Lcom/byazt/ut/sl;->ve:I

    if-gez v2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/byazt/lk/c;->c:Lcom/byazt/ut/i;

    if-eqz p2, :cond_2

    .line 9
    iget-object v2, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "version is not valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v3}, Lcom/byazt/ut/i;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v0

    .line 10
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/byazt/lk/c;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 11
    :cond_4
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 12
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/byazt/lk/c;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    monitor-exit p1

    return-object v0

    .line 14
    :cond_5
    invoke-virtual {p1, p2}, Lcom/byazt/ut/sl;->c(Lcom/byazt/dna/c;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p1

    return-object p2

    .line 16
    :cond_6
    iget-object v0, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/byazt/lk/c;->c(Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 17
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 18
    :try_start_5
    invoke-static {}, Lcom/byazt/ut/uj;->getInstance()Lcom/byazt/ut/uj;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 19
    :try_start_6
    iget-object p3, p0, Lcom/byazt/lk/c;->c:Lcom/byazt/ut/i;

    if-eqz p3, :cond_7

    .line 20
    iget-object v1, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    iget v2, p1, Lcom/byazt/ut/sl;->ve:I

    invoke-interface {p3, v1, v0, v2}, Lcom/byazt/ut/i;->c(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 21
    :cond_7
    invoke-virtual {p1}, Lcom/byazt/ut/sl;->n()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/byazt/ut/sl;->c(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p3

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    goto :goto_2

    :catchall_3
    move-exception p2

    move-object v0, v1

    .line 22
    :goto_1
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_4
    move-exception p2

    goto :goto_1

    :catchall_5
    move-exception p2

    move-object v0, v1

    .line 23
    :goto_2
    iget-object v1, p0, Lcom/byazt/lk/c;->c:Lcom/byazt/ut/i;

    if-eqz v1, :cond_8

    .line 24
    iget-object p1, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-interface {v1, p1, p2}, Lcom/byazt/ut/i;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    move-object p2, p3

    .line 25
    :goto_3
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/dna/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ut/tt;

    invoke-direct {v0, p1}, Lcom/byazt/ut/tt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Lcom/byazt/ut/i;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/lk/c;->c:Lcom/byazt/ut/i;

    return-void
.end method
