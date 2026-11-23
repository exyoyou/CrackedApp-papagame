.class public Lcom/byazt/gat/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x314,
        0x22
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/rf/c;

.field public tt:Lcom/byazt/im/tt;

.field public ve:Lcom/byazt/gat/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/gat/ve<",
            "Lcom/byazt/im/x;",
            "Lcom/byazt/im/sp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/im/tt;Lcom/byazt/gat/ve;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/im/tt;",
            "Lcom/byazt/gat/ve<",
            "Lcom/byazt/im/x;",
            "Lcom/byazt/im/sp;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/byazt/gat/a;->tt:Lcom/byazt/im/tt;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/byazt/gat/a;->ve:Lcom/byazt/gat/ve;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/byazt/im/tt;->da()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x1

    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    new-instance p1, Lcom/byazt/iox/tt;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/byazt/iox/tt;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/byazt/gat/a;->c:Lcom/byazt/rf/c;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p1, Lcom/byazt/iox/uj;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/byazt/iox/uj;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/byazt/gat/a;->c:Lcom/byazt/rf/c;

    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/gat/a;)Lcom/byazt/gat/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gat/a;->ve:Lcom/byazt/gat/ve;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/gat/a;)Lcom/byazt/im/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gat/a;->tt:Lcom/byazt/im/tt;

    return-object p0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/gat/a;->c:Lcom/byazt/rf/c;

    instance-of v0, v0, Lcom/byazt/iox/uj;

    return v0
.end method

.method public tt()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/gat/a;->tt:Lcom/byazt/im/tt;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/byazt/gat/a;->ve:Lcom/byazt/gat/ve;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/byazt/gat/a;->c:Lcom/byazt/rf/c;

    instance-of v2, v1, Lcom/byazt/iox/tt;

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Lcom/byazt/gat/a$1;

    invoke-direct {v2, p0}, Lcom/byazt/gat/a$1;-><init>(Lcom/byazt/gat/a;)V

    invoke-interface {v1, v0, v2}, Lcom/byazt/rf/c;->c(Lcom/byazt/im/tt;Lcom/byazt/gat/ve;)V

    return-void

    .line 5
    :cond_1
    new-instance v2, Lcom/byazt/gat/a$2;

    invoke-direct {v2, p0}, Lcom/byazt/gat/a$2;-><init>(Lcom/byazt/gat/a;)V

    invoke-interface {v1, v0, v2}, Lcom/byazt/rf/c;->c(Lcom/byazt/im/tt;Lcom/byazt/gat/ve;)V

    :cond_2
    :goto_0
    return-void
.end method
