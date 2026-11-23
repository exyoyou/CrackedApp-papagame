.class public Lcom/byazt/xn/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x369,
        0xd
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/gqp/i;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/gqp/yp;

.field public ve:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/byazt/gqp/yp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/gqp/i;",
            ">;",
            "Lcom/byazt/gqp/yp;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/xn/tt;->ve:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/xn/tt;->c:Ljava/util/List;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/xn/tt;->tt:Lcom/byazt/gqp/yp;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/xn/tt;->tt:Lcom/byazt/gqp/yp;

    .line 3
    iget p1, p0, Lcom/byazt/xn/tt;->ve:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/byazt/xn/tt;->ve:I

    .line 4
    iget-object v0, p0, Lcom/byazt/xn/tt;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/gqp/i;

    invoke-interface {p1, p0}, Lcom/byazt/gqp/i;->c(Lcom/byazt/gqp/i$c;)Lcom/byazt/gqp/m;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/byazt/gqp/yp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xn/tt;->tt:Lcom/byazt/gqp/yp;

    return-object v0
.end method
