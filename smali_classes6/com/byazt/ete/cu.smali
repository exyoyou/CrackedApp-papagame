.class public Lcom/byazt/ete/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x79
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static da:Z

.field public static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile t:Z

.field public static final uj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ve:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public tt:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ete/cu;->ve:Ljava/util/Set;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/ete/cu;->uj:Ljava/util/Set;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/byazt/ete/cu;->n:Ljava/util/Set;

    .line 21
    .line 22
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/byazt/ete/cu;->a:Ljava/util/Set;

    .line 28
    .line 29
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lcom/byazt/ete/cu;->sp:Ljava/util/Set;

    .line 35
    .line 36
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lcom/byazt/ete/cu;->x:Ljava/util/Set;

    .line 42
    .line 43
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v2, Lcom/byazt/ete/cu;->i:Ljava/util/Set;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    sput-boolean v2, Lcom/byazt/ete/cu;->da:Z

    .line 52
    .line 53
    new-instance v3, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v3, Lcom/byazt/ete/cu;->sl:Ljava/util/Map;

    .line 59
    .line 60
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 63
    .line 64
    .line 65
    sput-object v3, Lcom/byazt/ete/cu;->c:Ljava/util/Set;

    .line 66
    .line 67
    sput-boolean v2, Lcom/byazt/ete/cu;->t:Z

    .line 68
    .line 69
    const-string v2, ".*fastappjump-drcn\\.hispace\\.hicloud\\.com.*@3"

    .line 70
    .line 71
    const-string v3, ".*fastappjump-drcn\\.hispace\\.dbankcloud\\.cn.*@3"

    .line 72
    .line 73
    const-string v4, ".*thefatherofsalmon\\.com.*@3"

    .line 74
    .line 75
    const-string v5, ".*qallzmx\\.quicklyopen\\.com.*@3"

    .line 76
    .line 77
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 86
    .line 87
    .line 88
    const-string v3, "^hap://app"

    .line 89
    .line 90
    const-string v4, "^hwfastapp://"

    .line 91
    .line 92
    const-string v5, ".*thefatherofsalmon\\.com.*"

    .line 93
    .line 94
    const-string v6, ".*qallzmx\\.quicklyopen\\.com.*"

    .line 95
    .line 96
    const-string v7, ".*fastappjump-drcn\\.hispace\\.hicloud\\.com.*"

    .line 97
    .line 98
    const-string v8, ".*fastappjump-drcn\\.hispace\\.dbankcloud\\.cn.*"

    .line 99
    .line 100
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "block_auto_open"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/byazt/ete/cu;->tt:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ete/cu;->uj:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c(Lcom/byazt/ete/ic;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->dp()Lcom/byazt/ete/cu;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 13
    :cond_1
    iget p0, p0, Lcom/byazt/ete/cu;->tt:I

    return p0
.end method

.method private static c(Ljava/lang/String;IZZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const-string p3, "http://"

    .line 67
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "https://"

    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    const-string v2, "local://short-internal"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    if-nez p2, :cond_6

    .line 68
    sget-boolean p1, Lcom/byazt/ete/cu;->da:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    return-object v2

    .line 69
    :cond_3
    sget-object p1, Lcom/byazt/ete/cu;->n:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object p1

    .line 71
    :cond_4
    sget-object p1, Lcom/byazt/ete/cu;->a:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    return-object p0

    :cond_5
    return-object v1

    .line 73
    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "local://preload-setting:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p1, Lcom/byazt/ete/cu;->da:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_7
    sget-boolean p1, Lcom/byazt/ete/cu;->da:Z

    if-nez p1, :cond_9

    if-eqz p2, :cond_8

    const-string p0, "local://no-setting"

    return-object p0

    :cond_8
    return-object v1

    :cond_9
    if-eqz p3, :cond_a

    return-object v2

    .line 75
    :cond_a
    sget-object p1, Lcom/byazt/ete/cu;->n:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    return-object p1

    .line 77
    :cond_b
    sget-object p1, Lcom/byazt/ete/cu;->a:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    return-object p0

    :cond_c
    return-object v1

    .line 79
    :cond_d
    sget-boolean p1, Lcom/byazt/ete/cu;->da:Z

    if-nez p1, :cond_e

    return-object v1

    .line 80
    :cond_e
    sget-object p1, Lcom/byazt/ete/cu;->a:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/byazt/ete/cu;->x:Ljava/util/Set;

    return-object v0
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/ete/cu$3;

    invoke-direct {v1, p1, p0, p2}, Lcom/byazt/ete/cu$3;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    const-string p0, "stats_block_report"

    invoke-virtual {v0, v1, p0}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/byazt/it/n;)V
    .locals 2

    const-string v0, "turn_up_white_list"

    .line 5
    sget-object v1, Lcom/byazt/ete/cu;->uj:Ljava/util/Set;

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    const-string v0, "turn_up_black_list_1"

    .line 6
    sget-object v1, Lcom/byazt/ete/cu;->n:Ljava/util/Set;

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    const-string v0, "turn_up_black_list_2"

    .line 7
    sget-object v1, Lcom/byazt/ete/cu;->a:Ljava/util/Set;

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    const-string v0, "url_report_rule_list"

    .line 8
    sget-object v1, Lcom/byazt/ete/cu;->sp:Ljava/util/Set;

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    const-string v0, "net_url_block_list"

    .line 9
    sget-object v1, Lcom/byazt/ete/cu;->x:Ljava/util/Set;

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    const-string v0, "_turn_up_is_get_list"

    .line 10
    sget-boolean v1, Lcom/byazt/ete/cu;->da:Z

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    const-string v0, "dialog_black_list"

    .line 11
    sget-object v1, Lcom/byazt/ete/cu;->i:Ljava/util/Set;

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static c(Landroid/webkit/WebView;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/byazt/omf/d;Landroid/webkit/WebResourceRequest;ZZ)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 62
    :cond_0
    invoke-interface {p3}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_1

    return v0

    .line 63
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/byazt/ete/cu;->c(Landroid/webkit/WebView;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/byazt/omf/d;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/webkit/WebView;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/byazt/omf/d;Ljava/lang/String;ZZ)Z
    .locals 3

    const-string v0, "bytedance"

    .line 14
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const-string v0, "nativeapp"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "bds"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p3, p1}, Lcom/byazt/aas/nb;->c(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p0, p1, p3, v2}, Lcom/byazt/ete/cu;->c(Landroid/webkit/WebView;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    if-nez p2, :cond_2

    return v1

    .line 16
    :cond_2
    sget-object p0, Lcom/byazt/ete/cu;->ve:Ljava/util/Set;

    invoke-static {p3, p0}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    .line 17
    :cond_3
    sget-object p0, Lcom/byazt/ete/cu;->uj:Ljava/util/Set;

    invoke-static {p3, p0}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 18
    :cond_4
    sget-object p0, Lcom/byazt/ete/cu;->sp:Ljava/util/Set;

    invoke-static {p3, p0}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 20
    invoke-virtual {p2}, Lcom/byazt/omf/d;->x()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-static {p1, p3, p0}, Lcom/byazt/ete/cu;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-virtual {p2, p5}, Lcom/byazt/omf/d;->n(Z)I

    move-result p0

    invoke-static {p3, p0, p4, p5}, Lcom/byazt/ete/cu;->c(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-boolean p1, Lcom/byazt/ete/cu;->da:Z

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p2}, Lcom/byazt/omf/d;->x()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-static {p1, p3, p0}, Lcom/byazt/ete/cu;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    :goto_0
    return v1
.end method

.method private static c(Landroid/webkit/WebView;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Z)Z
    .locals 10

    const-string v0, "cloud_path_check_res"

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-nez p0, :cond_1

    return v2

    :cond_1
    const-string v1, ""

    .line 26
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 27
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 29
    sget-object v5, Lcom/byazt/ete/cu;->sl:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 30
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0, p2, p0, p3}, Lcom/byazt/ete/cu;->c(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Z)Z

    move-result p0

    return p0

    .line 31
    :cond_2
    sget-boolean v5, Lcom/byazt/ete/cu;->t:Z

    const/4 v6, 0x1

    if-nez v5, :cond_5

    .line 32
    invoke-static {v0}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    move-result-object v5

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v0, v7}, Lcom/byazt/iy/n;->get(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, ","

    .line 35
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 36
    sget-object v7, Lcom/byazt/ete/cu;->sl:Ljava/util/Map;

    aget-object v8, v5, v2

    aget-object v5, v5, v6

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_4
    sget-object v0, Lcom/byazt/ete/cu;->sl:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 38
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0, p2, p0, p3}, Lcom/byazt/ete/cu;->c(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Z)Z

    move-result p0

    return p0

    .line 39
    :cond_5
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hm/c;->tt()Lcom/byazt/va/n;

    move-result-object v0

    const-string v5, "https://scc.bytedance.com/scc_sdk/url_scan_v4"

    .line 40
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v7, "aid"

    const-string v8, "1181"

    invoke-virtual {v5, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v7, "device_platform"

    const-string v8, "android"

    .line 42
    invoke-virtual {v5, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v7, "device_id"

    .line 43
    invoke-static {}, Lcom/byazt/aas/z;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v7, "scc_mode"

    const-string v8, "raw"

    .line 44
    invoke-virtual {v5, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v7, "scc_from"

    const-string v8, "App"

    .line 45
    invoke-virtual {v5, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {v0, v5}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 47
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "ts"

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "scene"

    const-string v8, "common"

    .line 49
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "url"

    .line 50
    invoke-virtual {v5, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "extra"

    .line 51
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {v0, v5}, Lcom/byazt/va/n;->c(Lorg/json/JSONObject;)V

    .line 53
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 54
    new-instance v5, Lcom/byazt/ete/cu$1;

    invoke-direct {v5, v3, v4, v1}, Lcom/byazt/ete/cu$1;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v5}, Lcom/byazt/va/n;->c(Lcom/byazt/mh/c;)V

    .line 55
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    aget-object v0, v3, v2

    invoke-static {p1, v0, p2, p0, p3}, Lcom/byazt/ete/cu;->c(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Z)Z

    move-result p0

    return p0

    :catchall_0
    return v2
.end method

.method public static c(Lcom/byazt/omf/d;ILjava/lang/String;)Z
    .locals 9

    .line 64
    sget-object v0, Lcom/byazt/ete/cu;->i:Ljava/util/Set;

    invoke-static {p2, v0}, Lcom/byazt/ete/cu;->tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    .line 65
    sget-boolean v0, Lcom/byazt/ete/cu;->da:Z

    if-eqz v0, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 66
    :goto_1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v7

    new-instance v8, Lcom/byazt/ete/cu$2;

    move-object v1, v8

    move-object v2, p2

    move v3, p1

    move v4, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/ete/cu$2;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/byazt/omf/d;)V

    const-string p0, "stats_dialog_report_rule"

    invoke-virtual {v7, v8, p0}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return v0
.end method

.method private static c(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;Z)Z
    .locals 1

    const/4 p2, 0x0

    if-nez p3, :cond_0

    return p2

    .line 57
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    return p2

    :cond_1
    if-nez p0, :cond_2

    return p2

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    return v0

    .line 59
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p4

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "white"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string p4, "black"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string p4, "gray"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string p4, "unknown"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    return p2

    .line 60
    :cond_5
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 61
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/aas/n$c;)V

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x10fa53b6 -> :sswitch_3
        0x308a63 -> :sswitch_2
        0x5978fff -> :sswitch_1
        0x6bdcc29 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic c(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/byazt/ete/cu;->t:Z

    return p0
.end method

.method public static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/ete/cu;->da:Z

    .line 2
    .line 3
    return v0
.end method

.method public static tt()Lcom/byazt/gqp/i;
    .locals 1

    .line 59
    new-instance v0, Lcom/byazt/ete/cu$5;

    invoke-direct {v0}, Lcom/byazt/ete/cu$5;-><init>()V

    return-object v0
.end method

.method private static tt(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 52
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 55
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JumpModel"

    invoke-static {p1, p0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/ete/cu$4;

    invoke-direct {v1, p1, p0, p2}, Lcom/byazt/ete/cu$4;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    const-string p0, "stats_url_report_rule"

    invoke-virtual {v0, v1, p0}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Lcom/byazt/it/n;)V
    .locals 2

    .line 45
    sget-object v0, Lcom/byazt/ete/cu;->uj:Ljava/util/Set;

    const-string v1, "turn_up_white_list"

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    sget-object v0, Lcom/byazt/ete/cu;->n:Ljava/util/Set;

    const-string v1, "turn_up_black_list_1"

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 47
    sget-object v0, Lcom/byazt/ete/cu;->a:Ljava/util/Set;

    const-string v1, "turn_up_black_list_2"

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 48
    sget-object v0, Lcom/byazt/ete/cu;->sp:Ljava/util/Set;

    const-string v1, "url_report_rule_list"

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 49
    sget-object v0, Lcom/byazt/ete/cu;->x:Ljava/util/Set;

    const-string v1, "net_url_block_list"

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "_turn_up_is_get_list"

    const/4 v1, 0x0

    .line 50
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/byazt/ete/cu;->da:Z

    .line 51
    sget-object v0, Lcom/byazt/ete/cu;->i:Ljava/util/Set;

    const-string v1, "dialog_black_list"

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static tt(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "turn_up_white_list"

    .line 1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 3
    sget-object v2, Lcom/byazt/ete/cu;->uj:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    sget-object v4, Lcom/byazt/ete/cu;->uj:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :try_start_1
    const-string v1, "turn_up_black_list_1"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 10
    sget-object v2, Lcom/byazt/ete/cu;->n:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 12
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    sget-object v4, Lcom/byazt/ete/cu;->n:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    :cond_3
    :try_start_2
    const-string v1, "turn_up_black_list_2"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 17
    sget-object v2, Lcom/byazt/ete/cu;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    .line 18
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 19
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 21
    sget-object v4, Lcom/byazt/ete/cu;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_2
    nop

    :cond_5
    const-string v1, "app_common_config"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_b

    :try_start_3
    const-string v1, "url_report_rule_list"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 24
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 25
    sget-object v2, Lcom/byazt/ete/cu;->sp:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    .line 26
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 27
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 29
    sget-object v4, Lcom/byazt/ete/cu;->sp:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const-string v1, "net_url_block_list"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 31
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 32
    sget-object v2, Lcom/byazt/ete/cu;->x:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    .line 33
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 34
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 36
    sget-object v4, Lcom/byazt/ete/cu;->x:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    const-string v1, "dialog_black_list"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 38
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 39
    sget-object v1, Lcom/byazt/ete/cu;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 40
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 41
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 43
    sget-object v2, Lcom/byazt/ete/cu;->i:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_3
    :cond_b
    const/4 p0, 0x1

    .line 44
    sput-boolean p0, Lcom/byazt/ete/cu;->da:Z

    return-void
.end method

.method public static synthetic uj()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/ete/cu;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic ve()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ete/cu;->sl:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "block_auto_open"

    .line 3
    iget v1, p0, Lcom/byazt/ete/cu;->tt:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method
