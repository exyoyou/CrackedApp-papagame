.class public final Lcom/cloudplay/messagesdk/gson/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/gson/b$f;
    }
.end annotation


# static fields
.field private static final k:Lcom/cloudplay/messagesdk/gson/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/j/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/cloudplay/messagesdk/gson/j/a<",
            "*>;",
            "Lcom/cloudplay/messagesdk/gson/b$f<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloudplay/messagesdk/gson/j/a<",
            "*>;",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/cloudplay/messagesdk/gson/internal/b;

.field private final d:Lcom/cloudplay/messagesdk/gson/internal/j/e;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field final f:Z

.field final g:Z

.field final h:Z

.field final i:Z

.field final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloudplay/messagesdk/gson/j/a;->a(Ljava/lang/Class;)Lcom/cloudplay/messagesdk/gson/j/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/cloudplay/messagesdk/gson/b;->k:Lcom/cloudplay/messagesdk/gson/j/a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/cloudplay/messagesdk/gson/internal/c;->g:Lcom/cloudplay/messagesdk/gson/internal/c;

    sget-object v2, Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;->a:Lcom/cloudplay/messagesdk/gson/FieldNamingPolicy;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/cloudplay/messagesdk/gson/LongSerializationPolicy;->a:Lcom/cloudplay/messagesdk/gson/LongSerializationPolicy;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    sget-object v18, Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;->a:Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;

    sget-object v19, Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;->b:Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 5
    invoke-direct/range {v0 .. v19}, Lcom/cloudplay/messagesdk/gson/b;-><init>(Lcom/cloudplay/messagesdk/gson/internal/c;Lcom/cloudplay/messagesdk/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/cloudplay/messagesdk/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)V

    return-void
.end method

