.class public final Lcom/byazt/vif/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/eo;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x81b,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/vif/ve$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/it/n;",
            ">;"
        }
    .end annotation
.end field

.field public static final tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/it/ve;",
            ">;"
        }
    .end annotation
.end field

.field public static final ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/it/sp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/vif/ve;->c:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/vif/ve;->tt:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/byazt/vif/ve;->ve:Ljava/util/Map;

    .line 21
    .line 22
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

.method private static c(Ljava/lang/String;ZZ)Lcom/byazt/iy/n;
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lcom/byazt/vif/ve$c;->tt:Lcom/byazt/yy/uj$c;

    invoke-virtual {p2, p1}, Lcom/byazt/yy/uj$c;->c(Z)Lcom/byazt/yy/uj$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/byazt/yy/uj$c;->c(Ljava/lang/String;)Lcom/byazt/yy/uj$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yy/uj$c;->c()Lcom/byazt/iy/n;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p2, Lcom/byazt/vif/ve$c;->c:Lcom/byazt/yy/uj$c;

    invoke-virtual {p2, p1}, Lcom/byazt/yy/uj$c;->c(Z)Lcom/byazt/yy/uj$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/byazt/yy/uj$c;->c(Ljava/lang/String;)Lcom/byazt/yy/uj$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/yy/uj$c;->c()Lcom/byazt/iy/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lcom/byazt/yy/uj$c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/vif/ve;->uj()Lcom/byazt/yy/uj$c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic tt()Lcom/byazt/yy/uj$c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/vif/ve;->ve()Lcom/byazt/yy/uj$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static uj()Lcom/byazt/yy/uj$c;
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->by()I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/byazt/yy/uj$c;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/byazt/yy/uj$c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/byazt/yy/uj$c;->c(Landroid/content/Context;)Lcom/byazt/yy/uj$c;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Lcom/byazt/yy/uj$c;->c(I)Lcom/byazt/yy/uj$c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ck()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {v1, v0}, Lcom/byazt/yy/uj$c;->tt(I)Lcom/byazt/yy/uj$c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method private static ve()Lcom/byazt/yy/uj$c;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/yy/uj$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/yy/uj$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/yy/uj$c;->c(Landroid/content/Context;)Lcom/byazt/yy/uj$c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/yy/uj$c;->c(I)Lcom/byazt/yy/uj$c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v0, v2, :cond_6

    .line 17
    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    if-eq v0, v3, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :cond_0
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/ut/uj;->getAppContext(Ljava/lang/String;)Lcom/byazt/dna/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    check-cast v0, Lcom/byazt/dna/c;

    .line 42
    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/byazt/vif/ve;->getVersionIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/sp;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    new-instance v0, Lcom/byazt/it/x;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lcom/byazt/it/x;-><init>(Lcom/byazt/it/sp;)V

    .line 54
    .line 55
    .line 56
    move-object p1, v0

    .line 57
    :cond_2
    return-object p1

    .line 58
    :cond_3
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/byazt/ut/uj;->getAppContext(Ljava/lang/String;)Lcom/byazt/dna/c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_4
    check-cast v0, Lcom/byazt/dna/c;

    .line 75
    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/byazt/vif/ve;->getGlobalStorage(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/ve;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    new-instance v0, Lcom/byazt/it/uj;

    .line 85
    .line 86
    invoke-direct {v0, p1}, Lcom/byazt/it/uj;-><init>(Lcom/byazt/it/ve;)V

    .line 87
    .line 88
    .line 89
    move-object p1, v0

    .line 90
    :cond_5
    return-object p1

    .line 91
    :cond_6
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    check-cast v0, Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/byazt/ut/uj;->getAppContext(Ljava/lang/String;)Lcom/byazt/dna/c;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_7
    check-cast v0, Lcom/byazt/dna/c;

    .line 108
    .line 109
    check-cast p1, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/byazt/vif/ve;->getLayerIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/n;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    new-instance v0, Lcom/byazt/it/a;

    .line 118
    .line 119
    invoke-direct {v0, p1}, Lcom/byazt/it/a;-><init>(Lcom/byazt/it/n;)V

    .line 120
    .line 121
    .line 122
    move-object p1, v0

    .line 123
    :cond_8
    return-object p1
.end method

.method public getGlobalStorage(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/ve;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string v2, "gm_"

    .line 6
    .line 7
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x3

    .line 18
    if-le v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-static {p1, p2}, Lcom/byazt/bnf/c;->tt(Lcom/byazt/dna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    sget-object v3, Lcom/byazt/vif/ve;->tt:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/byazt/it/ve;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    return-object v4

    .line 42
    :cond_1
    monitor-enter v3

    .line 43
    :try_start_0
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/byazt/it/ve;

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    new-instance v4, Lcom/byazt/vif/c;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/byazt/dna/c;->isSupportMultiProcess()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :goto_1
    invoke-static {p2, v0, v2}, Lcom/byazt/vif/ve;->c(Ljava/lang/String;ZZ)Lcom/byazt/iy/n;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v4, p1}, Lcom/byazt/vif/c;-><init>(Lcom/byazt/iy/n;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_3
    monitor-exit v3

    .line 74
    return-object v4

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p1
.end method

.method public getLayerIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/n;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string v2, "gm_"

    .line 6
    .line 7
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x3

    .line 18
    if-le v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-static {p1, p2}, Lcom/byazt/bnf/c;->c(Lcom/byazt/dna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    sget-object v3, Lcom/byazt/vif/ve;->c:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/byazt/it/n;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    return-object v4

    .line 42
    :cond_1
    monitor-enter v3

    .line 43
    :try_start_0
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/byazt/it/n;

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    new-instance v4, Lcom/byazt/vif/tt;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/byazt/dna/c;->isSupportMultiProcess()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :goto_1
    invoke-static {p2, v0, v2}, Lcom/byazt/vif/ve;->c(Ljava/lang/String;ZZ)Lcom/byazt/iy/n;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v4, p1}, Lcom/byazt/vif/tt;-><init>(Lcom/byazt/iy/n;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_3
    monitor-exit v3

    .line 74
    return-object v4

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p1
.end method

.method public getVersionIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/sp;
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/byazt/bnf/c;->ve(Lcom/byazt/dna/c;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lcom/byazt/vif/ve;->ve:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/byazt/it/sp;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/byazt/it/sp;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    new-instance v1, Lcom/byazt/vif/n;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/byazt/dna/c;->isSupportMultiProcess()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    :goto_0
    invoke-static {p2, p1, v2}, Lcom/byazt/vif/ve;->c(Ljava/lang/String;ZZ)Lcom/byazt/iy/n;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v1, p1}, Lcom/byazt/vif/n;-><init>(Lcom/byazt/iy/n;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :cond_2
    monitor-exit v0

    .line 50
    return-object v1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1
.end method
