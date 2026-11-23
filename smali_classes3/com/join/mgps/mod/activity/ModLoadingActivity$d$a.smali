.class Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$d;)V
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
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

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
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->k(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/LinearLayout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->p(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/ProgressBar;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->s(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->q(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const v3, 0x7f1203c5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v3, 0x1

    .line 61
    new-array v3, v3, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v4, "0%"

    .line 64
    .line 65
    aput-object v4, v3, v1

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
