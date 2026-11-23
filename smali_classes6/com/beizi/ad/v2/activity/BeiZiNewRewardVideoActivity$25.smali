.class Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/tool/ae$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/model/c$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/beizi/ad/model/c$d;

.field final synthetic c:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;ILcom/beizi/ad/model/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;->c:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;->b:Lcom/beizi/ad/model/c$d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;->c:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;->b:Lcom/beizi/ad/model/c$d;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;ILcom/beizi/ad/model/c$d;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;->c:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aq(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;->c:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 11
    .line 12
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;->a:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
