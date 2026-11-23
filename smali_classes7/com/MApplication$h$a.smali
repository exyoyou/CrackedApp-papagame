.class Lcom/MApplication$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/StickAdDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MApplication$h;->showGoldAdDialog(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/wufan/user/service/protobuf/UserInfo;

.field final synthetic d:Lcom/MApplication$h;


# direct methods
.method constructor <init>(Lcom/MApplication$h;Ljava/lang/String;ILcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$gameId",
            "val$state",
            "val$accountBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/MApplication$h$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/MApplication$h$a;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/MApplication$h$a;->c:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.tools.AdBroadcast"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/MApplication$h;->b:Lcom/join/mgps/dto/PlayCfgBean;

    .line 11
    .line 12
    const-string v2, "playCfg"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string v1, "gameId"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/MApplication$h$a;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v1, "state"

    .line 25
    .line 26
    iget v2, p0, Lcom/MApplication$h$a;->b:I

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 32
    .line 33
    iget v1, v1, Lcom/MApplication$h;->f:I

    .line 34
    .line 35
    const-string v2, "adCount"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 41
    .line 42
    iget v1, v1, Lcom/MApplication$h;->g:I

    .line 43
    .line 44
    const-string v2, "howTimes"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 50
    .line 51
    iget-boolean v1, v1, Lcom/MApplication$h;->j:Z

    .line 52
    .line 53
    const-string v2, "close"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string v1, "action"

    .line 59
    .line 60
    const/16 v2, 0x3ed

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 73
    .line 74
    iget-boolean v1, v0, Lcom/MApplication$h;->j:Z

    .line 75
    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    iget-object v0, v0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 79
    .line 80
    sget-object v1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Vedio:Lcom/papa/sim/statistic/Event;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/MApplication$h$a;->a:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->N(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, v0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 93
    .line 94
    sget-object v1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Vedio:Lcom/papa/sim/statistic/Event;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/MApplication$h$a;->a:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->N(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "close"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.emu.ad.result"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "adAction"

    .line 12
    .line 13
    const/16 v2, 0x3f0

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lcom/MApplication$h$a;->b:I

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "state"

    .line 30
    .line 31
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v2, "close"

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string p1, "extras"

    .line 44
    .line 45
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 58
    .line 59
    iget p1, p1, Lcom/MApplication$h;->f:I

    .line 60
    .line 61
    if-lez p1, :cond_0

    .line 62
    .line 63
    new-instance p1, Lcom/papa91/wrapper/UserPrefs;

    .line 64
    .line 65
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 66
    .line 67
    invoke-direct {p1, v0}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/MApplication$h$a;->a:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/MApplication$h$a;->c:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ""

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 96
    .line 97
    iget v3, v2, Lcom/MApplication$h;->g:I

    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    iget v2, v2, Lcom/MApplication$h;->f:I

    .line 102
    .line 103
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/papa91/wrapper/UserPrefs;->setGoldFingerAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/MApplication$h$a;->d:Lcom/MApplication$h;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/MApplication$h;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 8
    .line 9
    sget-object v1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Pop:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/MApplication$h$a;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->N(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, v0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 22
    .line 23
    sget-object v1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Pop:Lcom/papa/sim/statistic/Event;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/MApplication$h$a;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/MApplication;->N(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
