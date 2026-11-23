.class public Lcom/byazt/vvt/uj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/uj;->tt(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic tt:Lcom/byazt/dj/tt;

.field public final synthetic uj:Lcom/byazt/vvt/uj;

.field public final synthetic ve:Lcom/byazt/vvt/tt$c;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/uj;Ljava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/vvt/tt$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/uj$3;->uj:Lcom/byazt/vvt/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/vvt/uj$3;->c:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/vvt/uj$3;->tt:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/vvt/uj$3;->ve:Lcom/byazt/vvt/tt$c;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/vvt/uj$3;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/byazt/ete/ic;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/byazt/vvt/uj$3;->uj:Lcom/byazt/vvt/uj;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/byazt/vvt/uj$3;->tt:Lcom/byazt/dj/tt;

    .line 27
    .line 28
    invoke-static {v3, v4, v2}, Lcom/byazt/vvt/uj;->c(Lcom/byazt/vvt/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)Lcom/byazt/nc/yp;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/byazt/vvt/uj$3;->ve:Lcom/byazt/vvt/tt$c;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v1, v0}, Lcom/byazt/vvt/tt$c;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method
