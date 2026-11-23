.class Lcom/join/mgps/customview/wheel/picker/WheelView$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/wheel/picker/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field static final b:I = 0x3e8

.field static final c:I = 0x7d0

.field static final d:I = 0xbb8


# instance fields
.field final a:Lcom/join/mgps/customview/wheel/picker/WheelView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/wheel/picker/WheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$f;->a:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x7d0

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0xbb8

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$f;->a:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->l(Lcom/join/mgps/customview/wheel/picker/WheelView;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$f;->a:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-static {p1, v0}, Lcom/join/mgps/customview/wheel/picker/WheelView;->k(Lcom/join/mgps/customview/wheel/picker/WheelView;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/WheelView$f;->a:Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
