.class Lcom/join/mgps/activity/UpdateLodingActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UpdateLodingActivity;->update(ILjava/lang/Object;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$c;->c:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/UpdateLodingActivity$c;->b:Lcom/join/mgps/dialog/t0;

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
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$c;->b:Lcom/join/mgps/dialog/t0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$c;->c:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/join/mgps/activity/UpdateLodingActivity;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$c;->c:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
