.class public Lcom/byazt/qcl/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x242,
        0xd
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public n:I

.field public tt:Ljava/lang/String;

.field public uj:I

.field public ve:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/byazt/qcl/tt;->uj:I

    .line 3
    iput v0, p0, Lcom/byazt/qcl/tt;->n:I

    .line 4
    iput-object p1, p0, Lcom/byazt/qcl/tt;->c:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/byazt/qcl/tt;->tt:Ljava/lang/String;

    .line 6
    iput-wide p3, p0, Lcom/byazt/qcl/tt;->ve:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/byazt/qcl/tt;->n:I

    .line 9
    iput-object p1, p0, Lcom/byazt/qcl/tt;->c:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/byazt/qcl/tt;->tt:Ljava/lang/String;

    .line 11
    iput-wide p3, p0, Lcom/byazt/qcl/tt;->ve:J

    .line 12
    iput p5, p0, Lcom/byazt/qcl/tt;->uj:I

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qcl/tt;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/qcl/tt;->n:I

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/qcl/tt;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qcl/tt;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/qcl/tt;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qcl/tt;->ve:J

    .line 2
    .line 3
    return-wide v0
.end method
