.class public Lcom/byazt/jl/tt;
.super Lcom/byazt/jl/i;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/jl/tt$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/jl/i<",
        "Lcom/byazt/on/c;",
        "Lcom/byazt/on/tt;",
        ">;"
    }
.end annotation


# instance fields
.field public final da:Lcom/byazt/jl/tt$c;

.field public final i:Landroid/graphics/Paint;

.field public sp:Lcom/byazt/on/tt;

.field public x:I


# direct methods
.method public constructor <init>(Lcom/byazt/zt/tt;Lcom/byazt/jl/i$c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/jl/i;-><init>(Lcom/byazt/zt/tt;Lcom/byazt/jl/i$c;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/jl/tt;->i:Landroid/graphics/Paint;

    .line 10
    .line 11
    new-instance p2, Lcom/byazt/jl/tt$c;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p2, v0}, Lcom/byazt/jl/tt$c;-><init>(Lcom/byazt/jl/tt$1;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/on/c;)Landroid/graphics/Rect;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/byazt/jl/uj;->c(Lcom/byazt/on/c;)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/byazt/jl/n;

    .line 8
    instance-of v10, v8, Lcom/byazt/jl/c;

    if-eqz v10, :cond_1

    .line 9
    check-cast v8, Lcom/byazt/jl/c;

    iget v5, v8, Lcom/byazt/jl/c;->ve:I

    iput v5, p0, Lcom/byazt/jl/tt;->x:I

    const/4 v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    instance-of v10, v8, Lcom/byazt/jl/a;

    if-eqz v10, :cond_2

    .line 11
    new-instance v4, Lcom/byazt/jl/ve;

    check-cast v8, Lcom/byazt/jl/a;

    invoke-direct {v4, p1, v8}, Lcom/byazt/jl/ve;-><init>(Lcom/byazt/on/c;Lcom/byazt/jl/a;)V

    .line 12
    iput-object v1, v4, Lcom/byazt/jl/ve;->n:Ljava/util/List;

    .line 13
    iput-object v3, v4, Lcom/byazt/jl/ve;->ve:[B

    .line 14
    iget-object v8, p0, Lcom/byazt/jl/i;->c:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    instance-of v10, v8, Lcom/byazt/jl/sp;

    if-eqz v10, :cond_3

    if-eqz v4, :cond_0

    .line 16
    iget-object v9, v4, Lcom/byazt/jl/ve;->uj:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_3
    instance-of v10, v8, Lcom/byazt/jl/da;

    if-eqz v10, :cond_5

    if-nez v5, :cond_4

    .line 18
    new-instance v0, Lcom/byazt/jl/u;

    invoke-direct {v0, p1}, Lcom/byazt/jl/u;-><init>(Lcom/byazt/on/c;)V

    .line 19
    iput v6, v0, Lcom/byazt/jl/x;->x:I

    .line 20
    iput v7, v0, Lcom/byazt/jl/x;->i:I

    .line 21
    iget-object p1, p0, Lcom/byazt/jl/i;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iput v9, p0, Lcom/byazt/jl/tt;->x:I

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_0

    .line 23
    iget-object v9, v4, Lcom/byazt/jl/ve;->uj:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_5
    instance-of v9, v8, Lcom/byazt/jl/t;

    if-eqz v9, :cond_6

    .line 25
    check-cast v8, Lcom/byazt/jl/t;

    iget v6, v8, Lcom/byazt/jl/t;->tt:I

    .line 26
    iget v7, v8, Lcom/byazt/jl/t;->ve:I

    .line 27
    iget-object v3, v8, Lcom/byazt/jl/t;->x:[B

    goto :goto_0

    .line 28
    :cond_6
    instance-of v9, v8, Lcom/byazt/jl/sl;

    if-nez v9, :cond_0

    .line 29
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    :goto_1
    mul-int p1, v6, v7

    .line 30
    iget v0, p0, Lcom/byazt/jl/i;->ve:I

    mul-int v0, v0, v0

    div-int v0, p1, v0

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/jl/i;->n:Ljava/nio/ByteBuffer;

    .line 31
    iget-object v0, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    iget v1, p0, Lcom/byazt/jl/i;->ve:I

    mul-int v1, v1, v1

    div-int/2addr p1, v1

    add-int/2addr p1, v9

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/byazt/jl/tt$c;->ve:Ljava/nio/ByteBuffer;

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public c(Lcom/byazt/on/a;)Lcom/byazt/on/c;
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/on/c;

    invoke-direct {v0, p1}, Lcom/byazt/on/c;-><init>(Lcom/byazt/on/a;)V

    return-object v0
.end method

.method public c()Lcom/byazt/on/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jl/tt;->sp:Lcom/byazt/on/tt;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/byazt/on/tt;

    invoke-direct {v0}, Lcom/byazt/on/tt;-><init>()V

    iput-object v0, p0, Lcom/byazt/jl/tt;->sp:Lcom/byazt/on/tt;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/jl/tt;->sp:Lcom/byazt/on/tt;

    return-object v0
.end method

.method public c(Lcom/byazt/jl/x;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/jl/x<",
            "Lcom/byazt/on/c;",
            "Lcom/byazt/on/tt;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 33
    iget-object v0, p0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 34
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/byazt/jl/i;->ve:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/byazt/jl/i;->ve:I

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/byazt/jl/i;->c(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/byazt/jl/i;->uj:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    .line 36
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    iget-object v2, p0, Lcom/byazt/jl/i;->uj:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v1

    .line 38
    instance-of v1, p1, Lcom/byazt/jl/ve;

    if-eqz v1, :cond_7

    .line 39
    iget-object v1, p0, Lcom/byazt/jl/i;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 40
    iget-object v1, p0, Lcom/byazt/jl/i;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 41
    iget v1, p0, Lcom/byazt/jl/i;->tt:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 42
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget-object v1, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    iget-object v1, v1, Lcom/byazt/jl/tt$c;->tt:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 45
    iget-object v1, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    iget-byte v5, v1, Lcom/byazt/jl/tt$c;->c:B

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    if-eq v5, v3, :cond_3

    goto :goto_0

    .line 46
    :cond_3
    iget-object v1, v1, Lcom/byazt/jl/tt$c;->ve:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 47
    iget-object v1, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    iget-object v1, v1, Lcom/byazt/jl/tt$c;->ve:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 48
    :cond_4
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 49
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 50
    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/byazt/jl/ve;

    iget-byte v1, v1, Lcom/byazt/jl/ve;->tt:B

    if-ne v1, v3, :cond_5

    .line 51
    iget-object v1, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    iget-byte v5, v1, Lcom/byazt/jl/tt$c;->c:B

    if-eq v5, v3, :cond_5

    .line 52
    iget-object v1, v1, Lcom/byazt/jl/tt$c;->ve:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 53
    iget-object v1, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    iget-object v1, v1, Lcom/byazt/jl/tt$c;->ve:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    move-object v3, p1

    check-cast v3, Lcom/byazt/jl/ve;

    iget-byte v3, v3, Lcom/byazt/jl/ve;->tt:B

    iput-byte v3, v1, Lcom/byazt/jl/tt$c;->c:B

    .line 55
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 56
    move-object v1, p1

    check-cast v1, Lcom/byazt/jl/ve;

    iget-byte v1, v1, Lcom/byazt/jl/ve;->c:B

    if-nez v1, :cond_6

    .line 57
    iget v1, p1, Lcom/byazt/jl/x;->da:I

    iget v3, p0, Lcom/byazt/jl/i;->ve:I

    div-int v5, v1, v3

    iget v6, p1, Lcom/byazt/jl/x;->sl:I

    div-int v7, v6, v3

    iget v8, p1, Lcom/byazt/jl/x;->x:I

    add-int/2addr v1, v8

    div-int/2addr v1, v3

    iget v8, p1, Lcom/byazt/jl/x;->i:I

    add-int/2addr v6, v8

    div-int/2addr v6, v3

    invoke-virtual {v2, v5, v7, v1, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 58
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 59
    :cond_6
    iget-object v1, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    iget-object v1, v1, Lcom/byazt/jl/tt$c;->tt:Landroid/graphics/Rect;

    iget v3, p1, Lcom/byazt/jl/x;->da:I

    iget v4, p0, Lcom/byazt/jl/i;->ve:I

    div-int v5, v3, v4

    iget v6, p1, Lcom/byazt/jl/x;->sl:I

    div-int v7, v6, v4

    iget v8, p1, Lcom/byazt/jl/x;->x:I

    add-int/2addr v3, v8

    div-int/2addr v3, v4

    iget v8, p1, Lcom/byazt/jl/x;->i:I

    add-int/2addr v6, v8

    div-int/2addr v6, v4

    invoke-virtual {v1, v5, v7, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 61
    :cond_7
    iget v1, p1, Lcom/byazt/jl/x;->x:I

    iget v3, p1, Lcom/byazt/jl/x;->i:I

    invoke-virtual {p0, v1, v3}, Lcom/byazt/jl/i;->c(II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 62
    iget-object v3, p0, Lcom/byazt/jl/tt;->i:Landroid/graphics/Paint;

    iget v4, p0, Lcom/byazt/jl/i;->ve:I

    invoke-virtual {p0}, Lcom/byazt/jl/tt;->c()Lcom/byazt/on/tt;

    move-result-object v6

    move-object v1, p1

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/jl/x;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/byazt/on/sp;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/jl/i;->c(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-virtual {p0, v7}, Lcom/byazt/jl/i;->c(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object p1, p0, Lcom/byazt/jl/i;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 65
    iget-object p1, p0, Lcom/byazt/jl/i;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/byazt/jl/i;->c(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public tt()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/jl/tt;->x:I

    return v0
.end method

.method public synthetic tt(Lcom/byazt/on/a;)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/byazt/on/c;

    invoke-virtual {p0, p1}, Lcom/byazt/jl/tt;->c(Lcom/byazt/on/c;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public synthetic uj()Lcom/byazt/on/sp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/jl/tt;->c()Lcom/byazt/on/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public synthetic ve(Lcom/byazt/on/a;)Lcom/byazt/on/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/jl/tt;->c(Lcom/byazt/on/a;)Lcom/byazt/on/c;

    move-result-object p1

    return-object p1
.end method

.method public ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/jl/tt;->da:Lcom/byazt/jl/tt$c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/byazt/jl/tt$c;->ve:Ljava/nio/ByteBuffer;

    .line 3
    iput-object v1, p0, Lcom/byazt/jl/tt;->sp:Lcom/byazt/on/tt;

    return-void
.end method
