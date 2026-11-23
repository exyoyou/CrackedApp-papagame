.class Lcom/beizi/fusion/tool/ae$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/ae;->a(Landroid/view/ViewGroup;IILcom/beizi/ad/model/l;Lcom/beizi/fusion/tool/ae$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/beizi/fusion/tool/ae;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/ae;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/ae$4;->b:Lcom/beizi/fusion/tool/ae;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/tool/ae$4;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/beizi/fusion/tool/ae$4;->b:Lcom/beizi/fusion/tool/ae;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/beizi/fusion/tool/ae;->a:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/beizi/fusion/tool/ae$4;->a:I

    .line 15
    .line 16
    if-ne v0, p1, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x3eb

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x3ea

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return p1
.end method
