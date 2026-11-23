.class public final Lcom/alibaba/fastjson/parser/deserializer/b$b;
.super Lcom/alibaba/fastjson/parser/deserializer/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/parser/deserializer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic f:Lcom/alibaba/fastjson/parser/deserializer/b;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/b;Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/b$b;->f:Lcom/alibaba/fastjson/parser/deserializer/b;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/v;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/b;Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/b$b;-><init>(Lcom/alibaba/fastjson/parser/deserializer/b;Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/e;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/r;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/b$b;->f:Lcom/alibaba/fastjson/parser/deserializer/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/b;->d(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public o(Lcom/alibaba/fastjson/parser/c;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/b$b;->f:Lcom/alibaba/fastjson/parser/deserializer/b;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/b;->k(Lcom/alibaba/fastjson/parser/c;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
