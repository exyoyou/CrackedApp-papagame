.class Lcom/join/mgps/customview/ScrollViewContainer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ScrollViewContainer;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollViewContainer;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$c;->b:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/widget/ScrollView;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer$c;->b:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$c;->b:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->h(Lcom/join/mgps/customview/ScrollViewContainer;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne p1, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-static {p2, v1}, Lcom/join/mgps/customview/ScrollViewContainer;->l(Lcom/join/mgps/customview/ScrollViewContainer;Z)Z

    .line 24
    .line 25
    .line 26
    return v0
.end method
