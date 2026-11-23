.class Lcom/papa91/arc/dialog/SettingSlotDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;->saveSlot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->val$id:I

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
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->ugcPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->evictCache(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "."

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$3;->val$id:I

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->saveSlotState(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
