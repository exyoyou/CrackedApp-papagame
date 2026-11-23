.class Lcom/papa91/activity/EmuMenuBaseActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity$4;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/activity/EmuMenuBaseActivity$4;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity$4;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4$1;->this$1:Lcom/papa91/activity/EmuMenuBaseActivity$4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4$1;->val$response:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4$1;->this$1:Lcom/papa91/activity/EmuMenuBaseActivity$4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4$1;->val$response:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/papa91/activity/EmuMenuBaseActivity$4;->onPostExecute(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
