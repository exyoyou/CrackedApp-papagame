.class public Lcom/byazt/nb/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28b,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nb/tt$c;
    }
.end annotation


# instance fields
.field public a:F

.field public c:Ljava/lang/String;

.field public da:F

.field public i:I
    .annotation build Lcom/bytedance/component/sdk/annotation/ColorInt;
    .end annotation
.end field

.field public m:Ljava/lang/String;

.field public n:I

.field public sl:Z

.field public sp:F

.field public t:Landroid/graphics/PointF;

.field public tt:Ljava/lang/String;

.field public u:Landroid/graphics/PointF;

.field public uj:Lcom/byazt/nb/tt$c;

.field public ve:F

.field public x:I
    .annotation build Lcom/bytedance/component/sdk/annotation/ColorInt;
    .end annotation
.end field

.field public yp:Lcom/byazt/nb/n;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/byazt/nb/n;

    invoke-direct {v0}, Lcom/byazt/nb/n;-><init>()V

    iput-object v0, p0, Lcom/byazt/nb/tt;->yp:Lcom/byazt/nb/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/byazt/nb/tt$c;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/byazt/nb/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p8    # I
        .annotation build Lcom/bytedance/component/sdk/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Lcom/bytedance/component/sdk/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p16}, Lcom/byazt/nb/tt;->c(Ljava/lang/String;Ljava/lang/String;FLcom/byazt/nb/tt$c;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/byazt/nb/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;FLcom/byazt/nb/tt$c;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/byazt/nb/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p8    # I
        .annotation build Lcom/bytedance/component/sdk/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Lcom/bytedance/component/sdk/annotation/ColorInt;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/byazt/nb/tt;->c:Ljava/lang/String;

    move-object v1, p2

    .line 2
    iput-object v1, v0, Lcom/byazt/nb/tt;->tt:Ljava/lang/String;

    move v1, p3

    .line 3
    iput v1, v0, Lcom/byazt/nb/tt;->ve:F

    move-object v1, p4

    .line 4
    iput-object v1, v0, Lcom/byazt/nb/tt;->uj:Lcom/byazt/nb/tt$c;

    move v1, p5

    .line 5
    iput v1, v0, Lcom/byazt/nb/tt;->n:I

    move v1, p6

    .line 6
    iput v1, v0, Lcom/byazt/nb/tt;->a:F

    move v1, p7

    .line 7
    iput v1, v0, Lcom/byazt/nb/tt;->sp:F

    move v1, p8

    .line 8
    iput v1, v0, Lcom/byazt/nb/tt;->x:I

    move v1, p9

    .line 9
    iput v1, v0, Lcom/byazt/nb/tt;->i:I

    move v1, p10

    .line 10
    iput v1, v0, Lcom/byazt/nb/tt;->da:F

    move v1, p11

    .line 11
    iput-boolean v1, v0, Lcom/byazt/nb/tt;->sl:Z

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/byazt/nb/tt;->t:Landroid/graphics/PointF;

    move-object v1, p13

    .line 13
    iput-object v1, v0, Lcom/byazt/nb/tt;->u:Landroid/graphics/PointF;

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/byazt/nb/tt;->yp:Lcom/byazt/nb/n;

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/byazt/nb/tt;->z:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lcom/byazt/nb/tt;->m:Ljava/lang/String;

    return-void
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/nb/tt;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/nb/tt;->tt:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    iget v1, p0, Lcom/byazt/nb/tt;->ve:F

    .line 20
    .line 21
    add-float/2addr v0, v1

    .line 22
    float-to-int v0, v0

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/nb/tt;->uj:Lcom/byazt/nb/tt$c;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget v1, p0, Lcom/byazt/nb/tt;->n:I

    .line 35
    .line 36
    add-int/2addr v0, v1

    .line 37
    iget v1, p0, Lcom/byazt/nb/tt;->a:F

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    int-to-long v1, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    const/16 v3, 0x20

    .line 47
    .line 48
    ushr-long v3, v1, v3

    .line 49
    .line 50
    xor-long/2addr v1, v3

    .line 51
    long-to-int v2, v1

    .line 52
    add-int/2addr v0, v2

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget v1, p0, Lcom/byazt/nb/tt;->x:I

    .line 56
    .line 57
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    .line 60
    iget-object v1, p0, Lcom/byazt/nb/tt;->yp:Lcom/byazt/nb/n;

    .line 61
    .line 62
    iget v2, v1, Lcom/byazt/nb/n;->c:I

    .line 63
    .line 64
    add-int/2addr v0, v2

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    .line 67
    iget v1, v1, Lcom/byazt/nb/n;->tt:I

    .line 68
    .line 69
    add-int/2addr v0, v1

    .line 70
    return v0
.end method
