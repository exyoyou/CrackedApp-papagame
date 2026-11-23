.class Lcom/papa91/activity/EmuBaseActivity$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->loadRomCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->show()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->autoSaveSlot:Lcom/papa91/view/AutoSaveSlot;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa91/view/AutoSaveSlot;->start()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->showJavaShortCut(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
