.class public Lcom/byazt/jl/ve;
.super Lcom/byazt/jl/x;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/jl/x<",
        "Lcom/byazt/on/c;",
        "Lcom/byazt/on/tt;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Z = true

.field public static final m:[B

.field public static final nu:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/zip/CRC32;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:[B


# instance fields
.field public final c:B

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/jl/n;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:B

.field public uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/jl/n;",
            ">;"
        }
    .end annotation
.end field

.field public ve:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/byazt/jl/ve;->z:[B

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/byazt/jl/ve;->m:[B

    .line 18
    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/byazt/jl/ve;->nu:Ljava/lang/ThreadLocal;

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x45t
        0x4et
        0x44t
        -0x52t
        0x42t
        0x60t
        -0x7et
    .end array-data
.end method

.method public constructor <init>(Lcom/byazt/on/c;Lcom/byazt/jl/a;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/jl/x;-><init>(Lcom/byazt/on/a;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/jl/ve;->uj:Ljava/util/List;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/jl/ve;->n:Ljava/util/List;

    .line 17
    .line 18
    iget-byte p1, p2, Lcom/byazt/jl/a;->yp:B

    .line 19
    .line 20
    iput-byte p1, p0, Lcom/byazt/jl/ve;->c:B

    .line 21
    .line 22
    iget-byte p1, p2, Lcom/byazt/jl/a;->u:B

    .line 23
    .line 24
    iput-byte p1, p0, Lcom/byazt/jl/ve;->tt:B

    .line 25
    .line 26
    iget-short p1, p2, Lcom/byazt/jl/a;->sl:S

    .line 27
    .line 28
    mul-int/lit16 p1, p1, 0x3e8

    .line 29
    .line 30
    iget-short v0, p2, Lcom/byazt/jl/a;->t:S

    .line 31
    .line 32
    const/16 v1, 0x64

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const/16 v0, 0x64

    .line 37
    .line 38
    :cond_0
    div-int/2addr p1, v0

    .line 39
    iput p1, p0, Lcom/byazt/jl/x;->t:I

    .line 40
    .line 41
    const/16 v0, 0xa

    .line 42
    .line 43
    if-ge p1, v0, :cond_1

    .line 44
    .line 45
    iput v1, p0, Lcom/byazt/jl/x;->t:I

    .line 46
    .line 47
    :cond_1
    iget p1, p2, Lcom/byazt/jl/a;->ve:I

    .line 48
    .line 49
    iput p1, p0, Lcom/byazt/jl/x;->x:I

    .line 50
    .line 51
    iget p1, p2, Lcom/byazt/jl/a;->x:I

    .line 52
    .line 53
    iput p1, p0, Lcom/byazt/jl/x;->i:I

    .line 54
    .line 55
    iget p1, p2, Lcom/byazt/jl/a;->i:I

    .line 56
    .line 57
    iput p1, p0, Lcom/byazt/jl/x;->da:I

    .line 58
    .line 59
    iget p1, p2, Lcom/byazt/jl/a;->da:I

    .line 60
    .line 61
    iput p1, p0, Lcom/byazt/jl/x;->sl:I

    .line 62
    .line 63
    return-void
.end method

.method private c(Lcom/byazt/on/tt;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/jl/ve;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x21

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/jl/n;

    .line 6
    iget v2, v2, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/jl/ve;->uj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/jl/n;

    .line 8
    instance-of v3, v2, Lcom/byazt/jl/da;

    if-eqz v3, :cond_2

    .line 9
    iget v2, v2, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v2, v2, 0xc

    :goto_2
    add-int/2addr v1, v2

    goto :goto_1

    .line 10
    :cond_2
    instance-of v3, v2, Lcom/byazt/jl/sp;

    if-eqz v3, :cond_1

    .line 11
    iget v2, v2, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 12
    :cond_3
    sget-object v0, Lcom/byazt/jl/ve;->m:[B

    array-length v0, v0

    add-int/2addr v1, v0

    .line 13
    invoke-virtual {p1, v1}, Lcom/byazt/on/tt;->ve(I)V

    .line 14
    sget-object v0, Lcom/byazt/jl/ve;->z:[B

    invoke-virtual {p1, v0}, Lcom/byazt/on/uj;->c([B)V

    const/16 v0, 0xd

    .line 15
    invoke-virtual {p1, v0}, Lcom/byazt/on/tt;->tt(I)V

    .line 16
    invoke-virtual {p1}, Lcom/byazt/on/uj;->c()I

    move-result v0

    .line 17
    sget v2, Lcom/byazt/jl/t;->c:I

    invoke-virtual {p1, v2}, Lcom/byazt/on/tt;->c(I)V

    .line 18
    iget v2, p0, Lcom/byazt/jl/x;->x:I

    invoke-virtual {p1, v2}, Lcom/byazt/on/tt;->tt(I)V

    .line 19
    iget v2, p0, Lcom/byazt/jl/x;->i:I

    invoke-virtual {p1, v2}, Lcom/byazt/on/tt;->tt(I)V

    .line 20
    iget-object v2, p0, Lcom/byazt/jl/ve;->ve:[B

    invoke-virtual {p1, v2}, Lcom/byazt/on/uj;->c([B)V

    .line 21
    invoke-direct {p0}, Lcom/byazt/jl/ve;->c()Ljava/util/zip/CRC32;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 23
    invoke-virtual {p1}, Lcom/byazt/on/uj;->tt()[B

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 24
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {p1, v0}, Lcom/byazt/on/tt;->tt(I)V

    .line 25
    iget-object v0, p0, Lcom/byazt/jl/ve;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/jl/n;

    .line 26
    instance-of v4, v3, Lcom/byazt/jl/sl;

    if-nez v4, :cond_4

    .line 27
    iget-object v4, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    check-cast v4, Lcom/byazt/on/c;

    invoke-virtual {v4}, Lcom/byazt/on/n;->d_()V

    .line 28
    iget-object v4, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    check-cast v4, Lcom/byazt/on/c;

    iget v5, v3, Lcom/byazt/jl/n;->sp:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/byazt/on/n;->c(J)J

    .line 29
    iget-object v4, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    check-cast v4, Lcom/byazt/on/c;

    invoke-virtual {p1}, Lcom/byazt/on/uj;->tt()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/byazt/on/uj;->c()I

    move-result v6

    iget v7, v3, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v7, v7, 0xc

    invoke-virtual {v4, v5, v6, v7}, Lcom/byazt/on/n;->c([BII)I

    .line 30
    iget v3, v3, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v3}, Lcom/byazt/on/uj;->uj(I)V

    goto :goto_3

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/byazt/jl/ve;->uj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/jl/n;

    .line 32
    instance-of v4, v3, Lcom/byazt/jl/da;

    if-eqz v4, :cond_7

    .line 33
    iget-object v4, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    check-cast v4, Lcom/byazt/on/c;

    invoke-virtual {v4}, Lcom/byazt/on/n;->d_()V

    .line 34
    iget-object v4, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    check-cast v4, Lcom/byazt/on/c;

    iget v5, v3, Lcom/byazt/jl/n;->sp:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/byazt/on/n;->c(J)J

    .line 35
    iget-object v4, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    check-cast v4, Lcom/byazt/on/c;

    invoke-virtual {p1}, Lcom/byazt/on/uj;->tt()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/byazt/on/uj;->c()I

    move-result v6

    iget v7, v3, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v7, v7, 0xc

    invoke-virtual {v4, v5, v6, v7}, Lcom/byazt/on/n;->c([BII)I

    .line 36
    iget v3, v3, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v3}, Lcom/byazt/on/uj;->uj(I)V

    goto :goto_4

    .line 37
    :cond_7
    instance-of v4, v3, Lcom/byazt/jl/sp;

    if-eqz v4, :cond_6

    .line 38
    iget v4, v3, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p1, v4}, Lcom/byazt/on/tt;->tt(I)V

    .line 39
    invoke-virtual {p1}, Lcom/byazt/on/uj;->c()I

    move-result v4

    .line 40
    sget v5, Lcom/byazt/jl/da;->c:I

    invoke-virtual {p1, v5}, Lcom/byazt/on/tt;->c(I)V

    .line 41
    iget-object v5, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    check-cast v5, Lcom/byazt/on/c;

    invoke-virtual {v5}, Lcom/byazt/on/n;->d_()V

    .line 42
    iget-object v5, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    check-cast v5, Lcom/byazt/on/c;

    iget v6, v3, Lcom/byazt/jl/n;->sp:I

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/byazt/on/n;->c(J)J

    .line 43
    iget-object v5, p0, Lcom/byazt/jl/x;->sp:Lcom/byazt/on/a;

    check-cast v5, Lcom/byazt/on/c;

    invoke-virtual {p1}, Lcom/byazt/on/uj;->tt()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/byazt/on/uj;->c()I

    move-result v7

    iget v8, v3, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v5, v6, v7, v8}, Lcom/byazt/on/n;->c([BII)I

    .line 44
    iget v5, v3, Lcom/byazt/jl/n;->uj:I

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p1, v5}, Lcom/byazt/on/uj;->uj(I)V

    .line 45
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 46
    invoke-virtual {p1}, Lcom/byazt/on/uj;->tt()[B

    move-result-object v5

    iget v3, v3, Lcom/byazt/jl/n;->uj:I

    invoke-virtual {v2, v5, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 47
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {p1, v4}, Lcom/byazt/on/tt;->tt(I)V

    goto/16 :goto_4

    .line 48
    :cond_8
    sget-object v0, Lcom/byazt/jl/ve;->m:[B

    invoke-virtual {p1, v0}, Lcom/byazt/on/uj;->c([B)V

    return v1
.end method

.method private c()Ljava/util/zip/CRC32;
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/jl/ve;->nu:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/CRC32;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic c(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/byazt/on/sp;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    check-cast p5, Lcom/byazt/on/tt;

    invoke-virtual/range {p0 .. p5}, Lcom/byazt/jl/ve;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/byazt/on/tt;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lcom/byazt/on/tt;)Landroid/graphics/Bitmap;
    .locals 4

    .line 49
    :try_start_0
    invoke-direct {p0, p5}, Lcom/byazt/jl/ve;->c(Lcom/byazt/on/tt;)I

    move-result v0

    .line 50
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 51
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    iput p3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x1

    .line 53
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 54
    iput-object p4, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {p5}, Lcom/byazt/on/uj;->tt()[B

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :try_start_1
    invoke-static {p4, v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_0
    :try_start_2
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 58
    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    iput p3, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 60
    iput-boolean v3, p5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 61
    invoke-static {p4, v2, v0, p5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 62
    :goto_0
    sget-boolean p5, Lcom/byazt/jl/ve;->a:Z

    if-nez p5, :cond_1

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 63
    :cond_1
    :goto_1
    iget-object p5, p0, Lcom/byazt/jl/x;->u:Landroid/graphics/Rect;

    iput v2, p5, Landroid/graphics/Rect;->left:I

    .line 64
    iput v2, p5, Landroid/graphics/Rect;->top:I

    .line 65
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 66
    iget-object p5, p0, Lcom/byazt/jl/x;->u:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 67
    iget-object p5, p0, Lcom/byazt/jl/x;->yp:Landroid/graphics/Rect;

    iget v0, p0, Lcom/byazt/jl/x;->da:I

    int-to-float v1, v0

    int-to-float p3, p3

    div-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, p5, Landroid/graphics/Rect;->left:I

    .line 68
    iget v1, p0, Lcom/byazt/jl/x;->sl:I

    int-to-float v1, v1

    div-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, p5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    .line 69
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 70
    iget-object p5, p0, Lcom/byazt/jl/x;->yp:Landroid/graphics/Rect;

    iget v0, p0, Lcom/byazt/jl/x;->sl:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v0, p3

    float-to-int p3, v0

    iput p3, p5, Landroid/graphics/Rect;->bottom:I

    .line 71
    iget-object p3, p0, Lcom/byazt/jl/x;->u:Landroid/graphics/Rect;

    iget-object p5, p0, Lcom/byazt/jl/x;->yp:Landroid/graphics/Rect;

    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p4

    :catch_1
    move-exception p1

    .line 72
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
