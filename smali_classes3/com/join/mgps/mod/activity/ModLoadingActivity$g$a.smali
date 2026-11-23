.class Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/mod/activity/ModLoadingActivity$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$g;I)V
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
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;->c:Lcom/join/mgps/mod/activity/ModLoadingActivity$g;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;->b:I

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
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;->c:Lcom/join/mgps/mod/activity/ModLoadingActivity$g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/ProgressBar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;->b:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;->c:Lcom/join/mgps/mod/activity/ModLoadingActivity$g;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->q(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;->c:Lcom/join/mgps/mod/activity/ModLoadingActivity$g;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f1203c5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget v4, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;->b:I

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, "%"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/4 v4, 0x0

    .line 60
    aput-object v3, v2, v4

    .line 61
    .line 62
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
