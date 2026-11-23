.class Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    const-string v0, "BeiZisAd"

    .line 2
    .line 3
    const-string v1, "onCompletion: \u64ad\u653e\u5b8c\u6210"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->V(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/ProgressBar;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->V(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/ProgressBar;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {v0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->X(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;->a:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void
.end method
