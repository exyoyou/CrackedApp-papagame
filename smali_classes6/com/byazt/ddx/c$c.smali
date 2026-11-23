.class public final Lcom/byazt/ddx/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ddx/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public da:Lcom/byazt/axo/c;

.field public i:Lorg/json/JSONObject;

.field public n:Ljava/lang/String;

.field public sl:Lcom/byazt/ya/c;

.field public sp:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Ljava/lang/String;


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

.method public static synthetic a(Lcom/byazt/ddx/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/c$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ddx/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/c$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ddx/c$c;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->i:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static synthetic i(Lcom/byazt/ddx/c$c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/c$c;->i:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/ddx/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/c$c;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/ddx/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/c$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/ddx/c$c;)Lcom/byazt/ya/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/c$c;->sl:Lcom/byazt/ya/c;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/ddx/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/c$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ddx/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/c$c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/ddx/c$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ddx/c$c;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/byazt/ddx/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->sp:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/ddx/c$c;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->i:Lorg/json/JSONObject;

    return-object p0
.end method

.method public c(Lcom/byazt/ya/c;)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/byazt/ddx/c$c;->ve:Ljava/lang/String;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lcom/byazt/ukr/n;->c(Ljava/lang/String;D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ddx/c$c;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ddx/c$c;->ve:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/ddx/c$c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/ddx/c$c;->x:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/byazt/ddx/c$c;->n:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/qw/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 8
    :cond_1
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->sl:Lcom/byazt/ya/c;

    .line 9
    new-instance p1, Lcom/byazt/ddx/c;

    invoke-direct {p1, p0}, Lcom/byazt/ddx/c;-><init>(Lcom/byazt/ddx/c$c;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ddx/c$c;->da:Lcom/byazt/axo/c;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p1, Lcom/byazt/ddx/c;->tt:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/byazt/axo/c;->c(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lcom/byazt/axo/tt;

    invoke-direct {v0}, Lcom/byazt/axo/tt;-><init>()V

    iget-object v1, p1, Lcom/byazt/ddx/c;->tt:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/byazt/axo/tt;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "AdEvent"

    .line 13
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/byazt/ddx/c$c;->ve:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/byazt/ukr/tt;->c(Lcom/byazt/ddx/c;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public sp(Ljava/lang/String;)Lcom/byazt/ddx/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->x:Ljava/lang/String;

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/ddx/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ddx/c$c;->uj:Ljava/lang/String;

    return-object p0
.end method
