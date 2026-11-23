.class public final Lcom/byazt/na/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x296,
        0x22
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/na/a;

.field public final c:[B

.field public n:Z

.field public sp:Lcom/byazt/na/a;

.field public tt:I

.field public uj:Z

.field public ve:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/byazt/na/a;->c:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/na/a;->n:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/byazt/na/a;->uj:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/byazt/na/a;->c:[B

    .line 7
    iput p2, p0, Lcom/byazt/na/a;->tt:I

    .line 8
    iput p3, p0, Lcom/byazt/na/a;->ve:I

    .line 9
    iput-boolean p4, p0, Lcom/byazt/na/a;->uj:Z

    .line 10
    iput-boolean p5, p0, Lcom/byazt/na/a;->n:Z

    return-void
.end method


# virtual methods
.method public final c()Lcom/byazt/na/a;
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/byazt/na/a;->uj:Z

    .line 2
    new-instance v0, Lcom/byazt/na/a;

    iget-object v2, p0, Lcom/byazt/na/a;->c:[B

    iget v3, p0, Lcom/byazt/na/a;->tt:I

    iget v4, p0, Lcom/byazt/na/a;->ve:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/na/a;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final c(Lcom/byazt/na/a;)Lcom/byazt/na/a;
    .locals 1

    .line 3
    iput-object p0, p1, Lcom/byazt/na/a;->sp:Lcom/byazt/na/a;

    .line 4
    iget-object v0, p0, Lcom/byazt/na/a;->a:Lcom/byazt/na/a;

    iput-object v0, p1, Lcom/byazt/na/a;->a:Lcom/byazt/na/a;

    .line 5
    iget-object v0, p0, Lcom/byazt/na/a;->a:Lcom/byazt/na/a;

    iput-object p1, v0, Lcom/byazt/na/a;->sp:Lcom/byazt/na/a;

    .line 6
    iput-object p1, p0, Lcom/byazt/na/a;->a:Lcom/byazt/na/a;

    return-object p1
.end method

.method public final tt()Lcom/byazt/na/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/na/a;->a:Lcom/byazt/na/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    .line 6
    move-object v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/byazt/na/a;->sp:Lcom/byazt/na/a;

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    iput-object v0, v3, Lcom/byazt/na/a;->a:Lcom/byazt/na/a;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/na/a;->a:Lcom/byazt/na/a;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iput-object v3, v0, Lcom/byazt/na/a;->sp:Lcom/byazt/na/a;

    .line 20
    .line 21
    :cond_2
    iput-object v1, p0, Lcom/byazt/na/a;->a:Lcom/byazt/na/a;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/byazt/na/a;->sp:Lcom/byazt/na/a;

    .line 24
    .line 25
    return-object v2
.end method
