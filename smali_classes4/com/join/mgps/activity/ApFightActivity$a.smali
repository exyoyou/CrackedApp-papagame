.class Lcom/join/mgps/activity/ApFightActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity;->showConnectExceptionDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ApFightActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$a;->b:Lcom/join/mgps/activity/ApFightActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    sput p1, Lcom/join/mgps/activity/ApFightActivity;->step:I

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$a;->b:Lcom/join/mgps/activity/ApFightActivity;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$a;->b:Lcom/join/mgps/activity/ApFightActivity;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1300(Lcom/join/mgps/activity/ApFightActivity;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$a;->b:Lcom/join/mgps/activity/ApFightActivity;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->connect()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
