.class public Lcom/byazt/ia/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x203,
        0x2e
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/ia/n;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public n:Lcom/byazt/ia/uj;

.field public tt:Landroid/content/Context;

.field public uj:Lcom/byazt/ia/tt;

.field public ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/byazt/uy/ve;",
            "Lcom/byazt/ia/ve;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ia/n;->ve:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/ia/n;->tt:Landroid/content/Context;

    .line 12
    .line 13
    new-instance p1, Lcom/byazt/ia/tt;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/ia/n;->tt:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/byazt/ia/tt;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/byazt/ia/n;->uj:Lcom/byazt/ia/tt;

    .line 21
    .line 22
    new-instance p1, Lcom/byazt/ia/uj;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ia/n;->tt:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/byazt/ia/uj;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/byazt/ia/n;->n:Lcom/byazt/ia/uj;

    .line 30
    .line 31
    return-void
.end method

.method public static c()Lcom/byazt/ia/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ia/n;->c:Lcom/byazt/ia/n;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/byazt/ia/n;->c:Lcom/byazt/ia/n;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CrashContextAssembly not init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lcom/byazt/uy/ve;)Lcom/byazt/ia/ve;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/byazt/ia/n;->ve:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ia/ve;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    sget-object v1, Lcom/byazt/ia/n$1;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/byazt/ia/a;

    iget-object v1, p0, Lcom/byazt/ia/n;->tt:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ia/n;->uj:Lcom/byazt/ia/tt;

    iget-object v3, p0, Lcom/byazt/ia/n;->n:Lcom/byazt/ia/uj;

    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/ia/a;-><init>(Landroid/content/Context;Lcom/byazt/ia/tt;Lcom/byazt/ia/uj;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lcom/byazt/ia/c;

    iget-object v1, p0, Lcom/byazt/ia/n;->tt:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ia/n;->uj:Lcom/byazt/ia/tt;

    iget-object v3, p0, Lcom/byazt/ia/n;->n:Lcom/byazt/ia/uj;

    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/ia/c;-><init>(Landroid/content/Context;Lcom/byazt/ia/tt;Lcom/byazt/ia/uj;)V

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Lcom/byazt/ia/sp;

    iget-object v1, p0, Lcom/byazt/ia/n;->tt:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ia/n;->uj:Lcom/byazt/ia/tt;

    iget-object v3, p0, Lcom/byazt/ia/n;->n:Lcom/byazt/ia/uj;

    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/ia/sp;-><init>(Landroid/content/Context;Lcom/byazt/ia/tt;Lcom/byazt/ia/uj;)V

    :goto_0
    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/byazt/ia/n;->ve:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/byazt/ia/n;->c:Lcom/byazt/ia/n;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/ia/n;

    invoke-direct {v0, p0}, Lcom/byazt/ia/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/byazt/ia/n;->c:Lcom/byazt/ia/n;

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/uy/ve;Lcom/byazt/xz/c;)Lcom/byazt/xz/c;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/ia/n;->c(Lcom/byazt/uy/ve;)Lcom/byazt/ia/ve;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1, p2}, Lcom/byazt/ia/ve;->c(Lcom/byazt/xz/c;)Lcom/byazt/xz/c;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method
