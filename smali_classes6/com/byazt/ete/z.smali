.class public Lcom/byazt/ete/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x85
    }
.end annotation


# instance fields
.field public a:D

.field public c:I

.field public n:Ljava/lang/String;

.field public sp:D

.field public tt:Ljava/lang/String;

.field public uj:D

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
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/z;->a:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/z;->c:I

    return v0
.end method

.method public c(D)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/ete/z;->uj:D

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/z;->c:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ete/z;->tt:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/z;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/z;->sp:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/z;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public tt(D)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/ete/z;->a:D

    return-void
.end method

.method public tt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/z;->ve:I

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ete/z;->n:Ljava/lang/String;

    return-void
.end method

.method public uj()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/z;->uj:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/z;->ve:I

    return v0
.end method

.method public ve(D)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ete/z;->sp:D

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/z;->n:Ljava/lang/String;

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
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method
