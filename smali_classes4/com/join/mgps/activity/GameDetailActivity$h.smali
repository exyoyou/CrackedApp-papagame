.class Lcom/join/mgps/activity/GameDetailActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity;->showPopupWindow(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$decorView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$h;->c:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$h;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$h;->b:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    sub-int/2addr v1, v0

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$h;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    div-int/lit8 v0, v0, 0x3

    .line 23
    .line 24
    mul-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-le v1, v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$h;->c:Lcom/join/mgps/activity/GameDetailActivity;

    .line 30
    .line 31
    iget-boolean v1, v0, Lcom/join/mgps/activity/GameDetailActivity;->isc:Z

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->mPopWindow:Landroid/widget/PopupWindow;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$h;->c:Lcom/join/mgps/activity/GameDetailActivity;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Lcom/join/mgps/activity/GameDetailActivity;->isc:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$h;->c:Lcom/join/mgps/activity/GameDetailActivity;

    .line 47
    .line 48
    iput-boolean v2, v0, Lcom/join/mgps/activity/GameDetailActivity;->isc:Z

    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method
