.class Lcom/join/mgps/customview/GamelistExpandableTextView$e;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/GamelistExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lcom/join/mgps/customview/GamelistExpandableTextView;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/GamelistExpandableTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->c:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/GamelistExpandableTextView;Lcom/join/mgps/customview/GamelistExpandableTextView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/GamelistExpandableTextView$e;-><init>(Lcom/join/mgps/customview/GamelistExpandableTextView;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelected"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->c:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->j(Lcom/join/mgps/customview/GamelistExpandableTextView;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->c:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->m(Lcom/join/mgps/customview/GamelistExpandableTextView;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->b:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->c:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->e(Lcom/join/mgps/customview/GamelistExpandableTextView;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->c:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->k(Lcom/join/mgps/customview/GamelistExpandableTextView;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->b:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->c:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->l(Lcom/join/mgps/customview/GamelistExpandableTextView;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 v0, 0x0

    .line 62
    :goto_1
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 63
    .line 64
    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
