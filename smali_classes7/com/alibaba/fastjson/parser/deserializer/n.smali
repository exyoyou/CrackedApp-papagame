.class public Lcom/alibaba/fastjson/parser/deserializer/n;
.super Lcom/alibaba/fastjson/parser/deserializer/r;
.source "SourceFile"


# instance fields
.field private c:Lcom/alibaba/fastjson/parser/deserializer/x0;


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
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/n;->c:Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
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
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/n;->c:Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->j()Lcom/alibaba/fastjson/parser/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/k;->e(Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/n;->c:Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 16
    .line 17
    :cond_0
    instance-of v0, p3, Ljava/lang/reflect/ParameterizedType;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/parser/j;->e(Ljava/lang/reflect/Type;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/deserializer/n;->c:Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/r;->e()Ljava/lang/reflect/Type;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {p3, p1, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->J()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x1

    .line 49
    if-ne v0, v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->y()Lcom/alibaba/fastjson/parser/c$a;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/parser/c$a;->d(Lcom/alibaba/fastjson/parser/deserializer/r;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/parser/c$a;->e(Lcom/alibaba/fastjson/parser/j;)V

    .line 63
    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    if-nez p2, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/r;->a:Lcom/alibaba/fastjson/util/e;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/r;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method
