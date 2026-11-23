.class Lcom/papa91/activity/EmuBaseActivity$IMReceive$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity$IMReceive;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/activity/EmuBaseActivity$IMReceive;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$types:I


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity$IMReceive;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$IMReceive$1;->this$1:Lcom/papa91/activity/EmuBaseActivity$IMReceive;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/activity/EmuBaseActivity$IMReceive$1;->val$types:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/activity/EmuBaseActivity$IMReceive$1;->val$msg:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity$IMReceive$1;->val$types:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$IMReceive$1;->val$msg:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->SendMessStatue(ILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
