.class Lcom/papa91/view/AchievementDoneFloatDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/AchievementDoneFloatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AchievementDoneFloatDialog;


# direct methods
.method constructor <init>(Lcom/papa91/view/AchievementDoneFloatDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AchievementDoneFloatDialog$1;->this$0:Lcom/papa91/view/AchievementDoneFloatDialog;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog$1;->this$0:Lcom/papa91/view/AchievementDoneFloatDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/view/AchievementDoneFloatDialog;->access$000(Lcom/papa91/view/AchievementDoneFloatDialog;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog$1;->this$0:Lcom/papa91/view/AchievementDoneFloatDialog;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/papa91/view/AchievementDoneFloatDialog;->access$100(Lcom/papa91/view/AchievementDoneFloatDialog;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog$1;->this$0:Lcom/papa91/view/AchievementDoneFloatDialog;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa91/view/AchievementDoneFloatDialog;->access$200(Lcom/papa91/view/AchievementDoneFloatDialog;)Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog$1;->this$0:Lcom/papa91/view/AchievementDoneFloatDialog;

    .line 28
    .line 29
    new-instance v1, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/papa91/view/AchievementDoneFloatDialog;->access$202(Lcom/papa91/view/AchievementDoneFloatDialog;Landroid/os/Handler;)Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/papa91/view/AchievementDoneFloatDialog$1;->this$0:Lcom/papa91/view/AchievementDoneFloatDialog;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/papa91/view/AchievementDoneFloatDialog;->access$200(Lcom/papa91/view/AchievementDoneFloatDialog;)Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/papa91/view/AchievementDoneFloatDialog$1;->this$0:Lcom/papa91/view/AchievementDoneFloatDialog;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/papa91/view/AchievementDoneFloatDialog;->dimissRunnable:Ljava/lang/Runnable;

    .line 46
    .line 47
    const-wide/16 v2, 0xfa0

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
