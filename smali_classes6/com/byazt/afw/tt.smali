.class public Lcom/byazt/afw/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21e,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/byazt/afw/uj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/ic;

.field public n:Z

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/afw/uj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public ve:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/afw/uj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/afw/tt;->n:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/afw/tt;->c:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/afw/tt;->tt:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/byazt/afw/tt;->ve:Lorg/json/JSONObject;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/byazt/afw/tt;->uj:Lcom/byazt/afw/uj;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/ete/ic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/afw/tt;->c:Lcom/byazt/ete/ic;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/afw/tt;->n:Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/afw/tt;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/afw/tt;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/afw/uj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/afw/tt;->uj:Lcom/byazt/afw/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/afw/tt;->ve:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/afw/tt;->ve:Lorg/json/JSONObject;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/afw/tt;->ve:Lorg/json/JSONObject;

    .line 13
    .line 14
    return-object v0
.end method
