.class Lcom/join/mgps/activity/ApFightActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity$e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ApFightActivity$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$a;->b:Lcom/join/mgps/activity/ApFightActivity$e;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$a;->b:Lcom/join/mgps/activity/ApFightActivity$e;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity;->mgFightClientManager:Lcom/join/mgps/helper/MGFightClientManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->connect()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$a;->b:Lcom/join/mgps/activity/ApFightActivity$e;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$800(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/t0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$a;->b:Lcom/join/mgps/activity/ApFightActivity$e;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lcom/join/mgps/activity/ApFightActivity;->access$1300(Lcom/join/mgps/activity/ApFightActivity;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
