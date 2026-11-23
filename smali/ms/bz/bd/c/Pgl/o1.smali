.class public final Lms/bz/bd/c/Pgl/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lms/bz/bd/c/Pgl/o1;


# instance fields
.field private tt:Landroid/content/Context;

.field private ve:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lms/bz/bd/c/Pgl/o1;->tt:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/o1;->ve:Ljava/util/ArrayList;

    iput-object p1, p0, Lms/bz/bd/c/Pgl/o1;->tt:Landroid/content/Context;

    return-void
.end method

.method public static c(Landroid/content/Context;)Lms/bz/bd/c/Pgl/o1;
    .locals 2

    .line 2
    sget-object v0, Lms/bz/bd/c/Pgl/o1;->c:Lms/bz/bd/c/Pgl/o1;

    if-nez v0, :cond_1

    const-class v0, Lms/bz/bd/c/Pgl/o1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lms/bz/bd/c/Pgl/o1;->c:Lms/bz/bd/c/Pgl/o1;

    if-nez v1, :cond_0

    new-instance v1, Lms/bz/bd/c/Pgl/o1;

    invoke-direct {v1, p0}, Lms/bz/bd/c/Pgl/o1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lms/bz/bd/c/Pgl/o1;->c:Lms/bz/bd/c/Pgl/o1;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lms/bz/bd/c/Pgl/o1;->c:Lms/bz/bd/c/Pgl/o1;

    return-object p0
.end method


# virtual methods
.method public final c()I
    .locals 10

    .line 1
    iget-object v0, p0, Lms/bz/bd/c/Pgl/o1;->tt:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const/16 v2, 0x25

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "9ac916"

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x5

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "5aa482"

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-array v9, v2, [B

    fill-array-data v9, :array_2

    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "eeb620"

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    return v0

    :array_0
    .array-data 1
        0x29t
        0x6dt
        0x14t
        0x5ft
        0x1t
        0x28t
        0x3et
        0xet
        0x3bt
        0x67t
        0x3ct
        0x66t
        0x1et
        0x59t
        0x40t
        0x20t
        0x39t
        0x54t
        0x3bt
        0x66t
        0x26t
        0x2dt
        0x32t
        0x6ct
        0x3at
        0x15t
        0x1ft
        0x72t
        0xbt
        0x56t
        0xbt
        0x4bt
        0x31t
        0x63t
        0x29t
        0x4t
        0x1et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x28t
        0x66t
        0x4t
        0x45t
        0xbt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x67t
        0x64t
        0x10t
        0x4et
        0x8t
    .end array-data
.end method

.method public final declared-synchronized n()[I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lms/bz/bd/c/Pgl/o1;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    new-array v0, v1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :try_start_1
    new-array v0, v2, [I

    iget-object v2, p0, Lms/bz/bd/c/Pgl/o1;->ve:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v2, p0, Lms/bz/bd/c/Pgl/o1;->ve:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0xa

    if-gtz v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-object v2

    :catchall_0
    :try_start_3
    new-array v0, v1, [I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final tt()I
    .locals 9

    iget-object v0, p0, Lms/bz/bd/c/Pgl/o1;->tt:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const/16 v2, 0x25

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "9db7e8"

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x6

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "121b32"

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    nop

    :array_0
    .array-data 1
        0x29t
        0x68t
        0x15t
        0x51t
        0x55t
        0x26t
        0x3et
        0xbt
        0x3at
        0x69t
        0x3ct
        0x63t
        0x1ft
        0x57t
        0x14t
        0x2et
        0x39t
        0x51t
        0x3at
        0x68t
        0x26t
        0x28t
        0x33t
        0x62t
        0x6et
        0x1bt
        0x1ft
        0x77t
        0xat
        0x58t
        0xbt
        0x4et
        0x30t
        0x6dt
        0x7dt
        0xat
        0x1et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x33t
        0x24t
        0x43t
        0x2t
        0x19t
        0x36t
    .end array-data
.end method

.method public final uj()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lms/bz/bd/c/Pgl/pble;->c()Landroid/app/Activity;

    .line 3
    .line 4
    .line 5
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    const/4 v1, -0x1

    .line 13
    :goto_0
    if-eq v1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x2c

    .line 16
    .line 17
    new-array v6, v0, [B

    .line 18
    .line 19
    fill-array-data v6, :array_0

    .line 20
    .line 21
    .line 22
    const v1, 0x1000001

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    const-string v5, "d997ca"

    .line 29
    .line 30
    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35
    :try_start_2
    invoke-virtual {p0}, Lms/bz/bd/c/Pgl/o1;->ve()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0}, Lms/bz/bd/c/Pgl/o1;->c()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    monitor-exit p0

    .line 44
    mul-int/lit16 v0, v0, 0x2710

    .line 45
    .line 46
    add-int/2addr v0, v1

    .line 47
    goto :goto_1

    .line 48
    :catchall_1
    move-exception v0

    .line 49
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 51
    :catchall_2
    move-exception v0

    .line 52
    throw v0

    .line 53
    :catch_0
    const/16 v0, -0x2711

    .line 54
    .line 55
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-object v1, p0, Lms/bz/bd/c/Pgl/o1;->ve:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :try_start_4
    iget-object v0, p0, Lms/bz/bd/c/Pgl/o1;->ve:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/16 v1, 0x14

    .line 74
    .line 75
    if-le v0, v1, :cond_3

    .line 76
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    iget-object v2, p0, Lms/bz/bd/c/Pgl/o1;->ve:Ljava/util/ArrayList;

    .line 80
    .line 81
    add-int/lit8 v3, v0, -0xa

    .line 82
    .line 83
    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lms/bz/bd/c/Pgl/o1;->ve:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lms/bz/bd/c/Pgl/o1;->ve:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 96
    .line 97
    :catchall_3
    :cond_3
    return-void

    .line 98
    nop

    .line 99
    :array_0
    .array-data 1
        0x76t
        0x33t
        0x4ft
        0x40t
        0x57t
        0x36t
        0x61t
        0x1dt
        0x7ct
        0x64t
        0x7dt
        0x19t
        0x4bt
        0x57t
        0x48t
        0x73t
        0x75t
        0x1t
        0x5bt
        0x73t
        0x74t
        0x2ft
        0x5ft
        0x50t
        0x6ft
        0x62t
        0x75t
        0x11t
        0x66t
        0x60t
        0x35t
        0x32t
        0x44t
        0x3t
        0x5et
        0x77t
        0x64t
        0x13t
        0x6ft
        0x75t
        0x7at
        0x2et
        0x44t
        0x47t
    .end array-data
.end method

.method public final ve()I
    .locals 9

    iget-object v0, p0, Lms/bz/bd/c/Pgl/o1;->tt:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const/16 v2, 0x25

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "06808f"

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x7

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "d6bce0"

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x20t
        0x3at
        0x4ft
        0x56t
        0x8t
        0x78t
        0x37t
        0x59t
        0x60t
        0x6et
        0x35t
        0x31t
        0x45t
        0x50t
        0x49t
        0x70t
        0x30t
        0x3t
        0x60t
        0x6ft
        0x2ft
        0x7at
        0x69t
        0x65t
        0x33t
        0x45t
        0x16t
        0x25t
        0x50t
        0x5ft
        0x2t
        0x1ct
        0x6at
        0x6at
        0x20t
        0x54t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x65t
        0x38t
        0x4t
        0x10t
        0x5dt
        0x22t
        0x63t
    .end array-data
.end method
