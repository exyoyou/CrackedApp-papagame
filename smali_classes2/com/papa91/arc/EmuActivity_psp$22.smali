.class Lcom/papa91/arc/EmuActivity_psp$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->showShare(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$22;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$22;->val$path:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onShare(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.wufun.share.image"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "imagePath"

    .line 9
    .line 10
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp$22;->val$path:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "from"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->send(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$22;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
