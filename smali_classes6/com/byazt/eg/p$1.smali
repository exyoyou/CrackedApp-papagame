.class public final Lcom/byazt/eg/p$1;
.super Lcom/byazt/eg/p;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x7dd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/eg/p;->c(Lcom/byazt/eg/rl;[BII)Lcom/byazt/eg/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/eg/rl;

.field public final synthetic tt:I

.field public final synthetic uj:I

.field public final synthetic ve:[B


# direct methods
.method public constructor <init>(Lcom/byazt/eg/rl;I[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eg/p$1;->c:Lcom/byazt/eg/rl;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/eg/p$1;->tt:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/eg/p$1;->ve:[B

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/eg/p$1;->uj:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/byazt/eg/p;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/eg/rl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/p$1;->c:Lcom/byazt/eg/rl;

    return-object v0
.end method

.method public c(Lcom/byazt/mk/uj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/eg/p$1;->ve:[B

    iget v1, p0, Lcom/byazt/eg/p$1;->uj:I

    iget v2, p0, Lcom/byazt/eg/p$1;->tt:I

    invoke-interface {p1, v0, v1, v2}, Lcom/byazt/mk/uj;->ve([BII)Lcom/byazt/mk/uj;

    return-void
.end method

.method public tt()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/eg/p$1;->tt:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method
