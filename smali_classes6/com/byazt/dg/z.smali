.class public Lcom/byazt/dg/z;
.super Lcom/byazt/dg/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xba,
        0x85
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/dg/sp<",
        "Lcom/byazt/nb/tt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vc/c<",
            "Lcom/byazt/nb/tt;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dg/sp;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/byazt/vc/c;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/dg/z;->tt(Lcom/byazt/vc/c;F)Lcom/byazt/nb/tt;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public tt(Lcom/byazt/vc/c;F)Lcom/byazt/nb/tt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/vc/c<",
            "Lcom/byazt/nb/tt;",
            ">;F)",
            "Lcom/byazt/nb/tt;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/dg/c;->ve:Lcom/byazt/vc/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, p1, Lcom/byazt/vc/c;->a:F

    .line 6
    .line 7
    iget-object v2, p1, Lcom/byazt/vc/c;->sp:Ljava/lang/Float;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    :goto_0
    iget-object v3, p1, Lcom/byazt/vc/c;->c:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/byazt/vc/c;->tt:Ljava/lang/Object;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    move-object p1, v3

    .line 26
    check-cast p1, Lcom/byazt/nb/tt;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    check-cast p1, Lcom/byazt/nb/tt;

    .line 30
    .line 31
    :goto_1
    move-object v4, p1

    .line 32
    invoke-virtual {p0}, Lcom/byazt/dg/c;->n()F

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {p0}, Lcom/byazt/dg/c;->x()F

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    move v5, p2

    .line 41
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/vc/ve;->c(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/byazt/nb/tt;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    cmpl-float p2, p2, v0

    .line 51
    .line 52
    if-nez p2, :cond_4

    .line 53
    .line 54
    iget-object p2, p1, Lcom/byazt/vc/c;->tt:Ljava/lang/Object;

    .line 55
    .line 56
    if-nez p2, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    check-cast p2, Lcom/byazt/nb/tt;

    .line 60
    .line 61
    return-object p2

    .line 62
    :cond_4
    :goto_2
    iget-object p1, p1, Lcom/byazt/vc/c;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Lcom/byazt/nb/tt;

    .line 65
    .line 66
    return-object p1
.end method
