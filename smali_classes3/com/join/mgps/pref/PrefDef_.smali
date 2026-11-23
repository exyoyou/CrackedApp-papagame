.class public final Lcom/join/mgps/pref/PrefDef_;
.super Lorg/androidannotations/api/sharedpreferences/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/pref/PrefDef_$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const-string v0, "PrefDef"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lorg/androidannotations/api/sharedpreferences/n;-><init>(Landroid/content/SharedPreferences;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "DownloadRecoderNotice"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public DownloadRecoderNoticeMarcket()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "DownloadRecoderNoticeMarcket"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public FirstShowMYgameTopTip()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "FirstShowMYgameTopTip"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public Member_id()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "Member_id"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public Member_name()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "Member_name"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public PaBiData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "PaBiData"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abAccountData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "abAccountData"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public ab_side()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "ab_side"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public accountData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "accountData"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public accountDataV2()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "accountDataV2"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "accountDataV3"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public accountLoginToken()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "accountLoginToken"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public accountLoginUID()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "accountLoginUID"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public adIdArc()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "adIdArc"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public adIdCommonH()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "adIdCommonH"

    .line 2
    .line 3
    const-string v1, "919681372"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public adIdCommonV()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "adIdCommonV"

    .line 2
    .line 3
    const-string v1, "919681774"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public adIdDownloadSpeedUp()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "adIdDownloadSpeedUp"

    .line 2
    .line 3
    const-string v1, "919681084"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public adIdPsp()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "adIdPsp"

    .line 2
    .line 3
    const-string v1, "919681132"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public addedShortcutGames()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "addedShortcutGames"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "androidIdNullsKey"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public annonunceWhenDownload()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "annonunceWhenDownload"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public anti_addiction_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "anti_addiction_switch"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public apName()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "apName"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public arcadeGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "arcadeGameAdCfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "arenaDialogAdData"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public autoLogin()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "autoLogin"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public availableLoginMethod()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "availableLoginMethod"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public battleWelcomeIn()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "battleWelcomeIn"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public changeNickNameNotice()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "changeNickNameNotice"

    .line 2
    .line 3
    const-string v1, "\u6d88\u8017\u94dc\u677f\u66f4\u6539\u6635\u79f0"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public classFyFirstOpen()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "classFyFirstOpen"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public clickFloatViewTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "clickFloatViewTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public cloudGameConfig()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "cloudGameConfig"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "cloudVipLink"

    .line 2
    .line 3
    const-string v1, "http://anv3btapi.5fun.com/user/activity/cloud_archive"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public cloud_gaming_section_id()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "cloud_gaming_section_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public commentToken()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "commentToken"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public commentnoticeTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "commentnoticeTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public community_entrance_title()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "community_entrance_title"

    .line 2
    .line 3
    const-string v1, "\u53bb\u793e\u533a\u770b\u770b"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public continueOnWifi()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "continueOnWifi"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public defaultSearchKeyword()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "defaultSearchKeyword"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public downloadPath()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "downloadPath"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "downloadSpeedUpCount"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "downloadSpeedUpCountAD"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "downloadSpeedUpCountCurrent"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "downloadSpeedUpCountCurrentAD"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "downloadSpeedUpGameSize"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "downloadSpeedUpGames"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "downloadSpeedUpLastTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "downloadSpeedupCfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "download_game_switch"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public edit()Lcom/join/mgps/pref/PrefDef_$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/n;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_$a;-><init>(Landroid/content/SharedPreferences;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public emuApkTableList()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "emuApkTableList"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public emulatorCheckpointUrl()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "emulatorCheckpointUrl"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public emulatorGoldenFingerUrl()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "emulatorGoldenFingerUrl"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public emulatorOneSkillUrl()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "emulatorOneSkillUrl"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public emulatorStartAdCount()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "emulatorStartAdCount"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public endGameConfig()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "endGameConfig"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public exclude_simulator_type()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "exclude_simulator_type"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public fastEntryGuide()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "fastEntryGuide"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public fightWifiInputIP()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "fightWifiInputIP"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public firstArena()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstArena"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public firstArenaFilterVisit()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstArenaFilterVisit"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public firstClickShoubing()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstClickShoubing"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public firstClickUsericon()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstClickUsericon"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public firstInstallAppCompanyDialog()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstInstallAppCompanyDialog"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public firstIntentgamedetialVideo()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstIntentgamedetialVideo"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public firstNewSplash()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstNewSplash"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public firstNewSplashV2()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstNewSplashV2"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstShowUserPermiss"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public firstUninstallTipShow()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "firstUninstallTipShow"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public forumFirstClickUsericon()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "forumFirstClickUsericon"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public found_game_tab()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "found_game_tab"

    .line 2
    .line 3
    const-string v1, "{\"tips_info\":{\"title\":\"\u95ea\u73a9\",\"display_switch\":true},\"title_info\":[{\"index\":4,\"title\":\"\u95ea\u73a9\",\"display_index\":1,\"selected\":false},{\"index\":0,\"title\":\"\u7cbe\u9009\",\"display_index\":2,\"selected\":true},{\"index\":1,\"title\":\"\u6392\u884c\",\"display_index\":3,\"selected\":false},{\"index\":2,\"title\":\"\u5206\u7c7b\",\"display_index\":4,\"selected\":false},{\"index\":3,\"title\":\"\u6e38\u620f\u5355\",\"display_index\":5,\"selected\":false}]}"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public gameHasFeedBack()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "gameHasFeedBack"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public gameTimeLvCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "gameTimeLvCfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public gameTopAd()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "gameTopAd"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "gameTypeList"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public gameWorldActive()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "gameWorldActive"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public gameWorldGradeList()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "gameWorldGradeList"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public gameWorldWorshipTop()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "gameWorldWorshipTop"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public game_section_id()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "game_section_id"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "getArchiveCoinPref"

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "getLastPayType"

    .line 2
    .line 3
    const-string v1, "alipaymobilesign"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public gprsIsOpen()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "gprsIsOpen"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "gprsNoticeInfo"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public hasShowAdInfo()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "hasShowAdInfo"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasShowEndGameBadge()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "hasShowEndGameBadge"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public hasShowMiniGameBadge()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "hasShowMiniGameBadge"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public hasShowModInstallGames()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "hasShowModInstallGames"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasTipCloudBall()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "hasTipCloudBall"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public has_launch_quark()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "has_launch_quark"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public hideGameTopAd()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "hideGameTopAd"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public hide_app_pwd()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "hide_app_pwd"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hide_app_switch()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "hide_app_switch"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public homeAllData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "homeAllData"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public homeAllDataV3()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "homeAllDataV3"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public homeAllDataV4()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "homeAllDataV4"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public homeCloudActiveTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "homeCloudActiveTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public homeFastThe_new()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "homeFastThe_new"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public homeFastTopic()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "homeFastTopic"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public homeFastWillpay()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "homeFastWillpay"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public homeLegendGameTabClicked()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "homeLegendGameTabClicked"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public homeNetGameTabClicked()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "homeNetGameTabClicked"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public homePopupAdCount()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "homePopupAdCount"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public homePopupAdLast()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "homePopupAdLast"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public homePopupAdLastTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "homePopupAdLastTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public homeTopTypeEntrance()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "homeTopTypeEntrance"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public home_common_quark_ad_times()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "home_common_quark_ad_times"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "insatllAppFirst"

    .line 2
    .line 3
    const/4 v1, -0x8

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "insatllAppFirstData"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public installApplastNoticeTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "installApplastNoticeTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isAcActived()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isAcActived"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isAutoWifiDownUpdate"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isBsideInt()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "isBsideInt"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isCanShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isCanShowAddShortcut"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFcActived()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFcActived"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFightActivity"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirst35()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirst35"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstClickClassify()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstClickClassify"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstCommendVersion"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstCouldShowPopw()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstCouldShowPopw"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstCustomApk()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstCustomApk"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstLocalShowPopw()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstLocalShowPopw"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstRemeShowPopw()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstRemeShowPopw"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstRun()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstRun"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstRunApkBackup()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstRunApkBackup"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstRunApkBackupLong()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "isFirstRunApkBackupLong"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isFirstRunGameCarefullyLong()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "isFirstRunGameCarefullyLong"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isFirstRunRecomeWifi()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstRunRecomeWifi"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isFirstbuyShowPopw()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isFirstbuyShowPopw"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isHideAdBlock()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isHideAdBlock"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isHomepagePlayVideo()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isHomepagePlayVideo"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isLogin()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isLogin"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isNewFinishedGame"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isNoShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "isNoShowAddShortcut"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isOnlyWifiReconnect()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isOnlyWifiReconnect"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isQuarkEnable()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isQuarkEnable"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isQuarkSilentDownload()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isQuarkSilentDownload"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isReloadClassify()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isReloadClassify"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isShowEditorRecoomand()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isShowEditorRecoomand"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isShowLuckyEggBadge()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isShowLuckyEggBadge"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isShowSplash"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isShowVideo()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isShowVideo"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "isWifiConnectedBefore"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastApplyReadPhonePermission"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastApplyReadPhonePermissionOnRecom()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastApplyReadPhonePermissionOnRecom"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastCheckInTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastCheckTokenTick()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastCheckTokenTick"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastClickPageAD"

    .line 2
    .line 3
    const-string v1, "12345"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastGameShowOnlineCouponTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastGameShowOnlineCouponTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastGameShowOnlineCouponTimeGuest()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastGameShowOnlineCouponTimeGuest"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastGameTimePeriod()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastGameTimePeriod"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastGameTimePeriodGuest()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastGameTimePeriodGuest"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastHomeDataMd5()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastHomeDataMd5"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastInstallApp"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastInstallAppFinish"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastLaunchAppTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastLaunchAppTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastLaunchCloudGameId()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastLaunchCloudGameId"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastLaunchCloudGameTipTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastLaunchCloudGameTipTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastLaunchModGameId"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastLoginAccount()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastLoginAccount"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastMainShowOnlineCouponTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastMainShowOnlineCouponTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastMainShowOnlineCouponTimeGuest()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastMainShowOnlineCouponTimeGuest"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastMainTimePeriod()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastMainTimePeriod"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastMainTimePeriodGuest()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastMainTimePeriodGuest"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastQuitShowOnlineCouponTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastQuitShowOnlineCouponTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastQuitShowOnlineCouponTimeGuset()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastQuitShowOnlineCouponTimeGuset"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastRealNameCheckTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastRealNameCheckTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastSendAppTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastSendAppTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastShowBespeakTipTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastShowBespeakTipTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastShowCloudGameSignTipTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastShowCloudGameSignTipTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastShowLoginGuiedTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastShowLoginGuiedTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastShowNotInstallTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastShowNotInstallTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastShowNotOpenTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastShowNotOpenTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastShowRealNameTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "lastShowRealNameTime"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastShowSplashImage()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastShowSplashImage"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastShowTOUTIAOAd()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastShowTOUTIAOAd"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastStartSimulatorCore()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastStartSimulatorCore"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lastTopTip()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lastTopTip"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public last_update_time()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "last_update_time"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public launchGameIdCheckVaExtInstall()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "launchGameIdCheckVaExtInstall"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public launchGameUnsupportedTipIds()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "launchGameUnsupportedTipIds"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public launchPluginTip()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "launchPluginTip"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "launch_game_switch"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public liveSubtitle()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "liveSubtitle"

    .line 2
    .line 3
    const-string v1, "\u76f4\u64ad\u706b\u70ed\u5185\u4fa7\u4e2d"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public liveTitle()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "liveTitle"

    .line 2
    .line 3
    const-string v1, "\u556a\u53cb\u76f4\u64ad"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public localUserIcon()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "localUserIcon"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public location()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "location"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lodingImageMD5()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "lodingImageMD5"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public loginPermissHasallow()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "loginPermissHasallow"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public md5FileTag()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "md5FileTag"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public mod_enhance_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "mod_enhance_ad_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public mod_normal_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "mod_normal_ad_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public myGameAllTabSort()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "myGameAllTabSort"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public myGameTabAdShowIndex()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "myGameTabAdShowIndex"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "needShowPermissdialog"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public needsendRigeister()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "needsendRigeister"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public net_game_count_down()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "net_game_count_down"

    .line 2
    .line 3
    const/16 v1, 0x1388

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public noFavoriteTips()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "noFavoriteTips"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public noPromptDownload()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "noPromptDownload"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public non_online_user_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "non_online_user_switch"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public normalDownloadCount()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "normalDownloadCount"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public offlineId()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "offlineId"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public packageName()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public packageType()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "packageType"

    .line 2
    .line 3
    const-string v1, "wufunNormal"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public pageVersion()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "pageVersion"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "pd_ad_config"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public platform()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "platform"

    .line 2
    .line 3
    const-string v1, "wufun"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "plugHasUpdate"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public privateDomainFeedbackInfo()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "privateDomainFeedbackInfo"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public pspAdShowTime()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "pspAdShowTime"

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public pspAdShowTimeSwitch()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "pspAdShowTimeSwitch"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public pspGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "pspGameAdCfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public quarkGameDownload()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "quarkGameDownload"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public quark_click_count()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "quark_click_count"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public quark_display_count()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "quark_display_count"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public quark_display_mode()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "quark_display_mode"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public quark_feed_back_not_ask()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "quark_feed_back_not_ask"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public quark_first_launch_time()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "quark_first_launch_time"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public quark_last_down_game_info()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "quark_last_down_game_info"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public quark_launch_app_times()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "quark_launch_app_times"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public quark_launch_service_times()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "quark_launch_service_times"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public rankNotify()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "rankNotify"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public rankingMenu()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "rankingMenu"

    .line 2
    .line 3
    const-string v1, "1|\u7f51\u6e38\u699c,2|\u5355\u673a\u699c,3|\u6a21\u62df\u5668\u699c"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public rankingMenu2()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "rankingMenu2"

    .line 2
    .line 3
    const-string v1, "[{\"id\":1,\"title\":\"\u7f51\u6e38\u699c\"},{\"id\":2,\"title\":\"\u5355\u673a\u699c\"},{\"id\":3,\"title\":\"\u6a21\u62df\u5668\u699c\"}]"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public recomDataJson()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "recomDataJson"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public rpcUserId()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "rpcUserId"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "runRomFirst"

    .line 2
    .line 3
    const/4 v1, -0x8

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public sch_feed_back_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "sch_feed_back_switch"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public sdcardData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "sdcardData"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public sdcardisFirst()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "sdcardisFirst"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public sdkInit()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "sdkInit"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public sdkInitReady()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "sdkInitReady"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public searchHintCache()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "searchHintCache"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public searchguesslikeData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "searchguesslikeData"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public shareTipClosed()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "shareTipClosed"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public showAnBattle()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "showAnBattle"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public showGuideCreateEndGame()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "showGuideCreateEndGame"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public showHistroyHint()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "showHistroyHint"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public showIndex()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "showIndex"

    .line 2
    .line 3
    const-string v1, "2"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public showName()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "showName"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public show_unknown_source()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "show_unknown_source"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public simulatorLaunchAchievementTabRedPointShown()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "simulatorLaunchAchievementTabRedPointShown"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public simulator_exit_double_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_exit_double_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_exit_information_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_exit_information_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_exit_lottery_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_exit_lottery_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_exit_open_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_exit_open_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_fc_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_fc_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_gba_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_gba_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_gold_finger_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_gold_finger_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_jj_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_jj_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_last_ad_position()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "simulator_last_ad_position"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public simulator_path_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_path_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_play_records()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_play_records"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public simulator_psp_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "simulator_psp_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public singleGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "singleGameAdCfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "singleGameShowDialog"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public soundnowIsNoSound()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "soundnowIsNoSound"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public ssidBefore()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "ssidBefore"

    .line 2
    .line 3
    const-string v1, "-1"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public ssp_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "ssp_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public startGameShowLoginNumber()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "startGameShowLoginNumber"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public startgameLogintimes_open_login()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "startgameLogintimes_open_login"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "startgametimes_open_certify"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public statisticVisit()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "statisticVisit"

    .line 2
    .line 3
    const-string v1, "-1"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public thAdSwitchCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "thAdSwitchCfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public todayShowRealNameCount()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "todayShowRealNameCount"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public token()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "token"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "touriseTUID"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public uncompleteDownload()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "uncompleteDownload"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "upLoadConfig"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "upLoadFileName"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "upLoadGame"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public upLoadState()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "upLoadState"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public uploadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "uploadRecoderNotice"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public uploadType2()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "uploadType2"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public userCenterViewConfigs()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "userCenterViewConfigs"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "userCenterViewConfigsv2"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public userId()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public userLastStartAPP()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "userLastStartAPP"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public userLastStartGame()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    .line 1
    const-string v0, "userLastStartGame"

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public versionCode()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "versionCode"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public video_init_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "video_init_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public virtualDeviceState()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "virtualDeviceState"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public w_channel_info_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "w_channel_info_switch"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public web_disk_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "web_disk_cfg"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public web_disk_position()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "web_disk_position"

    .line 2
    .line 3
    const-string v1, "{\"single_game\":{\"download_mode\":\"SIMPLE\",\"setup_mode\":\"VM\"},\"simulator_game\":{\"download_mode\":\"SIMPLE\",\"setup_mode\":\"VM\"},\"pc_game\":{\"download_mode\":\"PRIVATE_DOMAIN\",\"setup_mode\":\"NON_VM\"}}"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public web_disk_switch()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "web_disk_switch"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public wf_app_about()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "wf_app_about"

    .line 2
    .line 3
    const-string v1, "[{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"\u609f\u996d\u5b98\u7f51\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"www.5fun.com\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"http://www.5fun.com\",\"crc_link_type_val\":\"1287161774\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"\u609f\u996d\u516c\u4f17\u53f7\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"wufangame\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"action_copy\",\"crc_link_type_val\":\"995819660\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"\u9690\u79c1\u653f\u7b56\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":4,\"link_type_val\":\"http://anv3cjapi.wufan88.com/static/yszc.html?ver=10&type=0\",\"crc_link_type_val\":\"3126855503\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"\u7528\u6237\u534f\u8bae\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":4,\"link_type_val\":\"http://anv3cjapi.wufan88.com/static/yhxkxy.html?ver=10&type=0\",\"crc_link_type_val\":\"3958127345\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"\u514d\u8d23\u58f0\u660e\",\"sub_title\":\"top_menu\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"top_menu\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":4,\"link_type_val\":\"http://anv3cjapi.5fun.com/static/wf_mianze.html\",\"crc_link_type_val\":\"1302798286\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"\u7248\u6743\u6240\u6709\uff1a\u5609\u5174\u5fae\u68a6\u79d1\u6280\u6709\u9650\u516c\u53f8\",\"sub_title\":\"bottom\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"bottom\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"http://www.5fun.com\",\"crc_link_type_val\":\"1287161774\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"\u5907\u6848\u53f7\uff1a\u6d59ICP\u59072021037593\u53f7-8A\",\"sub_title\":\"bottom\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"bottom\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"https://beian.miit.gov.cn\",\"crc_link_type_val\":\"2117562251\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}},{\"tpl_type\":0,\"bg_color\":\"\",\"title\":\"\u589e\u503c\u7535\u4fe1\u4e1a\u52a1\u8bb8\u53ef\u8bc1\uff1a\u6d59B2-20220692\",\"sub_title\":\"bottom\",\"big_pic\":\"\",\"big_pic_h\":\"\",\"v_url\":\"\",\"label\":\"bottom\",\"description\":\"\",\"ad_switch\":1,\"quit_switch\":0,\"jp_info\":{\"link_type\":5,\"link_type_val\":\"\\\"https://tsm.miit.gov.cn\\\"\",\"crc_link_type_val\":\"1271180405\",\"jump_type\":0,\"third_type\":0,\"is_more\":0,\"tpl_type\":0}}]"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public wifiDownNumber()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    const-string v0, "wifiDownNumber"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public wifiIsOpen()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    const-string v0, "wifiIsOpen"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public worldStart()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "worldStart"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public worshipMarqueeHistory()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "worshipMarqueeHistory"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public wx_open_appid()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    const-string v0, "wx_open_appid"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
