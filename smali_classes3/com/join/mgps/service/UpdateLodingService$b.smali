.class Lcom/join/mgps/service/UpdateLodingService$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/UpdateLodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/service/UpdateLodingService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/UpdateLodingService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "looper",
            "c"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/service/UpdateLodingService$b;->a:Landroid/content/Context;

    .line 7
    .line 8
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
    if-eqz p1, :cond_5

    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->g:Lcom/join/mgps/service/UpdateLodingService$d;

    .line 26
    .line 27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->g:Lcom/join/mgps/service/UpdateLodingService$d;

    .line 36
    .line 37
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->g:Lcom/join/mgps/service/UpdateLodingService$d;

    .line 46
    .line 47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->g:Lcom/join/mgps/service/UpdateLodingService$d;

    .line 56
    .line 57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$b;->b:Lcom/join/mgps/service/UpdateLodingService;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/join/mgps/service/UpdateLodingService;->g:Lcom/join/mgps/service/UpdateLodingService$d;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-interface {v0, v1, p1}, Lcom/join/mgps/service/UpdateLodingService$d;->update(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_0
    return-void
.end method
