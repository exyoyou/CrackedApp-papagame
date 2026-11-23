.class public Lcom/haima/hmcp/volley/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/volley/Response$ErrorListener;,
        Lcom/haima/hmcp/volley/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cacheEntry:Lcom/haima/hmcp/volley/Cache$Entry;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final error:Lcom/haima/hmcp/volley/VolleyError;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public intermediate:Z

.field public final result:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/volley/Response;->intermediate:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/volley/Response;->result:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/volley/Response;->cacheEntry:Lcom/haima/hmcp/volley/Cache$Entry;

    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/volley/Response;->error:Lcom/haima/hmcp/volley/VolleyError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/haima/hmcp/volley/Cache$Entry;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/haima/hmcp/volley/Cache$Entry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/haima/hmcp/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/volley/Response;->intermediate:Z

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/volley/Response;->result:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/haima/hmcp/volley/Response;->cacheEntry:Lcom/haima/hmcp/volley/Cache$Entry;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/haima/hmcp/volley/Response;->error:Lcom/haima/hmcp/volley/VolleyError;

    return-void
.end method

.method public static error(Lcom/haima/hmcp/volley/VolleyError;)Lcom/haima/hmcp/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/haima/hmcp/volley/VolleyError;",
            ")",
            "Lcom/haima/hmcp/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/volley/Response;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/volley/Response;-><init>(Lcom/haima/hmcp/volley/VolleyError;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lcom/haima/hmcp/volley/Cache$Entry;)Lcom/haima/hmcp/volley/Response;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/haima/hmcp/volley/Cache$Entry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/haima/hmcp/volley/Cache$Entry;",
            ")",
            "Lcom/haima/hmcp/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/volley/Response;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/volley/Response;-><init>(Ljava/lang/Object;Lcom/haima/hmcp/volley/Cache$Entry;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/Response;->error:Lcom/haima/hmcp/volley/VolleyError;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
