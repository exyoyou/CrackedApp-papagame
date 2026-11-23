.class Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankCheckKeyActivity;->handleKeyUpUi(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;->c:Lcom/join/mgps/activity/HandShankCheckKeyActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;->c:Lcom/join/mgps/activity/HandShankCheckKeyActivity;

    .line 6
    .line 7
    iget v0, v0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;->a:I

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;->b:Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 16
    .line 17
    iget v1, v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;->b:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;->c:Lcom/join/mgps/activity/HandShankCheckKeyActivity;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->access$102(Lcom/join/mgps/activity/HandShankCheckKeyActivity;Z)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
