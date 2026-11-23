.class public Lcom/alibaba/fastjson/serializer/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/alibaba/fastjson/serializer/t1;

.field private final b:Lcom/alibaba/fastjson/serializer/v1;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/n1;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/e2;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/f1;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/o1;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/text/DateFormat;

.field private m:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/r1;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/alibaba/fastjson/serializer/r1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    invoke-static {}, Lcom/alibaba/fastjson/serializer/t1;->f()Lcom/alibaba/fastjson/serializer/t1;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;Lcom/alibaba/fastjson/serializer/t1;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/t1;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;Lcom/alibaba/fastjson/serializer/t1;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/v1;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/alibaba/fastjson/serializer/t1;->f()Lcom/alibaba/fastjson/serializer/t1;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;Lcom/alibaba/fastjson/serializer/t1;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/v1;Lcom/alibaba/fastjson/serializer/t1;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->c:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->d:Ljava/util/List;

    .line 8
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->e:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->f:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->g:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/alibaba/fastjson/serializer/v0;->i:I

    const-string v1, "\t"

    .line 13
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/v0;->j:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->m:Ljava/util/IdentityHashMap;

    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 16
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/v0;->a:Lcom/alibaba/fastjson/serializer/t1;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/x0;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;Lcom/alibaba/fastjson/serializer/t1;)V

    return-void
.end method

.method public static final I(Lcom/alibaba/fastjson/serializer/v1;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final J(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/v0;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/v0;-><init>(Lcom/alibaba/fastjson/serializer/v1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/v1;->x0(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {p1, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->n:Lcom/alibaba/fastjson/serializer/r1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/r1;->d()Lcom/alibaba/fastjson/serializer/r1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->n:Lcom/alibaba/fastjson/serializer/r1;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/v0;->i:I

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v0;->j:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public C(Lcom/alibaba/fastjson/serializer/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->n:Lcom/alibaba/fastjson/serializer/r1;

    .line 2
    .line 3
    return-void
.end method

.method public D(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/v0;->E(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public E(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 7

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/r1;

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move v5, p4

    .line 17
    move v6, p5

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/r1;-><init>(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->n:Lcom/alibaba/fastjson/serializer/r1;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->m:Ljava/util/IdentityHashMap;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->m:Ljava/util/IdentityHashMap;

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->m:Ljava/util/IdentityHashMap;

    .line 35
    .line 36
    iget-object p3, p0, Lcom/alibaba/fastjson/serializer/v0;->n:Lcom/alibaba/fastjson/serializer/r1;

    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public F(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->n:Lcom/alibaba/fastjson/serializer/r1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/v0;->D(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->k:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->l:Ljava/text/DateFormat;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->l:Ljava/text/DateFormat;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public H(Ljava/text/DateFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->l:Ljava/text/DateFormat;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->k:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->k:Ljava/lang/String;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final K(Ljava/lang/Object;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public final L(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/z1;->a:Lcom/alibaba/fastjson/serializer/z1;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/serializer/z1;->f(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected final M(CLjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public O(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v0;->getContext()Lcom/alibaba/fastjson/serializer/r1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/r1;->c()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 12
    .line 13
    const-string v0, "{\"$ref\":\"@\"}"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/r1;->d()Lcom/alibaba/fastjson/serializer/r1;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/r1;->c()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-ne p1, v1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 32
    .line 33
    const-string v0, "{\"$ref\":\"..\"}"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/r1;->d()Lcom/alibaba/fastjson/serializer/r1;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/r1;->c()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 52
    .line 53
    const-string v0, "{\"$ref\":\"$\"}"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v0;->t(Ljava/lang/Object;)Lcom/alibaba/fastjson/serializer/r1;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/r1;->e()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 68
    .line 69
    const-string v1, "{\"$ref\":\""

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 80
    .line 81
    const-string v0, "\"}"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/r1;->d()Lcom/alibaba/fastjson/serializer/r1;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_0
.end method

.method public final P(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson/serializer/v0;->Q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p2

    .line 20
    move-object v5, p3

    .line 21
    move v6, p4

    .line 22
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p2
.end method

.method public final R(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Date;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v0;->i()Ljava/text/DateFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    check-cast p1, Ljava/util/Date;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->d(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->m:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public d()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v0;->i:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/serializer/v0;->i:I

    .line 6
    .line 7
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->d:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->d:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->d:Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->c:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->c:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->c:Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public getContext()Lcom/alibaba/fastjson/serializer/r1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->n:Lcom/alibaba/fastjson/serializer/r1;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/text/DateFormat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->l:Ljava/text/DateFormat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->k:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v0;->k:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->l:Ljava/text/DateFormat;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->l:Ljava/text/DateFormat;

    .line 19
    .line 20
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->l:Ljava/text/DateFormat;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->k:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v0;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public l()Lcom/alibaba/fastjson/serializer/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->a:Lcom/alibaba/fastjson/serializer/t1;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/f1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->g:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->g:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->g:Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/f1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/j1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->a:Lcom/alibaba/fastjson/serializer/t1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/t1;->g(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/n1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->e:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->e:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->e:Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/n1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/o1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->h:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->h:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->h:Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/o1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public t(Ljava/lang/Object;)Lcom/alibaba/fastjson/serializer/r1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->m:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/alibaba/fastjson/serializer/r1;

    .line 12
    .line 13
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/v1;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/e2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->f:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->f:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->f:Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/e2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Lcom/alibaba/fastjson/serializer/v1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v0;->i:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/serializer/v0;->i:I

    .line 6
    .line 7
    return-void
.end method

.method public y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final z(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/v0;->b:Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p2, 0x1

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v0;->n:Lcom/alibaba/fastjson/serializer/r1;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/r1;->d()Lcom/alibaba/fastjson/serializer/r1;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_0
    if-eqz p1, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    return p2
.end method
