.class Lcom/papa91/activity/EmuBaseActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showVipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;

.field final synthetic val$adCount:I

.field final synthetic val$adSdkType:I

.field final synthetic val$howTimes:I

.field final synthetic val$times:I


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$times:I

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$howTimes:I

    .line 6
    .line 7
    iput p4, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$adSdkType:I

    .line 8
    .line 9
    iput p5, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$adCount:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->access$300(Lcom/papa91/activity/EmuBaseActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "com.emu.ad.result"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string v1, "adAction"

    .line 21
    .line 22
    const/4 v2, 0x7

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->access$302(Lcom/papa91/activity/EmuBaseActivity;Z)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 36
    .line 37
    const-string v1, "com.tools.AdBroadcast"

    .line 38
    .line 39
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "times"

    .line 43
    .line 44
    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$times:I

    .line 45
    .line 46
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const-string v1, "howTimes"

    .line 50
    .line 51
    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$howTimes:I

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    const-string v1, "adSdkType"

    .line 57
    .line 58
    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$adSdkType:I

    .line 59
    .line 60
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string v1, "gameId"

    .line 64
    .line 65
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string v1, "action"

    .line 71
    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    const-string v0, "adCount"

    .line 76
    .line 77
    iget v1, p0, Lcom/papa91/activity/EmuBaseActivity$11;->val$adCount:I

    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method
