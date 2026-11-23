.class public final Lcom/byazt/lbn/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f0,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/lbn/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:I

.field public static final c:F

.field public static final n:I

.field public static final tt:I

.field public static final uj:I

.field public static final ve:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    sput v0, Lcom/byazt/lbn/tt$c;->c:F

    .line 16
    .line 17
    const/high16 v1, 0x43640000    # 228.0f

    .line 18
    .line 19
    mul-float v1, v1, v0

    .line 20
    .line 21
    const/high16 v2, 0x3f000000    # 0.5f

    .line 22
    .line 23
    add-float/2addr v1, v2

    .line 24
    float-to-int v1, v1

    .line 25
    sput v1, Lcom/byazt/lbn/tt$c;->tt:I

    .line 26
    .line 27
    const/high16 v1, 0x43200000    # 160.0f

    .line 28
    .line 29
    mul-float v1, v1, v0

    .line 30
    .line 31
    add-float/2addr v1, v2

    .line 32
    float-to-int v1, v1

    .line 33
    sput v1, Lcom/byazt/lbn/tt$c;->ve:I

    .line 34
    .line 35
    const/high16 v1, 0x41700000    # 15.0f

    .line 36
    .line 37
    mul-float v1, v1, v0

    .line 38
    .line 39
    add-float/2addr v1, v2

    .line 40
    float-to-int v1, v1

    .line 41
    sput v1, Lcom/byazt/lbn/tt$c;->uj:I

    .line 42
    .line 43
    const/high16 v1, 0x41600000    # 14.0f

    .line 44
    .line 45
    mul-float v1, v1, v0

    .line 46
    .line 47
    add-float/2addr v1, v2

    .line 48
    float-to-int v1, v1

    .line 49
    sput v1, Lcom/byazt/lbn/tt$c;->n:I

    .line 50
    .line 51
    const/high16 v1, 0x41800000    # 16.0f

    .line 52
    .line 53
    mul-float v0, v0, v1

    .line 54
    .line 55
    add-float/2addr v0, v2

    .line 56
    float-to-int v0, v0

    .line 57
    sput v0, Lcom/byazt/lbn/tt$c;->a:I

    .line 58
    .line 59
    return-void
.end method
