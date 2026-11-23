.class Lcom/papa91/activity/EmuBaseActivity$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$args:Ljava/lang/String;

.field final synthetic val$times:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/papa91/activity/EmuBaseActivity$21;->val$times:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$21;->val$args:Ljava/lang/String;

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
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 20
    .line 21
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->generate_times:I

    .line 22
    .line 23
    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$21;->val$times:I

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->unique_id:Ljava/lang/String;

    .line 30
    .line 31
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->reward_amount:I

    .line 32
    .line 33
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->reward_times:I

    .line 34
    .line 35
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 36
    .line 37
    :cond_1
    sput v2, Lcom/papa91/activity/EmuBaseActivity;->generate_times:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$21;->val$args:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog1(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :goto_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->sign()V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v1}, Lcom/papa91/activity/EmuBaseActivity;->setRewardResult(II)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
