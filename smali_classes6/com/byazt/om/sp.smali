.class public Lcom/byazt/om/sp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/om/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x5b
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/om/c;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/iz/tt;

.field public uj:I

.field public ve:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/om/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/om/sp;->c:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/byazt/om/sp;->ve:I

    .line 13
    .line 14
    iput v1, p0, Lcom/byazt/om/sp;->uj:I

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/byazt/om/sp;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/om/sp;->uj:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/byazt/om/sp;->uj:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic c(Lcom/byazt/om/sp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/om/sp;->ve:I

    return p0
.end method

.method public static synthetic n(Lcom/byazt/om/sp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/om/sp;->uj:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/om/sp;)Lcom/byazt/iz/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/om/sp;->tt:Lcom/byazt/iz/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/om/sp;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/om/sp;->ve:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/byazt/om/sp;->ve:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic ve(Lcom/byazt/om/sp;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/om/sp;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Lcom/byazt/iz/tt;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/om/sp;->tt:Lcom/byazt/iz/tt;

    return-object v0
.end method

.method public c(Lcom/byazt/iz/tt;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/om/sp;->tt:Lcom/byazt/iz/tt;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/byazt/om/sp;->tt:Lcom/byazt/iz/tt;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/om/sp;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance p1, Lcom/byazt/om/sp$1;

    invoke-direct {p1, p0}, Lcom/byazt/om/sp$1;-><init>(Lcom/byazt/om/sp;)V

    invoke-static {p1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/om/sp;->tt:Lcom/byazt/iz/tt;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/byazt/iz/tt;->tt(Ljava/lang/String;)V

    .line 9
    :cond_0
    new-instance p1, Lcom/byazt/om/sp$2;

    invoke-direct {p1, p0}, Lcom/byazt/om/sp$2;-><init>(Lcom/byazt/om/sp;)V

    invoke-static {p1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method
