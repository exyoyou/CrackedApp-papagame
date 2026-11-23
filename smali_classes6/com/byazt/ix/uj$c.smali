.class public Lcom/byazt/ix/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x68d,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ix/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/byazt/ix/uj$tt;

.field public final synthetic c:Lcom/byazt/ix/uj;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/yf/u;",
            ">;"
        }
    .end annotation
.end field

.field public sp:I

.field public final tt:Landroid/app/Activity;

.field public final uj:I

.field public final ve:I

.field public x:I


# direct methods
.method public constructor <init>(Lcom/byazt/ix/uj;Landroid/app/Activity;Ljava/util/List;IILcom/byazt/ix/uj$tt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/byazt/yf/u;",
            ">;II",
            "Lcom/byazt/ix/uj$tt;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/ix/uj$c;->c:Lcom/byazt/ix/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/ix/uj$c;->tt:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/ix/uj$c;->n:Ljava/util/List;

    .line 9
    .line 10
    iput p4, p0, Lcom/byazt/ix/uj$c;->ve:I

    .line 11
    .line 12
    iput p5, p0, Lcom/byazt/ix/uj$c;->uj:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/byazt/ix/uj$c;->a:Lcom/byazt/ix/uj$tt;

    .line 15
    .line 16
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/byazt/ix/uj$c;->sp:I

    .line 21
    .line 22
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/byazt/ix/uj$c;->x:I

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ix/uj$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ix/uj$c;->x:I

    .line 2
    .line 3
    return p0
.end method

.method private c()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/byazt/ix/uj$c;->ve:I

    if-ge v1, v2, :cond_7

    .line 3
    iget-object v2, p0, Lcom/byazt/ix/uj$c;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 4
    iget-object v2, p0, Lcom/byazt/ix/uj$c;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yf/u;

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {v2}, Lcom/byazt/yf/u;->c()Lcom/byazt/ll/tt;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lcom/byazt/yf/u;->tt()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    const-string v2, "TTMediationSDK"

    if-eqz v3, :cond_5

    .line 7
    invoke-virtual {v3}, Lcom/byazt/ll/tt;->my()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 8
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u9884\u52a0\u8f7dpreload\u4f20\u5165\u7684GMAdSlotBase\u4e3abanner\u7c7b\u578b\uff0c\u4e0d\u652f\u6301\u8be5\u7c7b\u578b\u9884\u52a0\u8f7d\uff0c\u5e7f\u544a\u4f4d: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v3}, Lcom/byazt/ll/tt;->my()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 10
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u9884\u52a0\u8f7dpreload\u4f20\u5165\u7684GMAdSlotBase\u4e3a\u63d2\u5c4f\u7c7b\u578b\uff0c\u4e0d\u652f\u6301\u8be5\u7c7b\u578b\u9884\u52a0\u8f7d\uff0c\u5e7f\u544a\u4f4d: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v3}, Lcom/byazt/ll/tt;->my()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 12
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u9884\u52a0\u8f7dpreload\u4f20\u5165\u7684GMAdSlotBase\u4e3aDraw\u7c7b\u578b\uff0c\u4e0d\u652f\u6301\u8be5\u7c7b\u578b\u9884\u52a0\u8f7d\uff0c\u5e7f\u544a\u4f4d: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/byazt/ix/uj$c;->c:Lcom/byazt/ix/uj;

    invoke-virtual {v2, v6, v3}, Lcom/byazt/ix/uj;->c(Ljava/lang/String;Lcom/byazt/ll/tt;)V

    .line 14
    invoke-virtual {v3, v6}, Lcom/byazt/ll/tt;->uj(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/byazt/ck/uj;->c()Lcom/byazt/ck/uj;

    move-result-object v2

    const/16 v4, 0x65

    invoke-virtual {v2, v6, v0, v4}, Lcom/byazt/ck/uj;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2}, Lcom/byazt/nbs/tt;->pf()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/byazt/ll/tt;->sp(I)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v3}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    const/16 v2, 0xa

    .line 18
    invoke-virtual {v3, v2}, Lcom/byazt/ll/tt;->sp(I)V

    .line 19
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/byazt/ix/uj$c;->c:Lcom/byazt/ix/uj;

    iget-object v5, p0, Lcom/byazt/ix/uj$c;->tt:Landroid/app/Activity;

    const/4 v7, 0x5

    const/4 v8, 0x0

    new-instance v9, Lcom/byazt/ix/uj$c$1;

    invoke-direct {v9, p0}, Lcom/byazt/ix/uj$c$1;-><init>(Lcom/byazt/ix/uj$c;)V

    invoke-static/range {v4 .. v9}, Lcom/byazt/ix/uj;->c(Lcom/byazt/ix/uj;Landroid/content/Context;Ljava/lang/String;IILcom/byazt/ix/uj$ve;)V

    goto :goto_2

    .line 20
    :cond_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u9884\u52a0\u8f7dpreload\u4f20\u5165\u7684GMAdSlotBase\u4e3a\u7a7a\uff0c\u5e7f\u544a\u4f4d\uff1a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/byazt/ix/uj$c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 22
    new-instance v0, Lcom/byazt/ix/uj$c$2;

    invoke-direct {v0, p0}, Lcom/byazt/ix/uj$c$2;-><init>(Lcom/byazt/ix/uj$c;)V

    iget v1, p0, Lcom/byazt/ix/uj$c;->uj:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;J)V

    :cond_8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ix/uj$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ix/uj$c;->c()V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/ix/uj$c;)Lcom/byazt/ix/uj$tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ix/uj$c;->a:Lcom/byazt/ix/uj$tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/ix/uj$c;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ix/uj$c;->sp:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/byazt/ix/uj$c;->sp:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic uj(Lcom/byazt/ix/uj$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ix/uj$c;->sp:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/ix/uj$c;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ix/uj$c;->x:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/byazt/ix/uj$c;->x:I

    .line 6
    .line 7
    return v0
.end method
