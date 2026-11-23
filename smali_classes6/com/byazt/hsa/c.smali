.class public Lcom/byazt/hsa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x980,
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/ut/i;


# direct methods
.method public constructor <init>(Lcom/byazt/ut/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/hsa/c;->c:Lcom/byazt/ut/i;

    .line 5
    .line 6
    return-void
.end method

.method private c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Lcom/byazt/ut/c;)V
    .locals 7

    .line 15
    invoke-virtual {p4}, Lcom/byazt/ut/c;->n()Lcom/byazt/lk/uj;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/byazt/lk/uj;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p4}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p4

    iget-object v0, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    .line 17
    invoke-static {p4, v0}, Lcom/byazt/rj/c;->c(Ljava/util/function/Function;Ljava/lang/String;)I

    move-result p4

    .line 18
    invoke-virtual {p1}, Lcom/byazt/ut/sl;->c()I

    move-result v0

    if-gt p4, v0, :cond_1

    return-void

    .line 19
    :cond_1
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_2

    return-void

    .line 20
    :cond_2
    invoke-static {p3}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 21
    :cond_3
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 22
    :cond_4
    invoke-static {p3}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v0

    .line 23
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 26
    iget-object p2, p0, Lcom/byazt/hsa/c;->c:Lcom/byazt/ut/i;

    if-eqz p2, :cond_5

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "source:"

    .line 28
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " target:"

    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " classloader:"

    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " target classloader:"

    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    iget-object p3, p0, Lcom/byazt/hsa/c;->c:Lcom/byazt/ut/i;

    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    const/4 v0, 0x3

    .line 34
    invoke-interface {p3, p1, v0, p2, p4}, Lcom/byazt/ut/i;->c(Lcom/byazt/ut/sl;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void

    .line 35
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/byazt/hsa/c;->c(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 36
    invoke-virtual {p1, p4}, Lcom/byazt/ut/sl;->c(I)V

    .line 37
    iget-object v1, p0, Lcom/byazt/hsa/c;->c:Lcom/byazt/ut/i;

    if-eqz v1, :cond_7

    .line 38
    iget-object v2, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    iget-object v4, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget v5, p1, Lcom/byazt/ut/sl;->ve:I

    .line 39
    invoke-virtual {p1}, Lcom/byazt/ut/sl;->n()I

    move-result v6

    move-object v3, p3

    .line 40
    invoke-interface/range {v1 .. v6}, Lcom/byazt/ut/i;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 41
    :cond_7
    invoke-direct {p0, v0, p1}, Lcom/byazt/hsa/c;->c(Ljava/util/function/Function;Lcom/byazt/ut/sl;)Z

    return-void
.end method

.method private c(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 3

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, -0x4

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Ljava/util/function/Function;Lcom/byazt/ut/sl;)Z
    .locals 3

    .line 42
    invoke-static {p1}, Lcom/byazt/rj/c;->tt(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 43
    iget-object p1, p0, Lcom/byazt/hsa/c;->c:Lcom/byazt/ut/i;

    if-eqz p1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get origin service impl failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2, p2, v1}, Lcom/byazt/ut/i;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v0

    .line 45
    :cond_1
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, -0x1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    invoke-static {p1, p2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public c(Lcom/byazt/ut/sl;Lcom/byazt/ut/c;Ljava/util/function/Function;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Lcom/byazt/ut/sl;->a()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 8
    :cond_0
    iget-boolean p3, p1, Lcom/byazt/ut/sl;->sp:Z

    if-nez p3, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/byazt/ut/sl;->uj()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/byazt/hsa/c;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Lcom/byazt/ut/c;)V

    :cond_1
    return-void

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ut/sl;->ve()Ljava/util/Map;

    move-result-object p3

    .line 12
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/c;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/byazt/hsa/c;->c(Lcom/byazt/ut/sl;Lcom/byazt/dna/c;Ljava/lang/Object;Lcom/byazt/ut/c;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public c(Lcom/byazt/ut/sl;Ljava/util/function/Function;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/byazt/rj/c;->c(Ljava/util/function/Function;Ljava/lang/String;)I

    move-result v0

    .line 2
    iget v1, p1, Lcom/byazt/ut/sl;->ve:I

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Lcom/byazt/ut/sl;->tt(I)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/byazt/ut/sl;->c(Ljava/util/function/Function;)V

    .line 5
    iget-object v1, p0, Lcom/byazt/hsa/c;->c:Lcom/byazt/ut/i;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p1, Lcom/byazt/ut/sl;->a:Ljava/lang/String;

    iget p1, p1, Lcom/byazt/ut/sl;->ve:I

    invoke-interface {v1, v2, p2, p1, v0}, Lcom/byazt/ut/i;->c(Ljava/lang/String;Ljava/lang/Object;II)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
