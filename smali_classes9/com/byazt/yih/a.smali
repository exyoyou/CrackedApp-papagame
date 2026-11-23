.class public Lcom/byazt/yih/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yih/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2da,
        0x22
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/yih/uj;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/yih/ve;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/yih/a;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/yih/ve;

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->vp()Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lcom/byazt/yih/ve;-><init>(Lorg/json/JSONObject;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/yih/a;->tt:Lcom/byazt/yih/ve;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/yih/a;->c:Ljava/util/List;

    .line 27
    .line 28
    new-instance v2, Lcom/byazt/yih/n;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/byazt/yih/n;-><init>(Lcom/byazt/yih/ve;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/yih/a;->c:Ljava/util/List;

    .line 37
    .line 38
    new-instance v1, Lcom/byazt/yih/sp;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/byazt/yih/a;->tt:Lcom/byazt/yih/ve;

    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/byazt/yih/sp;-><init>(Lcom/byazt/yih/ve;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/qt/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yih/a;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byazt/yih/uj;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lcom/byazt/yih/uj;->c(Lcom/byazt/qt/c;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public tt(Lcom/byazt/qt/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yih/a;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byazt/yih/uj;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lcom/byazt/yih/uj;->tt(Lcom/byazt/qt/c;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method
