.class Lcom/join/mgps/customview/ScrollTextViewLayout$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollTextViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ScrollTextViewLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollTextViewLayout;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
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
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->k()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$a;->a:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->l()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
