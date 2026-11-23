.class public Lcom/byazt/rob/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4bb,
        0xf
    }
.end annotation


# instance fields
.field public c:I

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/ete/ic;

.field public ve:Lcom/byazt/ete/ic;


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
.method public c()Lcom/byazt/ete/ic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rob/uj;->ve:Lcom/byazt/ete/ic;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/rob/uj;->c:I

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/rob/uj;->ve:Lcom/byazt/ete/ic;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/rob/uj;->tt:Ljava/lang/String;

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/rob/uj;->c:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public tt()Lcom/byazt/ete/ic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rob/uj;->uj:Lcom/byazt/ete/ic;

    return-object v0
.end method

.method public tt(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/rob/uj;->uj:Lcom/byazt/ete/ic;

    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rob/uj;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/rob/uj;->c:I

    .line 2
    .line 3
    return v0
.end method
