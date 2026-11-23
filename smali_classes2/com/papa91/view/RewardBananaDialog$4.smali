.class Lcom/papa91/view/RewardBananaDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/RewardBananaDialog;->onRewardInfo(Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RewardBananaDialog;

.field final synthetic val$left_play_reward_count:I

.field final synthetic val$left_start_reward_count:I

.field final synthetic val$reward_amount:I

.field final synthetic val$reward_times:I

.field final synthetic val$totalRewardAmount:I

.field final synthetic val$unique_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/view/RewardBananaDialog;IIIIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$left_start_reward_count:I

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$left_play_reward_count:I

    .line 6
    .line 7
    iput p4, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_times:I

    .line 8
    .line 9
    iput p5, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_amount:I

    .line 10
    .line 11
    iput p6, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$totalRewardAmount:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$unique_id:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/view/RewardBananaDialog;->access$000(Lcom/papa91/view/RewardBananaDialog;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 11
    .line 12
    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$left_start_reward_count:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$102(Lcom/papa91/view/RewardBananaDialog;I)I

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 19
    .line 20
    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$left_play_reward_count:I

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$102(Lcom/papa91/view/RewardBananaDialog;I)I

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 26
    .line 27
    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_times:I

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$202(Lcom/papa91/view/RewardBananaDialog;I)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 33
    .line 34
    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_amount:I

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$302(Lcom/papa91/view/RewardBananaDialog;I)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 40
    .line 41
    iget v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$totalRewardAmount:I

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$402(Lcom/papa91/view/RewardBananaDialog;I)I

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/papa91/view/RewardBananaDialog;->access$500(Lcom/papa91/view/RewardBananaDialog;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$unique_id:Ljava/lang/String;

    .line 53
    .line 54
    iget v5, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_amount:I

    .line 55
    .line 56
    iget v6, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_times:I

    .line 57
    .line 58
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/papa91/view/RewardBananaDialog;->access$400(Lcom/papa91/view/RewardBananaDialog;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-virtual/range {v2 .. v7}, Lcom/papa91/view/RewardBananaDialog;->onRewardInfoChanged(Ljava/lang/String;Ljava/lang/String;III)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$unique_id:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/papa91/view/RewardBananaDialog;->access$502(Lcom/papa91/view/RewardBananaDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 75
    .line 76
    iget-object v1, v0, Lcom/papa91/view/RewardBananaDialog;->listener:Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v2, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$unique_id:Ljava/lang/String;

    .line 81
    .line 82
    iget v3, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_amount:I

    .line 83
    .line 84
    iget v4, p0, Lcom/papa91/view/RewardBananaDialog$4;->val$reward_times:I

    .line 85
    .line 86
    invoke-static {v0}, Lcom/papa91/view/RewardBananaDialog;->access$100(Lcom/papa91/view/RewardBananaDialog;)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/papa91/view/RewardBananaDialog;->access$400(Lcom/papa91/view/RewardBananaDialog;)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-interface/range {v1 .. v6}, Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;->onRewardInfo(Ljava/lang/String;IIII)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v0, p0, Lcom/papa91/view/RewardBananaDialog$4;->this$0:Lcom/papa91/view/RewardBananaDialog;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/papa91/view/RewardBananaDialog;->refresh()V

    .line 102
    .line 103
    .line 104
    return-void
.end method
