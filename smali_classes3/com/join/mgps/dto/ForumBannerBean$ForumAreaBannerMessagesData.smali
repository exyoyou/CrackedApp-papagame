.class public Lcom/join/mgps/dto/ForumBannerBean$ForumAreaBannerMessagesData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBannerBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumAreaBannerMessagesData"
.end annotation


# instance fields
.field private ad:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;


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
.method public getAd()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumAreaBannerMessagesData;->ad:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAd(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBannerBean$ForumAreaBannerMessagesData;->ad:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

    .line 2
    .line 3
    return-void
.end method
