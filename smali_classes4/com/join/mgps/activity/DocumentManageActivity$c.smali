.class Lcom/join/mgps/activity/DocumentManageActivity$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/DocumentManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/DocumentManageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DocumentManageActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

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
    .locals 3
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
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/DocumentManageActivity;->access$000(Lcom/join/mgps/activity/DocumentManageActivity;)Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 33
    .line 34
    iget v2, v2, Lcom/join/mgps/activity/DocumentManageActivity;->time:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, "s"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 52
    .line 53
    iget v1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->time:I

    .line 54
    .line 55
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    iput v1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->time:I

    .line 58
    .line 59
    if-gez v1, :cond_2

    .line 60
    .line 61
    iget-object p1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance p1, Landroid/os/Message;

    .line 68
    .line 69
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 70
    .line 71
    .line 72
    iput v0, p1, Landroid/os/Message;->what:I

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->handler:Landroid/os/Handler;

    .line 77
    .line 78
    const-wide/16 v1, 0x3e8

    .line 79
    .line 80
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method
