.class public Lcom/byazt/szt/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hl/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6b6,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/zd/tt;

.field public tt:Lcom/byazt/hl/c;


# direct methods
.method public constructor <init>(Lcom/byazt/hl/c;Lcom/byazt/zd/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/byazt/szt/tt;->tt:Lcom/byazt/hl/c;

    .line 3
    iput-object p2, p0, Lcom/byazt/szt/tt;->c:Lcom/byazt/zd/tt;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/zd/tt;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/byazt/szt/tt;->c:Lcom/byazt/zd/tt;

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/szt/tt;->c:Lcom/byazt/zd/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/szt/tt;->tt:Lcom/byazt/hl/c;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-interface {v0}, Lcom/byazt/zd/tt;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/szt/tt;->tt:Lcom/byazt/hl/c;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_2
    invoke-interface {v0, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method
