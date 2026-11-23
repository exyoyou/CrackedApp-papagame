.class public Lcom/cloudplay/messagesdk/network/volley/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/network/volley/Response$ErrorListener;,
        Lcom/cloudplay/messagesdk/network/volley/Response$Listener;
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
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

.field public final c:Lcom/cloudplay/messagesdk/network/volley/VolleyError;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Response;->d:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Response;->a:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Response;->b:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    .line 10
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Response;->c:Lcom/cloudplay/messagesdk/network/volley/VolleyError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/cloudplay/messagesdk/network/volley/Cache$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/cloudplay/messagesdk/network/volley/Cache$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/Response;->d:Z

    .line 3
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Response;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/cloudplay/messagesdk/network/volley/Response;->b:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/Response;->c:Lcom/cloudplay/messagesdk/network/volley/VolleyError;

    return-void
.end method

.method public static a(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)Lcom/cloudplay/messagesdk/network/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cloudplay/messagesdk/network/volley/VolleyError;",
            ")",
            "Lcom/cloudplay/messagesdk/network/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/cloudplay/messagesdk/network/volley/Response;

    invoke-direct {v0, p0}, Lcom/cloudplay/messagesdk/network/volley/Response;-><init>(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/cloudplay/messagesdk/network/volley/Cache$a;)Lcom/cloudplay/messagesdk/network/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/cloudplay/messagesdk/network/volley/Cache$a;",
            ")",
            "Lcom/cloudplay/messagesdk/network/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/network/volley/Response;

    invoke-direct {v0, p0, p1}, Lcom/cloudplay/messagesdk/network/volley/Response;-><init>(Ljava/lang/Object;Lcom/cloudplay/messagesdk/network/volley/Cache$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/Response;->c:Lcom/cloudplay/messagesdk/network/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
