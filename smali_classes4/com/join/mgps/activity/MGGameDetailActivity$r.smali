.class Lcom/join/mgps/activity/MGGameDetailActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$r;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$r;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$400(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Dialog;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$r;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$400(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Dialog;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$r;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$400(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Dialog;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
