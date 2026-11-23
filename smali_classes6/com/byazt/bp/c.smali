.class public Lcom/byazt/bp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x380,
        0x14
    }
.end annotation


# static fields
.field public static final aw:Lcom/byazt/bp/c;


# instance fields
.field public a:Z

.field public final bx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public cu:I

.field public d:Ljava/lang/String;

.field public da:Ljava/lang/String;

.field public eo:Lcom/byazt/ko/c;

.field public gr:Z

.field public gt:J

.field public gu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public hd:Lcom/byazt/yf/yp;

.field public i:Z

.field public ic:[I

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public md:Z

.field public my:Lcom/byazt/yf/a;

.field public n:Z

.field public nb:Ljava/lang/Object;

.field public nu:Z

.field public or:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

.field public p:Ljava/lang/String;

.field public pf:J

.field public qp:Lcom/byazt/xf/ve;

.field public qy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final rh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public rl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public sl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Z

.field public final sv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/String;

.field public tt:[Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public yp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public yv:Z

.field public z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public zb:Z

.field public zm:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/bp/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/bp/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/bp/c;->aw:Lcom/byazt/bp/c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/bp/c;->c:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iput-boolean v1, p0, Lcom/byazt/bp/c;->n:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/byazt/bp/c;->a:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/byazt/bp/c;->sp:Z

    .line 17
    .line 18
    new-instance v1, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/byazt/bp/c;->yp:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/byazt/bp/c;->z:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/byazt/bp/c;->m:Ljava/util/Map;

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/byazt/bp/c;->nu:Z

    .line 40
    .line 41
    new-instance v0, Lcom/byazt/vx/my;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/byazt/vx/my;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/byazt/bp/c;->rh:Ljava/util/Map;

    .line 47
    .line 48
    const-wide/16 v0, -0x1

    .line 49
    .line 50
    iput-wide v0, p0, Lcom/byazt/bp/c;->gt:J

    .line 51
    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/byazt/bp/c;->rl:Ljava/util/Map;

    .line 58
    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/byazt/bp/c;->qy:Ljava/util/Map;

    .line 65
    .line 66
    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/byazt/bp/c;->cu:I

    .line 68
    .line 69
    new-instance v0, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/byazt/bp/c;->bx:Ljava/util/Map;

    .line 75
    .line 76
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lcom/byazt/bp/c;->sv:Ljava/util/Map;

    .line 82
    .line 83
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/byazt/qe/ve;->l()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    const-string v1, "adGap"

    .line 94
    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v1, "adLoad"

    .line 99
    .line 100
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    const-string v1, "sectionId"

    .line 104
    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v1, "pageId"

    .line 109
    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const-string v1, "custom"

    .line 114
    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appid\u4e0d\u80fd\u4e3a\u7a7a"

    .line 3
    invoke-static {p0, v0}, Lcom/byazt/vx/gu;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t()Lcom/byazt/bp/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bp/c;->aw:Lcom/byazt/bp/c;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bp/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/byazt/bp/c;->uj:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/bp/c;->a:Z

    return-void
.end method

.method public c(Ljava/lang/String;)F
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/bp/c;->sv:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public c(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/byazt/bp/c;->c:I

    return-void
.end method

.method public c(J)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/ii/c;->c(J)V

    return-void
.end method

.method public c(Lcom/byazt/ko/c;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/byazt/bp/c;->eo:Lcom/byazt/ko/c;

    return-void
.end method

.method public c(Lcom/byazt/yf/a;Z)V
    .locals 1

    if-nez p2, :cond_3

    .line 14
    iget-object p2, p0, Lcom/byazt/bp/c;->my:Lcom/byazt/yf/a;

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p2, p1}, Lcom/byazt/yf/a;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 16
    :goto_0
    iput-object p1, p0, Lcom/byazt/bp/c;->my:Lcom/byazt/yf/a;

    if-nez p2, :cond_2

    .line 17
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/c;)Lcom/byazt/qe/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/tt;->c()Lcom/byazt/qe/tt;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/byazt/qe/tt;->c(ILorg/json/JSONObject;)V

    :cond_2
    return-void

    .line 18
    :cond_3
    iput-object p1, p0, Lcom/byazt/bp/c;->my:Lcom/byazt/yf/a;

    return-void
.end method

.method public c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/byazt/bp/c;->or:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/byazt/bp/c;->nb:Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;F)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/bp/c;->sv:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/byazt/bp/c;->gu:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/byazt/bp/c;->sl:Ljava/util/Map;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/byazt/bp/c;->zm:Lorg/json/JSONObject;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/bp/c;->nu:Z

    return-void
.end method

.method public varargs c([I)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/bp/c;->ic:[I

    return-void
.end method

.method public c([Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/byazt/bp/c;->tt:[Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/bp/c;->nu:Z

    return v0
.end method

.method public cu()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->or:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/rl/c;->c()Lcom/byazt/rl/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public da(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/bp/c;->h:Z

    return-void
.end method

.method public da()Z
    .locals 2

    :try_start_0
    const-string v0, "com.msdk.qa.monkey"

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "5001121"

    iget-object v1, p0, Lcom/byazt/bp/c;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public eo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bp/c;->md:Z

    .line 2
    .line 3
    return v0
.end method

.method public gr()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->rl:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public gt()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->u:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/bp/c;->u:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    const-string v1, "gm_tt_ad_mediation_sdk_sp"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, ""

    .line 20
    .line 21
    const-string v2, "any_door_id"

    .line 22
    .line 23
    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/byazt/bp/c;->u:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/bp/c;->u:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/byazt/bp/c;->u:Ljava/lang/String;

    .line 50
    .line 51
    return-object v1
.end method

.method public gu()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/bp/c;->tt()Lcom/byazt/xf/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/yf/yp;->c(Lcom/byazt/xf/ve;)Lcom/byazt/yf/yp;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/bp/c;->hd:Lcom/byazt/yf/yp;

    .line 14
    .line 15
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bp/c;->yv:Z

    .line 2
    .line 3
    return v0
.end method

.method public i(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/bp/c;->md:Z

    return-void
.end method

.method public i()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "com.bytedance.mediation_demo_csj"

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/bp/c;->sl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->da:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public md()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->zm:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public my()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/bp/c;->pf:J

    return-wide v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/bp/c;->da:Ljava/lang/String;

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/bp/c;->n:Z

    return-void
.end method

.method public nb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->nb:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public nu()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->sl:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public or()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->rh:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "gm_usb"

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/psp/n;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/bp/c;->rh:Ljava/util/Map;

    .line 13
    .line 14
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bp/c;->gr:Z

    .line 2
    .line 3
    return v0
.end method

.method public qp()Lcom/byazt/ko/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->eo:Lcom/byazt/ko/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public qy()Lcom/byazt/yf/yp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->hd:Lcom/byazt/yf/yp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/byazt/bp/c;->tt()Lcom/byazt/xf/ve;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/byazt/yf/yp;->c(Lcom/byazt/xf/ve;)Lcom/byazt/yf/yp;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/byazt/bp/c;->hd:Lcom/byazt/yf/yp;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/bp/c;->hd:Lcom/byazt/yf/yp;

    .line 20
    .line 21
    return-object v0
.end method

.method public rh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public rl()Lcom/byazt/yf/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->my:Lcom/byazt/yf/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1}, Lcom/byazt/nr/sp;->uj(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/byazt/bp/c;->cu:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-gez v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Ljava/io/File;

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "/e2e.text"

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iput v3, p0, Lcom/byazt/bp/c;->cu:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput v2, p0, Lcom/byazt/bp/c;->cu:I

    .line 52
    .line 53
    :cond_1
    :goto_0
    iget v0, p0, Lcom/byazt/bp/c;->cu:I

    .line 54
    .line 55
    if-lez v0, :cond_2

    .line 56
    .line 57
    return v3

    .line 58
    :cond_2
    return v2
.end method

.method public sp(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/bp/c;->t:Ljava/lang/String;

    return-void
.end method

.method public sp(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/bp/c;->gr:Z

    return-void
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bp/c;->i:Z

    return v0
.end method

.method public tt()Lcom/byazt/xf/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->qp:Lcom/byazt/xf/ve;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/byazt/px/n;->c(Lcom/byazt/yxi/uj;)V

    .line 4
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/xf/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/xf/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/bp/c;->qp:Lcom/byazt/xf/ve;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/bp/c;->qp:Lcom/byazt/xf/ve;

    return-object v0
.end method

.method public tt(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/byazt/bp/c;->pf:J

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/bp/c;->d:Ljava/lang/String;

    return-void
.end method

.method public tt(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/bp/c;->rl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/byazt/bp/c;->i:Z

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->bx:Ljava/util/Map;

    return-object v0
.end method

.method public uj(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/bp/c;->x:Ljava/lang/String;

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/bp/c;->sp:Z

    return-void
.end method

.method public ve()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/bp/c;->gt:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/ii/c;->c()Lcom/byazt/ii/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ii/c;->tt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/bp/c;->gt:J

    return-wide v0
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/byazt/bp/c;->i(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/byazt/bp/c;->ve:Ljava/lang/String;

    return-void
.end method

.method public ve(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/bp/c;->qy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/bp/c;->zb:Z

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "com.union_test.toutiao"

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "5001121"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/byazt/bp/c;->ve:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "com.bytedance.mediation_demo"

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/bp/c;->ve:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :try_start_0
    const-string v0, "gm_tt_mediation_ppe_info"

    .line 4
    invoke-static {v1, v0}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    move-result-object v0

    const-string v2, "tt_ppe_content"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v1
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/bp/c;->p:Ljava/lang/String;

    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/bp/c;->yv:Z

    return-void
.end method

.method public yp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bp/c;->zb:Z

    .line 2
    .line 3
    return v0
.end method

.method public yv()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->gu:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bp/c;->sp:Z

    .line 2
    .line 3
    return v0
.end method

.method public zb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bp/c;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public zm()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/bp/c;->qy:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