.method constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/c;Lcom/cloudplay/messagesdk/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/cloudplay/messagesdk/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/internal/c;",
            "Lcom/cloudplay/messagesdk/gson/FieldNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/cloudplay/messagesdk/gson/InstanceCreator<",
            "*>;>;ZZZZZZZ",
            "Lcom/cloudplay/messagesdk/gson/LongSerializationPolicy;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;",
            ">;",
            "Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;",
            "Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p10

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, v0, Lcom/cloudplay/messagesdk/gson/b;->a:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v0, Lcom/cloudplay/messagesdk/gson/b;->b:Ljava/util/Map;

    .line 9
    new-instance v3, Lcom/cloudplay/messagesdk/gson/internal/b;

    move-object v4, p3

    invoke-direct {v3, p3}, Lcom/cloudplay/messagesdk/gson/internal/b;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Lcom/cloudplay/messagesdk/gson/b;->c:Lcom/cloudplay/messagesdk/gson/internal/b;

    move v4, p4

    .line 10
    iput-boolean v4, v0, Lcom/cloudplay/messagesdk/gson/b;->f:Z

    move v4, p6

    .line 11
    iput-boolean v4, v0, Lcom/cloudplay/messagesdk/gson/b;->g:Z

    move/from16 v4, p7

    .line 12
    iput-boolean v4, v0, Lcom/cloudplay/messagesdk/gson/b;->h:Z

    move/from16 v4, p8

    .line 13
    iput-boolean v4, v0, Lcom/cloudplay/messagesdk/gson/b;->i:Z

    move/from16 v4, p9

    .line 14
    iput-boolean v4, v0, Lcom/cloudplay/messagesdk/gson/b;->j:Z

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v5, Lcom/cloudplay/messagesdk/gson/internal/j/n;->V:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static/range {p18 .. p18}, Lcom/cloudplay/messagesdk/gson/internal/j/j;->a(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p17

    .line 19
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    sget-object v5, Lcom/cloudplay/messagesdk/gson/internal/j/n;->B:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v5, Lcom/cloudplay/messagesdk/gson/internal/j/n;->m:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v5, Lcom/cloudplay/messagesdk/gson/internal/j/n;->g:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v5, Lcom/cloudplay/messagesdk/gson/internal/j/n;->i:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v5, Lcom/cloudplay/messagesdk/gson/internal/j/n;->k:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static/range {p11 .. p11}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/LongSerializationPolicy;)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v5

    .line 26
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Long;

    invoke-static {v6, v7, v5}, Lcom/cloudplay/messagesdk/gson/internal/j/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 28
    invoke-direct {p0, v2}, Lcom/cloudplay/messagesdk/gson/b;->a(Z)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v7

    .line 29
    const-class v8, Ljava/lang/Double;

    invoke-static {v6, v8, v7}, Lcom/cloudplay/messagesdk/gson/internal/j/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 31
    invoke-direct {p0, v2}, Lcom/cloudplay/messagesdk/gson/b;->b(Z)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v2

    .line 32
    const-class v7, Ljava/lang/Float;

    invoke-static {v6, v7, v2}, Lcom/cloudplay/messagesdk/gson/internal/j/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static/range {p19 .. p19}, Lcom/cloudplay/messagesdk/gson/internal/j/i;->a(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->o:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->q:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {v5}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v2

    const-class v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6, v2}, Lcom/cloudplay/messagesdk/gson/internal/j/n;->a(Ljava/lang/Class;Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v5}, Lcom/cloudplay/messagesdk/gson/b;->b(Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v2

    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v5, v2}, Lcom/cloudplay/messagesdk/gson/internal/j/n;->a(Ljava/lang/Class;Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->s:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->x:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->D:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->F:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->z:Lcom/cloudplay/messagesdk/gson/h;

    const-class v5, Ljava/math/BigDecimal;

    invoke-static {v5, v2}, Lcom/cloudplay/messagesdk/gson/internal/j/n;->a(Ljava/lang/Class;Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->A:Lcom/cloudplay/messagesdk/gson/h;

    const-class v5, Ljava/math/BigInteger;

    invoke-static {v5, v2}, Lcom/cloudplay/messagesdk/gson/internal/j/n;->a(Ljava/lang/Class;Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->H:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->J:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->N:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->P:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->T:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->L:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->d:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/c;->b:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->R:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-boolean v2, Lcom/cloudplay/messagesdk/gson/internal/l/d;->a:Z

    if-eqz v2, :cond_0

    .line 54
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/l/d;->c:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/l/d;->b:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/l/d;->d:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/a;->c:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v2, Lcom/cloudplay/messagesdk/gson/internal/j/n;->b:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Lcom/cloudplay/messagesdk/gson/internal/j/b;

    invoke-direct {v2, v3}, Lcom/cloudplay/messagesdk/gson/internal/j/b;-><init>(Lcom/cloudplay/messagesdk/gson/internal/b;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v2, Lcom/cloudplay/messagesdk/gson/internal/j/h;

    move v5, p5

    invoke-direct {v2, v3, p5}, Lcom/cloudplay/messagesdk/gson/internal/j/h;-><init>(Lcom/cloudplay/messagesdk/gson/internal/b;Z)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v2, Lcom/cloudplay/messagesdk/gson/internal/j/e;

    invoke-direct {v2, v3}, Lcom/cloudplay/messagesdk/gson/internal/j/e;-><init>(Lcom/cloudplay/messagesdk/gson/internal/b;)V

    iput-object v2, v0, Lcom/cloudplay/messagesdk/gson/b;->d:Lcom/cloudplay/messagesdk/gson/internal/j/e;

    .line 62
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v5, Lcom/cloudplay/messagesdk/gson/internal/j/n;->W:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v5, Lcom/cloudplay/messagesdk/gson/internal/j/k;

    move-object v6, p2

    invoke-direct {v5, v3, p2, p1, v2}, Lcom/cloudplay/messagesdk/gson/internal/j/k;-><init>(Lcom/cloudplay/messagesdk/gson/internal/b;Lcom/cloudplay/messagesdk/gson/FieldNamingStrategy;Lcom/cloudplay/messagesdk/gson/internal/c;Lcom/cloudplay/messagesdk/gson/internal/j/e;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/cloudplay/messagesdk/gson/b;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/cloudplay/messagesdk/gson/LongSerializationPolicy;)Lcom/cloudplay/messagesdk/gson/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/LongSerializationPolicy;",
            ")",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/cloudplay/messagesdk/gson/LongSerializationPolicy;->a:Lcom/cloudplay/messagesdk/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_0

    .line 6
    sget-object p0, Lcom/cloudplay/messagesdk/gson/internal/j/n;->t:Lcom/cloudplay/messagesdk/gson/h;

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Lcom/cloudplay/messagesdk/gson/b$c;

    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/b$c;-><init>()V

    return-object p0
.end method

.method private static a(Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/cloudplay/messagesdk/gson/b$d;

    invoke-direct {v0, p0}, Lcom/cloudplay/messagesdk/gson/b$d;-><init>(Lcom/cloudplay/messagesdk/gson/h;)V

    .line 9
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/gson/h;->a()Lcom/cloudplay/messagesdk/gson/h;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)Lcom/cloudplay/messagesdk/gson/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/cloudplay/messagesdk/gson/internal/j/n;->v:Lcom/cloudplay/messagesdk/gson/h;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/cloudplay/messagesdk/gson/b$a;

    invoke-direct {p1, p0}, Lcom/cloudplay/messagesdk/gson/b$a;-><init>(Lcom/cloudplay/messagesdk/gson/b;)V

    return-object p1
.end method

.method static a(D)V
    .locals 2

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/Object;Lcom/cloudplay/messagesdk/gson/stream/a;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->q()Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    move-result-object p0

    sget-object p1, Lcom/cloudplay/messagesdk/gson/stream/JsonToken;->j:Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p0, Lcom/cloudplay/messagesdk/gson/JsonIOException;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/cloudplay/messagesdk/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 101
    new-instance p1, Lcom/cloudplay/messagesdk/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/cloudplay/messagesdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 102
    new-instance p1, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Lcom/cloudplay/messagesdk/gson/h;)Lcom/cloudplay/messagesdk/gson/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/cloudplay/messagesdk/gson/b$e;

    invoke-direct {v0, p0}, Lcom/cloudplay/messagesdk/gson/b$e;-><init>(Lcom/cloudplay/messagesdk/gson/h;)V

    .line 4
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/gson/h;->a()Lcom/cloudplay/messagesdk/gson/h;

    move-result-object p0

    return-object p0
.end method

.method private b(Z)Lcom/cloudplay/messagesdk/gson/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/cloudplay/messagesdk/gson/internal/j/n;->u:Lcom/cloudplay/messagesdk/gson/h;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/cloudplay/messagesdk/gson/b$b;

    invoke-direct {p1, p0}, Lcom/cloudplay/messagesdk/gson/b$b;-><init>(Lcom/cloudplay/messagesdk/gson/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;",
            "Lcom/cloudplay/messagesdk/gson/j/a<",
            "TT;>;)",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object p1, p0, Lcom/cloudplay/messagesdk/gson/b;->d:Lcom/cloudplay/messagesdk/gson/internal/j/e;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;->create(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cloudplay/messagesdk/gson/j/a<",
            "TT;>;)",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/b;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lcom/cloudplay/messagesdk/gson/b;->k:Lcom/cloudplay/messagesdk/gson/j/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/gson/h;

    if-eqz v0, :cond_1

    return-object v0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 14
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloudplay/messagesdk/gson/b$f;

    if-eqz v2, :cond_3

    return-object v2

    .line 15
    :cond_3
    :try_start_0
    new-instance v2, Lcom/cloudplay/messagesdk/gson/b$f;

    invoke-direct {v2}, Lcom/cloudplay/messagesdk/gson/b$f;-><init>()V

    .line 16
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v3, p0, Lcom/cloudplay/messagesdk/gson/b;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    .line 18
    invoke-interface {v4, p0, p1}, Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;->create(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v2, v4}, Lcom/cloudplay/messagesdk/gson/b$f;->a(Lcom/cloudplay/messagesdk/gson/h;)V

    .line 20
    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/b;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/cloudplay/messagesdk/gson/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 23
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON () cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 25
    iget-object p1, p0, Lcom/cloudplay/messagesdk/gson/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 26
    :cond_7
    throw v2
.end method

.method public a(Ljava/lang/Class;)Lcom/cloudplay/messagesdk/gson/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/cloudplay/messagesdk/gson/j/a;->a(Ljava/lang/Class;)Lcom/cloudplay/messagesdk/gson/j/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/Reader;)Lcom/cloudplay/messagesdk/gson/stream/a;
    .locals 1

    .line 72
    new-instance v0, Lcom/cloudplay/messagesdk/gson/stream/a;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/stream/a;-><init>(Ljava/io/Reader;)V

    .line 73
    iget-boolean p1, p0, Lcom/cloudplay/messagesdk/gson/b;->j:Z

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->a(Z)V

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/b;->g:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 67
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v0, Lcom/cloudplay/messagesdk/gson/stream/b;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/stream/b;-><init>(Ljava/io/Writer;)V

    .line 69
    iget-boolean p1, p0, Lcom/cloudplay/messagesdk/gson/b;->i:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 70
    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->b(Ljava/lang/String;)V

    .line 71
    :cond_1
    iget-boolean p1, p0, Lcom/cloudplay/messagesdk/gson/b;->f:Z

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->c(Z)V

    return-object v0
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/d;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cloudplay/messagesdk/gson/d;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 119
    :cond_0
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/j/f;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/f;-><init>(Lcom/cloudplay/messagesdk/gson/d;)V

    invoke-virtual {p0, v0, p2}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/stream/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cloudplay/messagesdk/gson/stream/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonIOException;,
            Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->h()Z

    move-result v0

    const/4 v1, 0x1

    .line 104
    invoke-virtual {p1, v1}, Lcom/cloudplay/messagesdk/gson/stream/a;->a(Z)V

    .line 105
    :try_start_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->q()Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    const/4 v1, 0x0

    .line 106
    invoke-static {p2}, Lcom/cloudplay/messagesdk/gson/j/a;->a(Ljava/lang/reflect/Type;)Lcom/cloudplay/messagesdk/gson/j/a;

    move-result-object p2

    .line 107
    invoke-virtual {p0, p2}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object p2

    .line 108
    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/gson/stream/a;->a(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 110
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON ): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    throw v1

    :catch_1
    move-exception p2

    .line 113
    new-instance v1, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 114
    new-instance v1, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/gson/stream/a;->a(Z)V

    const/4 p1, 0x0

    return-object p1

    .line 116
    :cond_0
    :try_start_2
    new-instance v1, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :goto_0
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/gson/stream/a;->a(Z)V

    .line 118
    throw p2
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonIOException;,
            Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/io/Reader;)Lcom/cloudplay/messagesdk/gson/stream/a;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/stream/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 98
    invoke-static {p2, p1}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/lang/Object;Lcom/cloudplay/messagesdk/gson/stream/a;)V

    return-object p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 93
    invoke-static {p2}, Lcom/cloudplay/messagesdk/gson/internal/g;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v0, p2}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/d;)Ljava/lang/String;
    .locals 1

    .line 60
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/d;Ljava/lang/Appendable;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 33
    sget-object p1, Lcom/cloudplay/messagesdk/gson/e;->a:Lcom/cloudplay/messagesdk/gson/e;

    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 35
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/d;Lcom/cloudplay/messagesdk/gson/stream/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonIOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/stream/b;->g()Z

    move-result v0

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p2, v1}, Lcom/cloudplay/messagesdk/gson/stream/b;->b(Z)V

    .line 76
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/stream/b;->f()Z

    move-result v1

    .line 77
    iget-boolean v2, p0, Lcom/cloudplay/messagesdk/gson/b;->h:Z

    invoke-virtual {p2, v2}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Z)V

    .line 78
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/stream/b;->e()Z

    move-result v2

    .line 79
    iget-boolean v3, p0, Lcom/cloudplay/messagesdk/gson/b;->f:Z

    invoke-virtual {p2, v3}, Lcom/cloudplay/messagesdk/gson/stream/b;->c(Z)V

    .line 80
    :try_start_0
    invoke-static {p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/h;->a(Lcom/cloudplay/messagesdk/gson/d;Lcom/cloudplay/messagesdk/gson/stream/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {p2, v0}, Lcom/cloudplay/messagesdk/gson/stream/b;->b(Z)V

    .line 82
    invoke-virtual {p2, v1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Z)V

    .line 83
    invoke-virtual {p2, v2}, Lcom/cloudplay/messagesdk/gson/stream/b;->c(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON ): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    throw v3

    :catch_1
    move-exception p1

    .line 87
    new-instance v3, Lcom/cloudplay/messagesdk/gson/JsonIOException;

    invoke-direct {v3, p1}, Lcom/cloudplay/messagesdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_0
    invoke-virtual {p2, v0}, Lcom/cloudplay/messagesdk/gson/stream/b;->b(Z)V

    .line 89
    invoke-virtual {p2, v1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Z)V

    .line 90
    invoke-virtual {p2, v2}, Lcom/cloudplay/messagesdk/gson/stream/b;->c(Z)V

    .line 91
    throw p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/d;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonIOException;
        }
    .end annotation

    .line 63
    :try_start_0
    invoke-static {p2}, Lcom/cloudplay/messagesdk/gson/internal/h;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/io/Writer;)Lcom/cloudplay/messagesdk/gson/stream/b;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/d;Lcom/cloudplay/messagesdk/gson/stream/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    new-instance p2, Lcom/cloudplay/messagesdk/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/cloudplay/messagesdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/cloudplay/messagesdk/gson/stream/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonIOException;
        }
    .end annotation

    .line 41
    invoke-static {p2}, Lcom/cloudplay/messagesdk/gson/j/a;->a(Ljava/lang/reflect/Type;)Lcom/cloudplay/messagesdk/gson/j/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object p2

    .line 42
    invoke-virtual {p3}, Lcom/cloudplay/messagesdk/gson/stream/b;->g()Z

    move-result v0

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p3, v1}, Lcom/cloudplay/messagesdk/gson/stream/b;->b(Z)V

    .line 44
    invoke-virtual {p3}, Lcom/cloudplay/messagesdk/gson/stream/b;->f()Z

    move-result v1

    .line 45
    iget-boolean v2, p0, Lcom/cloudplay/messagesdk/gson/b;->h:Z

    invoke-virtual {p3, v2}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Z)V

    .line 46
    invoke-virtual {p3}, Lcom/cloudplay/messagesdk/gson/stream/b;->e()Z

    move-result v2

    .line 47
    iget-boolean v3, p0, Lcom/cloudplay/messagesdk/gson/b;->f:Z

    invoke-virtual {p3, v3}, Lcom/cloudplay/messagesdk/gson/stream/b;->c(Z)V

    .line 48
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p3, v0}, Lcom/cloudplay/messagesdk/gson/stream/b;->b(Z)V

    .line 50
    invoke-virtual {p3, v1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Z)V

    .line 51
    invoke-virtual {p3, v2}, Lcom/cloudplay/messagesdk/gson/stream/b;->c(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON ): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 54
    throw p2

    :catch_1
    move-exception p1

    .line 55
    new-instance p2, Lcom/cloudplay/messagesdk/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/cloudplay/messagesdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_0
    invoke-virtual {p3, v0}, Lcom/cloudplay/messagesdk/gson/stream/b;->b(Z)V

    .line 57
    invoke-virtual {p3, v1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Z)V

    .line 58
    invoke-virtual {p3, v2}, Lcom/cloudplay/messagesdk/gson/stream/b;->c(Z)V

    .line 59
    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonIOException;
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-static {p3}, Lcom/cloudplay/messagesdk/gson/internal/h;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/io/Writer;)Lcom/cloudplay/messagesdk/gson/stream/b;

    move-result-object p3

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/cloudplay/messagesdk/gson/stream/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 40
    new-instance p2, Lcom/cloudplay/messagesdk/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/cloudplay/messagesdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(Ljava/lang/Object;)Lcom/cloudplay/messagesdk/gson/d;
    .locals 1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/cloudplay/messagesdk/gson/e;->a:Lcom/cloudplay/messagesdk/gson/e;

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/cloudplay/messagesdk/gson/b;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/cloudplay/messagesdk/gson/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/cloudplay/messagesdk/gson/d;
    .locals 1

    .line 7
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/j/g;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;-><init>()V

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/cloudplay/messagesdk/gson/stream/b;)V

    .line 9
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->i()Lcom/cloudplay/messagesdk/gson/d;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{serializeNulls:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/gson/b;->f:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",factories:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/b;->e:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",instanceCreators:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/b;->c:Lcom/cloudplay/messagesdk/gson/internal/b;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "}"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
