.class Lcom/join/mgps/activity/MiniGameLoadingActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MiniGameLoadingActivity$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/MiniGameLoadingActivity$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MiniGameLoadingActivity$e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$e$a;->c:Lcom/join/mgps/activity/MiniGameLoadingActivity$e;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$e$a;->b:I

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$e$a;->c:Lcom/join/mgps/activity/MiniGameLoadingActivity$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity$e;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 6
    .line 7
    iget v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$e$a;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$e$a;->c:Lcom/join/mgps/activity/MiniGameLoadingActivity$e;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity$e;->b:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->tv_loading_progress:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v2, 0x7f1203c5

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x1

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget v4, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$e$a;->b:I

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, "%"

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x0

    .line 52
    aput-object v3, v2, v4

    .line 53
    .line 54
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
