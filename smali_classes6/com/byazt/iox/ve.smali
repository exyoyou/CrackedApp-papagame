.class public Lcom/byazt/iox/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c3,
        0x36
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/im/sp;

.field public final tt:Lcom/byazt/omf/gu;

.field public ve:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/im/sp;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/im/sp;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/iox/ve;->c:Lcom/byazt/im/sp;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/byazt/iox/ve;->ve:I

    .line 13
    .line 14
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/byazt/iox/ve;->tt:Lcom/byazt/omf/gu;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic c(Lcom/byazt/iox/ve;)Lcom/byazt/im/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/iox/ve;->c:Lcom/byazt/im/sp;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/im/n;",
            "Lcom/byazt/gat/tt<",
            "Lcom/byazt/im/a;",
            "Lcom/byazt/im/sp;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/iox/ve;->tt:Lcom/byazt/omf/gu;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/iox/ve;->c:Lcom/byazt/im/sp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->tt(Z)V

    .line 4
    iget-object v0, p0, Lcom/byazt/iox/ve;->tt:Lcom/byazt/omf/gu;

    invoke-virtual {p1}, Lcom/byazt/im/n;->uj()Lcom/byazt/dj/tt;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/im/n;->n()Lcom/byazt/ete/bm;

    move-result-object v2

    iget v3, p0, Lcom/byazt/iox/ve;->ve:I

    new-instance v4, Lcom/byazt/iox/ve$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/byazt/iox/ve$1;-><init>(Lcom/byazt/iox/ve;Lcom/byazt/gat/tt;Lcom/byazt/im/n;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/byazt/omf/gu;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;)V

    :cond_1
    :goto_0
    return-void
.end method
