.class public Lcom/join/mgps/Util/n;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/join/mgps/customview/BaiduAdBannerRelativeLayout;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "adPlaceID",
            "marginId"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/customview/BaiduAdBannerRelativeLayout;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/BaiduAdBannerRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
