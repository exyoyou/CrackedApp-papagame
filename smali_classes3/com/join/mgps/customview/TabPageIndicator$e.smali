.class Lcom/join/mgps/customview/TabPageIndicator$e;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private b:I

.field final synthetic c:Lcom/join/mgps/customview/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/TabPageIndicator;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator$e;->c:Lcom/join/mgps/customview/TabPageIndicator;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const v0, 0x7f04081a

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/TabPageIndicator$e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageIndicator$e;->b:I

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/TabPageIndicator$e;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator$e;->c:Lcom/join/mgps/customview/TabPageIndicator;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/customview/TabPageIndicator;->d(Lcom/join/mgps/customview/TabPageIndicator;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator$e;->c:Lcom/join/mgps/customview/TabPageIndicator;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/customview/TabPageIndicator;->d(Lcom/join/mgps/customview/TabPageIndicator;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-le p1, v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator$e;->c:Lcom/join/mgps/customview/TabPageIndicator;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/customview/TabPageIndicator;->d(Lcom/join/mgps/customview/TabPageIndicator;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/high16 v0, 0x40000000    # 2.0f

    .line 31
    .line 32
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
