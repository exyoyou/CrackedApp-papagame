.class public Lcom/windmill/sdk/WMNetworkConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;,
        Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;,
        Lcom/windmill/sdk/WMNetworkConfig$Builder;
    }
.end annotation


# static fields
.field public static final ADMATE:I = 0x23

.field public static final ADMOB:I = 0xb

.field public static final ADSCOPE:I = 0x1b

.field public static final APPLOVIN:I = 0x5

.field public static final APPLOVIN_MAX:I = 0x1f

.field public static final BAIDU:I = 0x15

.field public static final BILLOWLINK:I = 0x27

.field public static final FACEBOOK:I = 0xf

.field public static final GDT:I = 0x10

.field public static final GROMORE:I = 0x16

.field public static final HONOR:I = 0x24

.field public static final HUAWEI_INNR:I = 0x19

.field public static final HUAWEI_LITE:I = 0x2b

.field public static final INMOBI:I = 0x25

.field public static final IRONSOURCE:I = 0x7

.field public static final KLEVIN:I = 0x14

.field public static final KUAISHOU:I = 0x13

.field public static final MERCURY:I = 0x2a

.field public static final MOBVISTA:I = 0x1

.field public static final OCTOPUS:I = 0x29

.field public static final OPPO_ADN:I = 0x22

.field public static final PANGLE:I = 0x1e

.field public static final QUMENG:I = 0x1c

.field public static final REKLAMUP:I = 0x21

.field public static final SIGMOB:I = 0x9

.field public static final TAPJOY:I = 0xc

.field public static final TAPTAP:I = 0x1d

.field public static final TOBID_ADX:I = 0x3e7

.field public static final TOUTIAO:I = 0xd

.field public static final UNITYADS:I = 0x6

.field public static final VIVOADN:I = 0x26

.field public static final VUNGLE:I = 0x4


# instance fields
.field mInitConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;",
            ">;"
        }
    .end annotation
.end field


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


# virtual methods
.method public getAdnInitConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WMNetworkConfig;->mInitConfigList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
