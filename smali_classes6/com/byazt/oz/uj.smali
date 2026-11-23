.class public Lcom/byazt/oz/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/m;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd5,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/byazt/yj/m;"
    }
.end annotation


# instance fields
.field public a:I

.field public c:Ljava/lang/String;

.field public da:Lcom/byazt/yj/x;

.field public i:Z

.field public n:I

.field public sl:I

.field public sp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public ve:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public x:Z


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


# virtual methods
.method public c(Lcom/byazt/oz/ve;Ljava/lang/Object;)Lcom/byazt/oz/uj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/oz/ve;",
            "TT;)",
            "Lcom/byazt/oz/uj;"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/byazt/oz/uj;->ve:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/oz/uj;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/oz/uj;->tt:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/byazt/oz/uj;->n:I

    .line 5
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/byazt/oz/uj;->a:I

    .line 6
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->x()Z

    move-result p2

    iput-boolean p2, p0, Lcom/byazt/oz/uj;->i:Z

    .line 7
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->da()Lcom/byazt/yj/x;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/oz/uj;->da:Lcom/byazt/yj/x;

    .line 8
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->sl()I

    move-result p1

    iput p1, p0, Lcom/byazt/oz/uj;->sl:I

    return-object p0
.end method

.method public c(Lcom/byazt/oz/ve;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/byazt/oz/uj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/oz/ve;",
            "TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/byazt/oz/uj;"
        }
    .end annotation

    .line 9
    iput-object p3, p0, Lcom/byazt/oz/uj;->sp:Ljava/util/Map;

    .line 10
    iput-boolean p4, p0, Lcom/byazt/oz/uj;->x:Z

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/byazt/oz/uj;->c(Lcom/byazt/oz/ve;Ljava/lang/Object;)Lcom/byazt/oz/uj;

    move-result-object p1

    return-object p1
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/uj;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/oz/uj;->sl:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeaders()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/byazt/oz/uj;->sp:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/oz/uj;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getHttpTime()Lcom/byazt/yj/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/uj;->da:Lcom/byazt/yj/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/uj;->uj:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/uj;->ve:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/uj;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/oz/uj;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public isGif()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/oz/uj;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLocal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/oz/uj;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/uj;->ve:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/byazt/oz/uj;->uj:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/byazt/oz/uj;->ve:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method
