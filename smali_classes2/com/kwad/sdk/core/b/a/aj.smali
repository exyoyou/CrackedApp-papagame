.class public final Lcom/kwad/sdk/core/b/a/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/sdk/core/adlog/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Lcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdTemplate;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const-string v1, "adTemplate"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    const-string v0, "extData"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMe:Lorg/json/JSONObject;

    const-string v0, "adActionType"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aKI:I

    const-string v0, "photoPlaySecond"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMf:I

    const-string v0, "awardReceiveStage"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMg:I

    const-string v0, "itemClickType"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->nm:I

    const-string v0, "itemCloseType"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMh:I

    const-string v0, "elementType"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMi:I

    const-string v0, "adRenderArea"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMj:Ljava/lang/String;

    .line 12
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 13
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMj:Ljava/lang/String;

    :cond_1
    const-string v0, "highestLossPrice"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMk:J

    const-string v0, "impFailReason"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMl:I

    const-string v0, "winEcpm"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMm:J

    const-string v0, "adnType"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnType:I

    const-string v0, "adnName"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnName:Ljava/lang/String;

    .line 19
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnName:Ljava/lang/String;

    :cond_2
    const-string v0, "adnAdvertiser"

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMn:Ljava/lang/String;

    .line 22
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMn:Ljava/lang/String;

    :cond_3
    const-string v0, "adnTitle"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMo:Ljava/lang/String;

    .line 25
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMo:Ljava/lang/String;

    :cond_4
    const-string v0, "adnRequestId"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMp:Ljava/lang/String;

    .line 28
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMp:Ljava/lang/String;

    :cond_5
    const-string v0, "adnShowType"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMq:I

    const-string v0, "adnClickType"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMr:I

    const-string v0, "adnMaterialType"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialType:I

    const-string v0, "adnMaterialUrl"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialUrl:Ljava/lang/String;

    .line 34
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialUrl:Ljava/lang/String;

    :cond_6
    const-string v0, "retainCodeType"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMs:I

    const-string v0, "photoSizeStyle"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->Ra:I

    const-string v0, "payload"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    .line 39
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 40
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    :cond_7
    const-string v0, "deeplinkType"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMt:I

    const-string v0, "deeplinkAppName"

    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    .line 43
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    :cond_8
    const-string v0, "deeplinkFailedReason"

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMv:I

    const-string v0, "downloadSource"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->downloadSource:I

    const-string v0, "isPackageChanged"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMw:I

    const-string v0, "installedFrom"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMx:Ljava/lang/String;

    .line 49
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMx:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 50
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMx:Ljava/lang/String;

    :cond_9
    const-string v0, "downloadFailedReason"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMy:Ljava/lang/String;

    .line 52
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMy:Ljava/lang/String;

    :cond_a
    const-string v0, "isChangedEndcard"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMz:I

    const-string v0, "adAggPageSource"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMA:I

    const-string v0, "serverPackageName"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    .line 57
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    :cond_b
    const-string v0, "installedPackageName"

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMC:Ljava/lang/String;

    .line 60
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 61
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMC:Ljava/lang/String;

    :cond_c
    const-string v0, "closeButtonImpressionTime"

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMD:I

    const-string v0, "closeButtonClickTime"

    .line 63
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aME:I

    const-string v0, "landingPageLoadedDuration"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMF:J

    const-string v0, "leaveTime"

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->RD:J

    const-string v0, "adItemClickBackDuration"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMG:J

    const-string v0, "appStorePageType"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMH:I

    const-string v0, "installStatus"

    .line 68
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMI:I

    const-string v0, "downloadStatus"

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->downloadStatus:I

    const-string v0, "downloadCardType"

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMJ:I

    .line 71
    new-instance v0, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    const-string v2, "clientExtData"

    .line 72
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    const-string v0, "landingPageType"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->ads:I

    const-string v0, "playedDuration"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->zV:J

    const-string v0, "playedRate"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMK:I

    const-string v0, "adOrder"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aML:I

    const-string v0, "adInterstitialSource"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->QX:I

    const-string v0, "splashShakeAcceleration"

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->np:D

    const-string v0, "splashInteractionRotateAngle"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMM:Ljava/lang/String;

    .line 80
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 81
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMM:Ljava/lang/String;

    :cond_d
    const-string v0, "downloadInstallType"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMN:I

    const-string v0, "businessSceneType"

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMO:I

    const-string v0, "adxResult"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adxResult:I

    const-string v0, "fingerSwipeType"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMP:I

    const-string v0, "fingerSwipeDistance"

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMQ:I

    const-string v0, "finger_swipe_angle"

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMR:I

    const-string v0, "triggerType"

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->Rb:I

    const-string v0, "cardCloseType"

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMS:I

    const-string v0, "clientPkFailAdInfo"

    .line 90
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMT:Ljava/lang/String;

    .line 91
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 92
    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMT:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method private static b(Lcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const-string v1, "adTemplate"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    const-string v0, "extData"

    .line 4
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMe:Lorg/json/JSONObject;

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aKI:I

    if-eqz v0, :cond_1

    const-string v1, "adActionType"

    .line 6
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 7
    :cond_1
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMf:I

    if-eqz v0, :cond_2

    const-string v1, "photoPlaySecond"

    .line 8
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 9
    :cond_2
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMg:I

    if-eqz v0, :cond_3

    const-string v1, "awardReceiveStage"

    .line 10
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 11
    :cond_3
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->nm:I

    if-eqz v0, :cond_4

    const-string v1, "itemClickType"

    .line 12
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 13
    :cond_4
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMh:I

    if-eqz v0, :cond_5

    const-string v1, "itemCloseType"

    .line 14
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 15
    :cond_5
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMi:I

    if-eqz v0, :cond_6

    const-string v1, "elementType"

    .line 16
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMj:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "adRenderArea"

    .line 18
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMj:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_7
    iget-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMk:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    const-string v0, "highestLossPrice"

    .line 20
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 21
    :cond_8
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMl:I

    if-eqz v0, :cond_9

    const-string v2, "impFailReason"

    .line 22
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 23
    :cond_9
    iget-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMm:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a

    const-string v0, "winEcpm"

    .line 24
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 25
    :cond_a
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnType:I

    if-eqz v0, :cond_b

    const-string v2, "adnType"

    .line 26
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 27
    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnName:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "adnName"

    .line 28
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnName:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMn:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "adnAdvertiser"

    .line 30
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMn:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMo:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "adnTitle"

    .line 32
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMo:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMp:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "adnRequestId"

    .line 34
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMp:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_f
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMq:I

    if-eqz v0, :cond_10

    const-string v2, "adnShowType"

    .line 36
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 37
    :cond_10
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMr:I

    if-eqz v0, :cond_11

    const-string v2, "adnClickType"

    .line 38
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 39
    :cond_11
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialType:I

    if-eqz v0, :cond_12

    const-string v2, "adnMaterialType"

    .line 40
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 41
    :cond_12
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialUrl:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "adnMaterialUrl"

    .line 42
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialUrl:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_13
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMs:I

    if-eqz v0, :cond_14

    const-string v2, "retainCodeType"

    .line 44
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 45
    :cond_14
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->Ra:I

    if-eqz v0, :cond_15

    const-string v2, "photoSizeStyle"

    .line 46
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 47
    :cond_15
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "payload"

    .line 48
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_16
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMt:I

    if-eqz v0, :cond_17

    const-string v2, "deeplinkType"

    .line 50
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 51
    :cond_17
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "deeplinkAppName"

    .line 52
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_18
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMv:I

    if-eqz v0, :cond_19

    const-string v2, "deeplinkFailedReason"

    .line 54
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 55
    :cond_19
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->downloadSource:I

    if-eqz v0, :cond_1a

    const-string v2, "downloadSource"

    .line 56
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 57
    :cond_1a
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMw:I

    if-eqz v0, :cond_1b

    const-string v2, "isPackageChanged"

    .line 58
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 59
    :cond_1b
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMx:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "installedFrom"

    .line 60
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMx:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1c
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMy:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "downloadFailedReason"

    .line 62
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMy:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1d
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMz:I

    if-eqz v0, :cond_1e

    const-string v2, "isChangedEndcard"

    .line 64
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 65
    :cond_1e
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMA:I

    if-eqz v0, :cond_1f

    const-string v2, "adAggPageSource"

    .line 66
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 67
    :cond_1f
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "serverPackageName"

    .line 68
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_20
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMC:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "installedPackageName"

    .line 70
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMC:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_21
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMD:I

    if-eqz v0, :cond_22

    const-string v2, "closeButtonImpressionTime"

    .line 72
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 73
    :cond_22
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aME:I

    if-eqz v0, :cond_23

    const-string v2, "closeButtonClickTime"

    .line 74
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 75
    :cond_23
    iget-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMF:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_24

    const-string v0, "landingPageLoadedDuration"

    .line 76
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 77
    :cond_24
    iget-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->RD:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_25

    const-string v0, "leaveTime"

    .line 78
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 79
    :cond_25
    iget-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMG:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_26

    const-string v0, "adItemClickBackDuration"

    .line 80
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 81
    :cond_26
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMH:I

    if-eqz v0, :cond_27

    const-string v2, "appStorePageType"

    .line 82
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 83
    :cond_27
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMI:I

    if-eqz v0, :cond_28

    const-string v2, "installStatus"

    .line 84
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 85
    :cond_28
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->downloadStatus:I

    if-eqz v0, :cond_29

    const-string v2, "downloadStatus"

    .line 86
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 87
    :cond_29
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMJ:I

    if-eqz v0, :cond_2a

    const-string v2, "downloadCardType"

    .line 88
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_2a
    const-string v0, "clientExtData"

    .line 89
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 90
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->ads:I

    if-eqz v0, :cond_2b

    const-string v2, "landingPageType"

    .line 91
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 92
    :cond_2b
    iget-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->zV:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2c

    const-string v0, "playedDuration"

    .line 93
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 94
    :cond_2c
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMK:I

    if-eqz v0, :cond_2d

    const-string v2, "playedRate"

    .line 95
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 96
    :cond_2d
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aML:I

    if-eqz v0, :cond_2e

    const-string v2, "adOrder"

    .line 97
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 98
    :cond_2e
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->QX:I

    if-eqz v0, :cond_2f

    const-string v2, "adInterstitialSource"

    .line 99
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 100
    :cond_2f
    iget-wide v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->np:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_30

    const-string v0, "splashShakeAcceleration"

    .line 101
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 102
    :cond_30
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMM:Ljava/lang/String;

    if-eqz v0, :cond_31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "splashInteractionRotateAngle"

    .line 103
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMM:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_31
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMN:I

    if-eqz v0, :cond_32

    const-string v2, "downloadInstallType"

    .line 105
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 106
    :cond_32
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMO:I

    if-eqz v0, :cond_33

    const-string v2, "businessSceneType"

    .line 107
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 108
    :cond_33
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->adxResult:I

    if-eqz v0, :cond_34

    const-string v2, "adxResult"

    .line 109
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 110
    :cond_34
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMP:I

    if-eqz v0, :cond_35

    const-string v2, "fingerSwipeType"

    .line 111
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 112
    :cond_35
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMQ:I

    if-eqz v0, :cond_36

    const-string v2, "fingerSwipeDistance"

    .line 113
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 114
    :cond_36
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMR:I

    if-eqz v0, :cond_37

    const-string v2, "finger_swipe_angle"

    .line 115
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 116
    :cond_37
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->Rb:I

    if-eqz v0, :cond_38

    const-string v2, "triggerType"

    .line 117
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 118
    :cond_38
    iget v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMS:I

    if-eqz v0, :cond_39

    const-string v2, "cardCloseType"

    .line 119
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 120
    :cond_39
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMT:Ljava/lang/String;

    if-eqz v0, :cond_3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "clientPkFailAdInfo"

    .line 121
    iget-object p0, p0, Lcom/kwad/sdk/core/adlog/c/a;->aMT:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/aj;->a(Lcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/adlog/c/a;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/aj;->b(Lcom/kwad/sdk/core/adlog/c/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
