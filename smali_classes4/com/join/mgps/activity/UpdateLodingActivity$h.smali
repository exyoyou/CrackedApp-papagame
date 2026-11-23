.class Lcom/join/mgps/activity/UpdateLodingActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UpdateLodingActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/t0;

.field final synthetic c:Lcom/join/mgps/activity/UpdateLodingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/dialog/t0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$disconnectDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->c:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->b:Lcom/join/mgps/dialog/t0;

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
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->b:Lcom/join/mgps/dialog/t0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->c:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$100(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/service/UpdateLodingService;->k()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$h;->c:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
