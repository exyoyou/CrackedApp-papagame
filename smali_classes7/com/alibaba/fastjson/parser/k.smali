.class public Lcom/alibaba/fastjson/parser/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcom/alibaba/fastjson/parser/k;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/alibaba/fastjson/util/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/g<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/x0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field protected final d:Lcom/alibaba/fastjson/parser/l;

.field protected e:Lcom/alibaba/fastjson/parser/deserializer/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/k;->f:Lcom/alibaba/fastjson/parser/k;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/k;-><init>(Lcom/alibaba/fastjson/parser/deserializer/a;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/k;-><init>(Lcom/alibaba/fastjson/parser/deserializer/a;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/a;Ljava/lang/ClassLoader;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    .line 6
    new-instance v2, Lcom/alibaba/fastjson/util/g;

    invoke-direct {v2}, Lcom/alibaba/fastjson/util/g;-><init>()V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    .line 7
    invoke-static {}, Lcom/alibaba/fastjson/util/b;->g()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Lcom/alibaba/fastjson/parser/k;->c:Z

    .line 8
    new-instance v2, Lcom/alibaba/fastjson/parser/l;

    invoke-direct {v2}, Lcom/alibaba/fastjson/parser/l;-><init>()V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/k;->d:Lcom/alibaba/fastjson/parser/l;

    if-nez p1, :cond_1

    if-nez v1, :cond_0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->B()Lcom/alibaba/fastjson/parser/deserializer/a;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/parser/deserializer/a;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    :cond_1
    move-object/from16 v1, p1

    .line 11
    :goto_0
    iput-object v1, v0, Lcom/alibaba/fastjson/parser/k;->e:Lcom/alibaba/fastjson/parser/deserializer/a;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/alibaba/fastjson/parser/k;->c:Z

    .line 13
    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v3, Ljava/lang/Boolean;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v4, Ljava/lang/Character;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v5, Ljava/lang/Byte;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v6, Ljava/lang/Short;

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v8, Ljava/lang/Integer;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v10, Ljava/lang/Long;

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v12, Ljava/lang/Float;

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v13, Ljava/lang/Double;

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v14, Ljava/math/BigInteger;

    invoke-interface {v1, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    const-class v15, Ljava/math/BigDecimal;

    invoke-interface {v1, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    move-object/from16 p1, v3

    const-class v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    move-object/from16 p2, v2

    const-class v2, Ljava/util/Date;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    move-object/from16 v16, v13

    const-class v13, Ljava/sql/Date;

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    move-object/from16 v17, v12

    const-class v12, Ljava/sql/Time;

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    move-object/from16 v18, v11

    const-class v11, Ljava/sql/Timestamp;

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    move-object/from16 v19, v15

    const-class v15, Ljava/text/SimpleDateFormat;

    move-object/from16 v20, v14

    sget-object v14, Lcom/alibaba/fastjson/parser/deserializer/m;->a:Lcom/alibaba/fastjson/parser/deserializer/m;

    invoke-virtual {v1, v15, v14}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v14, Lcom/alibaba/fastjson/parser/deserializer/e1;->a:Lcom/alibaba/fastjson/parser/deserializer/e1;

    invoke-virtual {v1, v11, v14}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/z0;->a:Lcom/alibaba/fastjson/parser/deserializer/z0;

    invoke-virtual {v1, v13, v11}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/d1;->a:Lcom/alibaba/fastjson/parser/deserializer/d1;

    invoke-virtual {v1, v12, v11}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/l;->a:Lcom/alibaba/fastjson/parser/deserializer/l;

    invoke-virtual {v1, v2, v11}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v2, Ljava/util/Calendar;

    sget-object v11, Lcom/alibaba/fastjson/serializer/r;->a:Lcom/alibaba/fastjson/serializer/r;

    invoke-virtual {v1, v2, v11}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/u;->a:Lcom/alibaba/fastjson/parser/deserializer/u;

    invoke-virtual {v1, v2, v11}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v2, Lcom/alibaba/fastjson/JSONArray;

    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/t;->a:Lcom/alibaba/fastjson/parser/deserializer/t;

    invoke-virtual {v1, v2, v11}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/u0;->a:Lcom/alibaba/fastjson/parser/deserializer/u0;

    const-class v11, Ljava/util/Map;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v11, Ljava/util/HashMap;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v11, Ljava/util/TreeMap;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v11, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v11, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/j;->a:Lcom/alibaba/fastjson/parser/deserializer/j;

    const-class v11, Ljava/util/Collection;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v11, Ljava/util/List;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v11, Ljava/util/ArrayList;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/w;->a:Lcom/alibaba/fastjson/parser/deserializer/w;

    const-class v11, Ljava/lang/Object;

    invoke-virtual {v1, v11, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v11, Lcom/alibaba/fastjson/serializer/z1;->a:Lcom/alibaba/fastjson/serializer/z1;

    invoke-virtual {v1, v3, v11}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v11, Lcom/alibaba/fastjson/serializer/t;->a:Lcom/alibaba/fastjson/serializer/t;

    invoke-virtual {v1, v3, v11}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v1, v4, v11}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/w0;->a:Lcom/alibaba/fastjson/parser/deserializer/w0;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    invoke-virtual {v1, v6, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/q0;->a:Lcom/alibaba/fastjson/serializer/q0;

    invoke-virtual {v1, v7, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/q0;->a:Lcom/alibaba/fastjson/serializer/q0;

    invoke-virtual {v1, v8, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/d1;->a:Lcom/alibaba/fastjson/serializer/d1;

    invoke-virtual {v1, v9, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/d1;->a:Lcom/alibaba/fastjson/serializer/d1;

    invoke-virtual {v1, v10, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/n;->a:Lcom/alibaba/fastjson/serializer/n;

    move-object/from16 v5, v20

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/m;->a:Lcom/alibaba/fastjson/serializer/m;

    move-object/from16 v5, v19

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/l0;->a:Lcom/alibaba/fastjson/serializer/l0;

    move-object/from16 v5, v18

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/l0;->a:Lcom/alibaba/fastjson/serializer/l0;

    move-object/from16 v5, v17

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    move-object/from16 v3, v16

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/p;->a:Lcom/alibaba/fastjson/serializer/p;

    move-object/from16 v5, p2

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    move-object/from16 v5, p1

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v5, Ljava/lang/Class;

    sget-object v6, Lcom/alibaba/fastjson/parser/deserializer/i;->a:Lcom/alibaba/fastjson/parser/deserializer/i;

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v5, [C

    sget-object v6, Lcom/alibaba/fastjson/parser/deserializer/h;->a:Lcom/alibaba/fastjson/parser/deserializer/h;

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v5, Lcom/alibaba/fastjson/serializer/q0;->a:Lcom/alibaba/fastjson/serializer/q0;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v5, Lcom/alibaba/fastjson/serializer/d1;->a:Lcom/alibaba/fastjson/serializer/d1;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    sget-object v3, Lcom/alibaba/fastjson/serializer/q1;->a:Lcom/alibaba/fastjson/serializer/q1;

    const-class v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v5, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/UUID;

    sget-object v5, Lcom/alibaba/fastjson/serializer/d2;->a:Lcom/alibaba/fastjson/serializer/d2;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/TimeZone;

    sget-object v5, Lcom/alibaba/fastjson/serializer/a2;->a:Lcom/alibaba/fastjson/serializer/a2;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/Locale;

    sget-object v5, Lcom/alibaba/fastjson/serializer/b1;->a:Lcom/alibaba/fastjson/serializer/b1;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/Currency;

    sget-object v5, Lcom/alibaba/fastjson/serializer/z;->a:Lcom/alibaba/fastjson/serializer/z;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/InetAddress;

    sget-object v5, Lcom/alibaba/fastjson/serializer/n0;->a:Lcom/alibaba/fastjson/serializer/n0;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/Inet4Address;

    sget-object v5, Lcom/alibaba/fastjson/serializer/n0;->a:Lcom/alibaba/fastjson/serializer/n0;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/Inet6Address;

    sget-object v5, Lcom/alibaba/fastjson/serializer/n0;->a:Lcom/alibaba/fastjson/serializer/n0;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/InetSocketAddress;

    sget-object v5, Lcom/alibaba/fastjson/serializer/o0;->a:Lcom/alibaba/fastjson/serializer/o0;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/io/File;

    sget-object v5, Lcom/alibaba/fastjson/serializer/i0;->a:Lcom/alibaba/fastjson/serializer/i0;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/URI;

    sget-object v5, Lcom/alibaba/fastjson/serializer/b2;->a:Lcom/alibaba/fastjson/serializer/b2;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/net/URL;

    sget-object v5, Lcom/alibaba/fastjson/serializer/c2;->a:Lcom/alibaba/fastjson/serializer/c2;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/regex/Pattern;

    sget-object v5, Lcom/alibaba/fastjson/serializer/l1;->a:Lcom/alibaba/fastjson/serializer/l1;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/nio/charset/Charset;

    sget-object v5, Lcom/alibaba/fastjson/serializer/u;->a:Lcom/alibaba/fastjson/serializer/u;

    invoke-virtual {v1, v3, v5}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v4, Lcom/alibaba/fastjson/serializer/g;->a:Lcom/alibaba/fastjson/serializer/g;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v4, Lcom/alibaba/fastjson/serializer/i;->a:Lcom/alibaba/fastjson/serializer/i;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/StackTraceElement;

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/a1;->a:Lcom/alibaba/fastjson/parser/deserializer/a1;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Cloneable;

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/lang/Comparable;

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-class v3, Ljava/io/Closeable;

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    :try_start_1
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.awt.Point"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/m1;->a:Lcom/alibaba/fastjson/serializer/m1;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.awt.Font"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/m0;->a:Lcom/alibaba/fastjson/serializer/m0;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.awt.Rectangle"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/p1;->a:Lcom/alibaba/fastjson/serializer/p1;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.awt.Color"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/y;->a:Lcom/alibaba/fastjson/serializer/y;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :catchall_0
    :try_start_2
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.LocalDateTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/r0;->a:Lcom/alibaba/fastjson/parser/deserializer/r0;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.LocalDate"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.LocalTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.ZonedDateTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.OffsetDateTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.OffsetTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.ZoneOffset"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.ZoneRegion"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.ZoneId"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.Period"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.Duration"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    const-string v2, "java.time.Instant"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/parser/k;-><init>(Lcom/alibaba/fastjson/parser/deserializer/a;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static h(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/parser/k;->i(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "_"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/parser/k;->i(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "m_"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/parser/k;->i(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    return-object v0
.end method

.method private static i(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-class v1, Ljava/lang/Object;

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/parser/k;->h(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static k()Lcom/alibaba/fastjson/parser/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/parser/k;->f:Lcom/alibaba/fastjson/parser/k;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;
    .locals 4
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
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/k;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    move-object v2, p2

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-class v3, Ljava/lang/Object;

    .line 24
    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-class v3, Ljava/lang/Class;

    .line 34
    .line 35
    if-ne v2, v3, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    :cond_3
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/k;->e:Lcom/alibaba/fastjson/parser/deserializer/a;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->C(Ljava/lang/Class;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move v1, v0

    .line 52
    :goto_1
    if-nez v1, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/k;->b(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->e:Lcom/alibaba/fastjson/parser/deserializer/a;

    .line 60
    .line 61
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/a;->u(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    return-object p1

    .line 66
    :catchall_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/k;->b(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/r;
    .locals 2
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
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    if-eq v0, v1, :cond_8

    .line 8
    .line 9
    const-class v1, Ljava/lang/Boolean;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    if-eq v0, v1, :cond_7

    .line 17
    .line 18
    const-class v1, Ljava/lang/Integer;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    if-eq v0, v1, :cond_6

    .line 26
    .line 27
    const-class v1, Ljava/lang/Long;

    .line 28
    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const-class v1, Ljava/lang/String;

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/b1;

    .line 37
    .line 38
    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/b1;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_3
    const-class v1, Ljava/util/List;

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    const-class v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    if-ne v0, v1, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/n;

    .line 52
    .line 53
    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/n;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_5
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/e;

    .line 58
    .line 59
    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/e;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_6
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/t0;

    .line 64
    .line 65
    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/t0;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_7
    :goto_2
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/s;

    .line 70
    .line 71
    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/s;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_8
    :goto_3
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/g;

    .line 76
    .line 77
    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/g;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Lcom/alibaba/fastjson/util/e;)V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/x0;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/k;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-class v3, Ljava/lang/Object;

    .line 24
    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    array-length v2, v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :cond_3
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/k;->e:Lcom/alibaba/fastjson/parser/deserializer/a;

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->C(Ljava/lang/Class;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    :cond_4
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :cond_5
    if-eqz v0, :cond_d

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_6

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    :cond_6
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/d;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/d;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/d;->k()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    const/16 v4, 0xc8

    .line 82
    .line 83
    if-le v3, v4, :cond_7

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    :cond_7
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/d;->f()Ljava/lang/reflect/Constructor;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_8

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_8

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    :cond_8
    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/d;->k()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :cond_9
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_d

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lcom/alibaba/fastjson/util/e;

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/e;->r()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_a

    .line 124
    .line 125
    :goto_2
    const/4 v0, 0x0

    .line 126
    goto :goto_3

    .line 127
    :cond_a
    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-nez v5, :cond_b

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Class;->isMemberClass()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_c

    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_c

    .line 157
    .line 158
    const/4 v0, 0x0

    .line 159
    :cond_c
    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/e;->o()Ljava/lang/reflect/Member;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v3}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_9

    .line 172
    .line 173
    const/4 v0, 0x0

    .line 174
    goto :goto_1

    .line 175
    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_e

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-nez v2, :cond_e

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_e
    move v1, v0

    .line 195
    :goto_4
    if-nez v1, :cond_f

    .line 196
    .line 197
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/v;

    .line 198
    .line 199
    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/v;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :cond_f
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->e:Lcom/alibaba/fastjson/parser/deserializer/a;

    .line 204
    .line 205
    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->v(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 206
    .line 207
    .line 208
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/alibaba/fastjson/asm/ASMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    return-object p1

    .line 210
    :catch_0
    move-exception p2

    .line 211
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v2, "create asm deserializer error, "

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :catch_1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/v;

    .line 239
    .line 240
    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/v;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 241
    .line 242
    .line 243
    return-object v0

    .line 244
    :catch_2
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/v;

    .line 245
    .line 246
    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/v;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 247
    .line 248
    .line 249
    return-object v0
.end method

.method public d()Lcom/alibaba/fastjson/util/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/g<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/x0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lcom/alibaba/fastjson/util/e;)Lcom/alibaba/fastjson/parser/deserializer/x0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/k;->f(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public f(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/x0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    if-nez p2, :cond_1

    .line 13
    .line 14
    move-object p2, p1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_2
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->mappingTo()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-class v2, Ljava/lang/Void;

    .line 41
    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, v1, v1}, Lcom/alibaba/fastjson/parser/k;->f(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_3
    instance-of v1, p2, Ljava/lang/reflect/WildcardType;

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    instance-of v1, p2, Ljava/lang/reflect/TypeVariable;

    .line 54
    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 68
    .line 69
    :cond_5
    if-eqz v0, :cond_6

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :try_start_0
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/f;

    .line 81
    .line 82
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/util/i;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_8

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/f;

    .line 101
    .line 102
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/f;->a()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_7

    .line 115
    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/lang/reflect/Type;

    .line 121
    .line 122
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    .line 123
    .line 124
    invoke-virtual {v4, v3, v1}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    nop

    .line 129
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    .line 130
    .line 131
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 136
    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_a

    .line 145
    .line 146
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/o;

    .line 147
    .line 148
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/deserializer/o;-><init>(Ljava/lang/Class;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/d;->a:Lcom/alibaba/fastjson/parser/deserializer/d;

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_b
    const-class v0, Ljava/util/Set;

    .line 162
    .line 163
    if-eq p1, v0, :cond_10

    .line 164
    .line 165
    const-class v0, Ljava/util/HashSet;

    .line 166
    .line 167
    if-eq p1, v0, :cond_10

    .line 168
    .line 169
    const-class v0, Ljava/util/Collection;

    .line 170
    .line 171
    if-eq p1, v0, :cond_10

    .line 172
    .line 173
    const-class v1, Ljava/util/List;

    .line 174
    .line 175
    if-eq p1, v1, :cond_10

    .line 176
    .line 177
    const-class v1, Ljava/util/ArrayList;

    .line 178
    .line 179
    if-ne p1, v1, :cond_c

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_d

    .line 187
    .line 188
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/j;->a:Lcom/alibaba/fastjson/parser/deserializer/j;

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_d
    const-class v0, Ljava/util/Map;

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_e

    .line 198
    .line 199
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/u0;->a:Lcom/alibaba/fastjson/parser/deserializer/u0;

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_e
    const-class v0, Ljava/lang/Throwable;

    .line 203
    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_f

    .line 209
    .line 210
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/c1;

    .line 211
    .line 212
    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/c1;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/k;->c(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    goto :goto_2

    .line 221
    :cond_10
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/j;->a:Lcom/alibaba/fastjson/parser/deserializer/j;

    .line 222
    .line 223
    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/k;->o(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/x0;)V

    .line 224
    .line 225
    .line 226
    return-object v0
.end method

.method public g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Ljava/lang/Class;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/k;->f(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v1, v0, Ljava/lang/Class;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    check-cast v0, Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/k;->f(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson/parser/deserializer/w;->a:Lcom/alibaba/fastjson/parser/deserializer/w;

    .line 52
    .line 53
    return-object p1
.end method

.method public j(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/r;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/alibaba/fastjson/parser/deserializer/v;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/v;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/v;->k()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson/parser/deserializer/b;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/b;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/b;->i()Lcom/alibaba/fastjson/parser/deserializer/b$b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/v;->k()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public l()Lcom/alibaba/fastjson/parser/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->d:Lcom/alibaba/fastjson/parser/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/k;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public n(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public o(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/x0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/k;->b:Lcom/alibaba/fastjson/util/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/k;->c:Z

    .line 2
    .line 3
    return-void
.end method
