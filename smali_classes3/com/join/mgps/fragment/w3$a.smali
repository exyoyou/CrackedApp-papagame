.class Lcom/join/mgps/fragment/w3$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/w3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/w3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/w3;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/w3$a;->a:Lcom/join/mgps/fragment/w3;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/w3$a;->a:Lcom/join/mgps/fragment/w3;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/fragment/w3;->f:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/w3$a;->a:Lcom/join/mgps/fragment/w3;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/join/mgps/fragment/w3;->f:Lcom/join/mgps/customview/XListView2;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/fragment/w3$a;->a:Lcom/join/mgps/fragment/w3;

    .line 27
    .line 28
    iget v0, p1, Lcom/join/mgps/fragment/w3;->i:I

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/fragment/w3;->f:Lcom/join/mgps/customview/XListView2;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method
