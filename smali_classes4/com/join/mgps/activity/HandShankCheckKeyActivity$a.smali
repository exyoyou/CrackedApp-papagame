.class Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankCheckKeyActivity;->handleKeyDownUi(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

.field final synthetic c:Lcom/join/mgps/activity/HandShankCheckKeyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$keyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->c:Lcom/join/mgps/activity/HandShankCheckKeyActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->c:Lcom/join/mgps/activity/HandShankCheckKeyActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->access$000(Lcom/join/mgps/activity/HandShankCheckKeyActivity;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->c:Lcom/join/mgps/activity/HandShankCheckKeyActivity;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 13
    .line 14
    iget v1, v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;->a:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 23
    .line 24
    iget v1, v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;->c:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
