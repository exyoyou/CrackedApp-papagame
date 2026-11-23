.class Lcom/join/mgps/dialog/y0$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/y0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/y0;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/y0$a;->a:Lcom/join/mgps/dialog/y0;

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
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/y0$a;->a:Lcom/join/mgps/dialog/y0;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y0;->c(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/y0$a;->a:Lcom/join/mgps/dialog/y0;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y0;->c(I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/y0$a;->a:Lcom/join/mgps/dialog/y0;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y0;->c(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/y0$a;->a:Lcom/join/mgps/dialog/y0;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y0;->c(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method
