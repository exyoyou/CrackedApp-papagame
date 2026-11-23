.class public Lcom/byazt/yf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/yf/c$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/yf/t;

.field public c:Ljava/lang/String;

.field public da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/byazt/yf/a;

.field public n:Z

.field public sl:Z

.field public sp:Lcom/byazt/yf/x;

.field public t:Lorg/json/JSONObject;

.field public tt:Ljava/lang/String;

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Ljava/lang/String;

.field public ve:Z

.field public x:Lcom/byazt/yf/uj;

.field public yp:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

.field public z:Z


# direct methods
.method private constructor <init>(Lcom/byazt/yf/c$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/byazt/yf/c$c;->c(Lcom/byazt/yf/c$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->c:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/byazt/yf/c$c;->tt(Lcom/byazt/yf/c$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->tt:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/byazt/yf/c$c;->ve(Lcom/byazt/yf/c$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/yf/c;->ve:Z

    .line 6
    invoke-static {p1}, Lcom/byazt/yf/c$c;->uj(Lcom/byazt/yf/c$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->uj:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/byazt/yf/c$c;->n(Lcom/byazt/yf/c$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/yf/c;->n:Z

    .line 8
    invoke-static {p1}, Lcom/byazt/yf/c$c;->a(Lcom/byazt/yf/c$c;)Lcom/byazt/yf/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1}, Lcom/byazt/yf/c$c;->a(Lcom/byazt/yf/c$c;)Lcom/byazt/yf/t;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->a:Lcom/byazt/yf/t;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/byazt/yf/t$c;

    invoke-direct {v0}, Lcom/byazt/yf/t$c;-><init>()V

    invoke-virtual {v0}, Lcom/byazt/yf/t$c;->c()Lcom/byazt/yf/t;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->a:Lcom/byazt/yf/t;

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/byazt/yf/c$c;->sp(Lcom/byazt/yf/c$c;)Lcom/byazt/yf/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/byazt/yf/c$c;->sp(Lcom/byazt/yf/c$c;)Lcom/byazt/yf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->sp:Lcom/byazt/yf/x;

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Lcom/byazt/yf/x$c;

    invoke-direct {v0}, Lcom/byazt/yf/x$c;-><init>()V

    invoke-virtual {v0}, Lcom/byazt/yf/x$c;->c()Lcom/byazt/yf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->sp:Lcom/byazt/yf/x;

    .line 14
    :goto_1
    invoke-static {p1}, Lcom/byazt/yf/c$c;->x(Lcom/byazt/yf/c$c;)Lcom/byazt/yf/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {p1}, Lcom/byazt/yf/c$c;->x(Lcom/byazt/yf/c$c;)Lcom/byazt/yf/uj;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->x:Lcom/byazt/yf/uj;

    goto :goto_2

    .line 16
    :cond_2
    new-instance v0, Lcom/byazt/yf/uj$c;

    invoke-direct {v0}, Lcom/byazt/yf/uj$c;-><init>()V

    invoke-virtual {v0}, Lcom/byazt/yf/uj$c;->c()Lcom/byazt/yf/uj;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->x:Lcom/byazt/yf/uj;

    .line 17
    :goto_2
    invoke-static {p1}, Lcom/byazt/yf/c$c;->i(Lcom/byazt/yf/c$c;)Lcom/byazt/yf/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    invoke-static {p1}, Lcom/byazt/yf/c$c;->i(Lcom/byazt/yf/c$c;)Lcom/byazt/yf/a;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->i:Lcom/byazt/yf/a;

    goto :goto_3

    .line 19
    :cond_3
    new-instance v0, Lcom/byazt/yf/a;

    invoke-direct {v0}, Lcom/byazt/yf/a;-><init>()V

    iput-object v0, p0, Lcom/byazt/yf/c;->i:Lcom/byazt/yf/a;

    .line 20
    :goto_3
    invoke-static {p1}, Lcom/byazt/yf/c$c;->da(Lcom/byazt/yf/c$c;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->da:Ljava/util/Map;

    .line 21
    invoke-static {p1}, Lcom/byazt/yf/c$c;->sl(Lcom/byazt/yf/c$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/yf/c;->sl:Z

    .line 22
    invoke-static {p1}, Lcom/byazt/yf/c$c;->t(Lcom/byazt/yf/c$c;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->t:Lorg/json/JSONObject;

    .line 23
    invoke-static {p1}, Lcom/byazt/yf/c$c;->u(Lcom/byazt/yf/c$c;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->u:Ljava/util/Map;

    .line 24
    invoke-static {p1}, Lcom/byazt/yf/c$c;->yp(Lcom/byazt/yf/c$c;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/c;->yp:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 25
    invoke-static {p1}, Lcom/byazt/yf/c$c;->z(Lcom/byazt/yf/c$c;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/yf/c;->z:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/yf/c$c;Lcom/byazt/yf/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/yf/c;-><init>(Lcom/byazt/yf/c$c;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/yf/t;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/c;->a:Lcom/byazt/yf/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public da()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
    iget-object v0, p0, Lcom/byazt/yf/c;->da:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/byazt/yf/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/c;->i:Lcom/byazt/yf/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/c;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/c;->sl:Z

    .line 2
    .line 3
    return v0
.end method

.method public sp()Lcom/byazt/yf/x;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/c;->sp:Lcom/byazt/yf/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/c;->t:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/c;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
    iget-object v0, p0, Lcom/byazt/yf/c;->u:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/c;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/c;->ve:Z

    .line 2
    .line 3
    return v0
.end method

.method public x()Lcom/byazt/yf/uj;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/c;->x:Lcom/byazt/yf/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public yp()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/c;->yp:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/c;->z:Z

    .line 2
    .line 3
    return v0
.end method
