.class public Lcom/sigmob/sdk/base/utils/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/utils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/utils/x;

.field private final b:Lcom/sigmob/sdk/base/utils/x$a;

.field private c:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/utils/x;Lcom/sigmob/sdk/base/utils/x$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "onViewTouchListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/utils/x$b;->a:Lcom/sigmob/sdk/base/utils/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/base/utils/x$b;->b:Lcom/sigmob/sdk/base/utils/x$a;

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
            "view",
            "event"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/sigmob/sdk/base/utils/x$b;->c:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/x$b;->b:Lcom/sigmob/sdk/base/utils/x$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/base/utils/x$b;->c:Landroid/view/MotionEvent;

    invoke-interface {v0, p1, v1, p2}, Lcom/sigmob/sdk/base/utils/x$a;->a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
