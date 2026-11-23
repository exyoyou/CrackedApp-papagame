.class public Lcom/byazt/sg/c;
.super Lcom/byazt/vvt/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f7,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/vvt/c<",
        "Lcom/byazt/nh/n;",
        "Ljava/util/List<",
        "Lcom/byazt/nc/u;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final tt:Lcom/byazt/sg/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/sg/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/sg/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/sg/c;->tt:Lcom/byazt/sg/c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/vvt/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static uj()Lcom/byazt/sg/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/sg/c;->tt:Lcom/byazt/sg/c;

    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic c(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 2
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/byazt/sg/c;->ve(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/nh/n;ILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p2, p3}, Lcom/byazt/nh/n;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/nh/n;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/nh/n;",
            "Ljava/util/List<",
            "Lcom/byazt/nc/u;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Lcom/byazt/nh/n;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/byazt/nh/n;

    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/sg/c;->c(Lcom/byazt/nh/n;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p1, Lcom/byazt/nh/n;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/sg/c;->c(Lcom/byazt/nh/n;Ljava/util/List;)V

    return-void
.end method

.method public synthetic tt(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/sg/c;->uj(Ljava/util/List;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public uj(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/u;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/nc/u;

    invoke-virtual {p1}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "request_id"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ve(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/u;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/byazt/nc/u;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/byazt/nc/u;->getLifecycleId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v0

    .line 40
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method
