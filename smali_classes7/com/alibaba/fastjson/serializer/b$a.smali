.class Lcom/alibaba/fastjson/serializer/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/serializer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    iput v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->c:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->d:Ljava/util/Map;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/b$a;->a:Ljava/lang/String;

    .line 16
    .line 17
    iput p2, p0, Lcom/alibaba/fastjson/serializer/b$a;->b:I

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a(Lcom/alibaba/fastjson/serializer/b$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/alibaba/fastjson/serializer/b$a;->b:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    const/4 v0, 0x6

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    const/4 v0, 0x7

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public l(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->d:Ljava/util/Map;

    .line 12
    .line 13
    iget v1, p0, Lcom/alibaba/fastjson/serializer/b$a;->c:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iput v2, p0, Lcom/alibaba/fastjson/serializer/b$a;->c:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->d:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public m(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->d:Ljava/util/Map;

    .line 12
    .line 13
    iget v1, p0, Lcom/alibaba/fastjson/serializer/b$a;->c:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->c:I

    .line 23
    .line 24
    add-int/2addr v0, p2

    .line 25
    iput v0, p0, Lcom/alibaba/fastjson/serializer/b$a;->c:I

    .line 26
    .line 27
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/b$a;->d:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method
