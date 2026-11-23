.class public Lcom/alibaba/fastjson/parser/deserializer/b1;
.super Lcom/alibaba/fastjson/parser/deserializer/r;
.source "SourceFile"


# instance fields
.field private final c:Lcom/alibaba/fastjson/parser/deserializer/x0;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/r;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/k;->e(Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/b1;->c:Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/b1;->c:Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g(Lcom/alibaba/fastjson/parser/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    invoke-interface {p3, v0}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    if-nez p2, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson/parser/deserializer/r;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method
