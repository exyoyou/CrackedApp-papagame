.class Lcom/join/mgps/customview/ScratchView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScratchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ScratchView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScratchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScratchView$a;->b:Lcom/join/mgps/customview/ScratchView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView$a;->b:Lcom/join/mgps/customview/ScratchView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/ScratchView$a;->b:Lcom/join/mgps/customview/ScratchView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v9

    .line 13
    mul-int v1, v0, v9

    .line 14
    .line 15
    int-to-float v10, v1

    .line 16
    invoke-static {}, Lcom/join/mgps/customview/ScratchView;->a()Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-array v11, v1, [I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v1, v2

    .line 26
    move-object v2, v11

    .line 27
    move v4, v0

    .line 28
    move v7, v0

    .line 29
    move v8, v9

    .line 30
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_0
    if-ge v3, v0, :cond_2

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_1
    if-ge v5, v9, :cond_1

    .line 41
    .line 42
    mul-int v6, v5, v0

    .line 43
    .line 44
    add-int/2addr v6, v3

    .line 45
    aget v6, v11, v6

    .line 46
    .line 47
    if-nez v6, :cond_0

    .line 48
    .line 49
    const/high16 v6, 0x3f800000    # 1.0f

    .line 50
    .line 51
    add-float/2addr v4, v6

    .line 52
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    cmpl-float v0, v4, v2

    .line 59
    .line 60
    if-lez v0, :cond_3

    .line 61
    .line 62
    cmpl-float v0, v10, v2

    .line 63
    .line 64
    if-lez v0, :cond_3

    .line 65
    .line 66
    const/high16 v0, 0x42c80000    # 100.0f

    .line 67
    .line 68
    mul-float v4, v4, v0

    .line 69
    .line 70
    div-float/2addr v4, v10

    .line 71
    float-to-int v0, v4

    .line 72
    iget-object v2, p0, Lcom/join/mgps/customview/ScratchView$a;->b:Lcom/join/mgps/customview/ScratchView;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/join/mgps/customview/ScratchView;->b(Lcom/join/mgps/customview/ScratchView;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-le v0, v2, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView$a;->b:Lcom/join/mgps/customview/ScratchView;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v2}, Lcom/join/mgps/customview/ScratchView;->c(Lcom/join/mgps/customview/ScratchView;Z)Z

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView$a;->b:Lcom/join/mgps/customview/ScratchView;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/join/mgps/customview/ScratchView;->d(Lcom/join/mgps/customview/ScratchView;Z)Z

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView$a;->b:Lcom/join/mgps/customview/ScratchView;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_2
    return-void
.end method
