.class public Lcom/byazt/zy/gt;
.super Lcom/byazt/zy/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a2,
        0xc3
    }
.end annotation


# instance fields
.field public final a:Z

.field public final n:Ljava/lang/String;

.field public final sp:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Lcom/byazt/zk/ve;

.field public x:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/rh;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->sp()Lcom/byazt/jx/rh$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/jx/rh$c;->c()Landroid/graphics/Paint$Cap;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->x()Lcom/byazt/jx/rh$tt;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/byazt/jx/rh$tt;->c()Landroid/graphics/Paint$Join;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->i()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->ve()Lcom/byazt/kd/uj;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->uj()Lcom/byazt/kd/tt;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->n()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->a()Lcom/byazt/kd/tt;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-direct/range {v1 .. v10}, Lcom/byazt/zy/c;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/byazt/kd/uj;Lcom/byazt/kd/tt;Ljava/util/List;Lcom/byazt/kd/tt;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/byazt/zy/gt;->uj:Lcom/byazt/zk/ve;

    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->c()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/byazt/zy/gt;->n:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->da()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/byazt/zy/gt;->a:Z

    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/byazt/jx/rh;->tt()Lcom/byazt/kd/c;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/byazt/kd/c;->c()Lcom/byazt/dg/c;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/byazt/zy/gt;->sp:Lcom/byazt/dg/c;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/zy/gt;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/zy/gt;->sp:Lcom/byazt/dg/c;

    .line 9
    .line 10
    check-cast v1, Lcom/byazt/dg/tt;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/byazt/dg/tt;->i()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/zy/gt;->x:Lcom/byazt/dg/c;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/graphics/ColorFilter;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/zy/c;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
