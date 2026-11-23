.class final enum Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OperatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

.field public static final enum CHINA_MOBILE:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

.field public static final enum CHINA_TELECOM:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

.field public static final enum CHINA_UNICOM:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

.field public static final enum DATA_NOT_OPENED:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

.field public static final enum FAIL:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

.field public static final enum NO_PHONE_NUMBER_ACCESS_PERMISSION_UNDER_WIFI:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 2
    .line 3
    const-string v1, "CHINA_MOBILE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->CHINA_MOBILE:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 13
    .line 14
    const-string v4, "CHINA_TELECOM"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->CHINA_TELECOM:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 21
    .line 22
    new-instance v4, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 23
    .line 24
    const-string v6, "CHINA_UNICOM"

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->CHINA_UNICOM:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 31
    .line 32
    new-instance v6, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 33
    .line 34
    const-string v8, "NO_PHONE_NUMBER_ACCESS_PERMISSION_UNDER_WIFI"

    .line 35
    .line 36
    const/4 v9, -0x1

    .line 37
    invoke-direct {v6, v8, v7, v9}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->NO_PHONE_NUMBER_ACCESS_PERMISSION_UNDER_WIFI:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 41
    .line 42
    new-instance v8, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 43
    .line 44
    const/4 v9, -0x2

    .line 45
    const-string v10, "DATA_NOT_OPENED"

    .line 46
    .line 47
    const/4 v11, 0x4

    .line 48
    invoke-direct {v8, v10, v11, v9}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v8, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->DATA_NOT_OPENED:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 52
    .line 53
    new-instance v9, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 54
    .line 55
    const/4 v10, -0x3

    .line 56
    const-string v12, "FAIL"

    .line 57
    .line 58
    const/4 v13, 0x5

    .line 59
    invoke-direct {v9, v12, v13, v10}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;-><init>(Ljava/lang/String;II)V

    .line 60
    .line 61
    .line 62
    sput-object v9, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->FAIL:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 63
    .line 64
    const/4 v10, 0x6

    .line 65
    new-array v10, v10, [Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 66
    .line 67
    aput-object v0, v10, v2

    .line 68
    .line 69
    aput-object v1, v10, v3

    .line 70
    .line 71
    aput-object v4, v10, v5

    .line 72
    .line 73
    aput-object v6, v10, v7

    .line 74
    .line 75
    aput-object v8, v10, v11

    .line 76
    .line 77
    aput-object v9, v10, v13

    .line 78
    .line 79
    sput-object v10, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->$VALUES:[Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 80
    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->$VALUES:[Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$OperatorType;

    .line 8
    .line 9
    return-object v0
.end method
