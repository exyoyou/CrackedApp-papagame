.class Lcom/join/mgps/activity/MiniGameLoadingActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MiniGameLoadingActivity$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MiniGameLoadingActivity$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MiniGameLoadingActivity$d;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$d$a;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity$d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$d$a;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity$d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity$d;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$d$a;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity$d;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity$d;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_loading_progress:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v3, 0x7f1203c5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v3, 0x1

    .line 29
    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v4, "0%"

    .line 32
    .line 33
    aput-object v4, v3, v1

    .line 34
    .line 35
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
