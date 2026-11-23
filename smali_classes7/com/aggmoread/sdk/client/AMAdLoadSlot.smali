.class public final Lcom/aggmoread/sdk/client/AMAdLoadSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/client/AMAdLoadSlot$Builder;
    }
.end annotation


# instance fields
.field public adContainer:Landroid/view/ViewGroup;

.field public adCount:I

.field public adSize:Lcom/aggmoread/sdk/client/AMAdSize;

.field public adSlotId:Ljava/lang/String;

.field public bidToken:Ljava/lang/String;

.field public extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public fetchTimeOut:I

.field public limitTime:I

.field public refreshTime:I

.field public rewardAdConfig:Lcom/aggmoread/sdk/client/AMRewardAdConfig;

.field public shakeable:I

.field public videoConfigs:Lcom/aggmoread/sdk/client/AMVideoConfigs;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/client/AMAdLoadSlot;->shakeable:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/client/AMAdLoadSlot;->extras:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/aggmoread/sdk/client/AMAdLoadSlot$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/client/AMAdLoadSlot;-><init>()V

    return-void
.end method
