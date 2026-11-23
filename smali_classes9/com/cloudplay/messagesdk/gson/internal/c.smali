.class public final Lcom/cloudplay/messagesdk/gson/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final g:Lcom/cloudplay/messagesdk/gson/internal/c;


# instance fields
.field private a:D

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/internal/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloudplay/messagesdk/gson/internal/c;->g:Lcom/cloudplay/messagesdk/gson/internal/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->a:D

    .line 7
    .line 8
    const/16 v0, 0x88

    .line 9
    .line 10
    iput v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->b:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->c:Z

    .line 14
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->e:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->f:Ljava/util/List;

    .line 26
    .line 27
    return-void
.end method

.method private a(Lcom/cloudplay/messagesdk/gson/i/d;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 21
    invoke-interface {p1}, Lcom/cloudplay/messagesdk/gson/i/d;->value()D

    move-result-wide v0

    .line 22
    iget-wide v2, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->a:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/cloudplay/messagesdk/gson/i/d;Lcom/cloudplay/messagesdk/gson/i/e;)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/c;->a(Lcom/cloudplay/messagesdk/gson/i/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/cloudplay/messagesdk/gson/internal/c;->a(Lcom/cloudplay/messagesdk/gson/i/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Lcom/cloudplay/messagesdk/gson/i/e;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1}, Lcom/cloudplay/messagesdk/gson/i/e;->value()D

    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->a:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 15
    iget-wide v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->a:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v4, 0x1

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_0

    const-class v0, Lcom/cloudplay/messagesdk/gson/i/d;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/gson/i/d;

    const-class v1, Lcom/cloudplay/messagesdk/gson/i/e;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/cloudplay/messagesdk/gson/i/e;

    invoke-direct {p0, v0, v1}, Lcom/cloudplay/messagesdk/gson/internal/c;->a(Lcom/cloudplay/messagesdk/gson/i/d;Lcom/cloudplay/messagesdk/gson/i/e;)Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->c:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/c;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 17
    :cond_1
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/c;->b(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 4
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/c;->d(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/Class;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->f:Ljava/util/List;

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/gson/ExclusionStrategy;

    .line 3
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/c;->d(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private d(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    and-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/Class;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/c;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/c;->b(Ljava/lang/Class;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->b:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->a:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    .line 3
    const-class v0, Lcom/cloudplay/messagesdk/gson/i/d;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/gson/i/d;

    const-class v2, Lcom/cloudplay/messagesdk/gson/i/e;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/cloudplay/messagesdk/gson/i/e;

    invoke-direct {p0, v0, v2}, Lcom/cloudplay/messagesdk/gson/internal/c;->a(Lcom/cloudplay/messagesdk/gson/i/d;Lcom/cloudplay/messagesdk/gson/i/e;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->d:Z

    if-eqz v0, :cond_5

    .line 6
    const-class v0, Lcom/cloudplay/messagesdk/gson/i/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/gson/i/a;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/cloudplay/messagesdk/gson/i/a;->serialize()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/cloudplay/messagesdk/gson/i/a;->deserialize()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return v1

    .line 8
    :cond_5
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->c:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/c;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 9
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/c;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    if-eqz p2, :cond_8

    .line 10
    iget-object p2, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->e:Ljava/util/List;

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/cloudplay/messagesdk/gson/internal/c;->f:Ljava/util/List;

    .line 11
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 12
    new-instance v0, Lcom/cloudplay/messagesdk/gson/a;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/a;-><init>(Ljava/lang/reflect/Field;)V

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloudplay/messagesdk/gson/ExclusionStrategy;

    .line 14
    invoke-interface {p2, v0}, Lcom/cloudplay/messagesdk/gson/ExclusionStrategy;->shouldSkipField(Lcom/cloudplay/messagesdk/gson/a;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method protected clone()Lcom/cloudplay/messagesdk/gson/internal/c;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/gson/internal/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/gson/internal/c;->clone()Lcom/cloudplay/messagesdk/gson/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cloudplay/messagesdk/gson/b;",
            "Lcom/cloudplay/messagesdk/gson/j/a<",
            "TT;>;)",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/j/a;->a()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/c;->a(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v0, v3}, Lcom/cloudplay/messagesdk/gson/internal/c;->b(Ljava/lang/Class;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v8, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v8, 0x1

    .line 23
    :goto_1
    if-nez v1, :cond_3

    .line 24
    .line 25
    invoke-direct {p0, v0, v2}, Lcom/cloudplay/messagesdk/gson/internal/c;->b(Ljava/lang/Class;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/4 v7, 0x0

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 35
    :goto_3
    if-nez v8, :cond_4

    .line 36
    .line 37
    if-nez v7, :cond_4

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    return-object p1

    .line 41
    :cond_4
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/c$a;

    .line 42
    .line 43
    move-object v5, v0

    .line 44
    move-object v6, p0

    .line 45
    move-object v9, p1

    .line 46
    move-object v10, p2

    .line 47
    invoke-direct/range {v5 .. v10}, Lcom/cloudplay/messagesdk/gson/internal/c$a;-><init>(Lcom/cloudplay/messagesdk/gson/internal/c;ZZLcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/j/a;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method
