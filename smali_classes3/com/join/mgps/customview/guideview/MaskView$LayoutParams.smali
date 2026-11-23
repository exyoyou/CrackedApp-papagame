.class Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/guideview/MaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutParams"
.end annotation


# static fields
.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x10

.field public static final k:I = 0x20

.field public static final l:I = 0x30


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->a:I

    const/16 p1, 0x20

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->b:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->c:I

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->a:I

    const/16 p1, 0x20

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->b:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->c:I

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->a:I

    const/16 p1, 0x20

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->b:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->c:I

    .line 15
    iput p1, p0, Lcom/join/mgps/customview/guideview/MaskView$LayoutParams;->d:I

    return-void
.end method
