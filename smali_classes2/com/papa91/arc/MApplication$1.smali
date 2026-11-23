.class Lcom/papa91/arc/MApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/CContext$ISharePrefrence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MApplication;->initSharePref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/MApplication;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MApplication;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MApplication$1;->this$0:Lcom/papa91/arc/MApplication;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getEmulatorCheckpointUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "emulatorCheckpointUrl"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getEmulatorGoldenFingerUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "emulatorGoldenFingerUrl"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getEmulatorOneSkillUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "emulatorOneSkillUrl"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getEmulatorStartAdCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "emulatorStartAdCount"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getHasShowAdInfo()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "hasShowAdInfo"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPspGameAdCfg()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MApplication$1;->val$sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "pspGameAdCfg"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public saveHasShowAdInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.adInfo"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "md5Str"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa91/arc/MApplication$1;->this$0:Lcom/papa91/arc/MApplication;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
