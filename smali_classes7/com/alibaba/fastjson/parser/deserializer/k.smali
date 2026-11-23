.class public final Lcom/alibaba/fastjson/parser/deserializer/k;
.super Lcom/alibaba/fastjson/parser/deserializer/r;
.source "SourceFile"


# instance fields
.field private final c:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/c;Ljava/util/Collection;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p1}, Lcom/alibaba/fastjson/parser/deserializer/r;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/k;->c:Ljava/util/Collection;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public g(Lcom/alibaba/fastjson/parser/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
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
    return-void
.end method

.method public j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/k;->c:Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
