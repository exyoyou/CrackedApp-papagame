.class public Lcom/windmill/sdk/natives/WMNativeAdRequest;
.super Lcom/windmill/sdk/WindMillAdRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "placementId",
            "userId",
            "adCount",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/windmill/sdk/WindMillAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x5

    .line 5
    iput p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->adType:I

    .line 6
    .line 7
    return-void
.end method
