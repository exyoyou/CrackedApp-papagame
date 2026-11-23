.class public Lcom/byazt/vvt/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x1d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/vvt/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(Lcom/byazt/ete/x$uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/byazt/ete/x$uj;->sp()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/byazt/vvt/a$c;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/byazt/vvt/a$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/vvt/a$c;->c:I

    return p0
.end method


# virtual methods
.method public c(ILcom/byazt/ete/x$uj;)I
    .locals 3

    .line 2
    iget v0, p0, Lcom/byazt/vvt/a$c;->c:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ete/x$uj;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_1

    return p2

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    if-gtz v1, :cond_2

    if-le v2, p2, :cond_2

    move p2, v2

    goto :goto_0

    :cond_3
    return p2
.end method

.method public c(ILcom/byazt/dj/tt;Lcom/byazt/ete/x$uj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 7
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v8, Lcom/byazt/vvt/a$c$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/byazt/vvt/a$c$1;-><init>(Lcom/byazt/vvt/a$c;ILcom/byazt/dj/tt;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/x$uj;)V

    const-string p1, "load_score_cache"

    invoke-virtual {v0, v8, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method
