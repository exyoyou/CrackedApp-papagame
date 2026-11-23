.class Lcom/join/mgps/activity/HandShankYesActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankYesActivity;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/b1;

.field final synthetic c:Lcom/join/mgps/activity/HandShankYesActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/dialog/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$handShankDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->b:Lcom/join/mgps/dialog/b1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->c:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 6
    .line 7
    const-class v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity_;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->b:Lcom/join/mgps/dialog/b1;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
