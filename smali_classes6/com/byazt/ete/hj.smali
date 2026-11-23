.class public Lcom/byazt/ete/hj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x279
    }
.end annotation


# instance fields
.field public c:I

.field public tt:I

.field public uj:Ljava/lang/String;

.field public ve:I


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
.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/ete/hj;->ve:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ete/hj;->c:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ete/hj;->uj:Ljava/lang/String;

    return-void
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ete/hj;->uj:Ljava/lang/String;

    return-object v0
.end method

.method public tt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ete/hj;->tt:I

    return-void
.end method

.method public ve(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ete/hj;->ve:I

    .line 2
    .line 3
    return-void
.end method
