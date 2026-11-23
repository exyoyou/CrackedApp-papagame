.class Lcom/join/mgps/activity/QuarkLoadingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/QuarkLoadingActivity;->launchApk(Ljava/lang/String;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/QuarkLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/QuarkLoadingActivity;Landroid/content/Intent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$launchIntentForPackage",
            "val$userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$a;->d:Lcom/join/mgps/activity/QuarkLoadingActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$a;->b:Landroid/content/Intent;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$a;->b:Landroid/content/Intent;

    .line 6
    .line 7
    iget v2, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$a;->c:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/xinzhu/overmind/Overmind;->startActivity(Landroid/content/Intent;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity$a;->d:Lcom/join/mgps/activity/QuarkLoadingActivity;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
