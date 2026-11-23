.class Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

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
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->isbackground:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->access$000(Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->access$100(Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog;->handler:Landroid/os/Handler;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const-wide/16 v1, 0xbb8

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
