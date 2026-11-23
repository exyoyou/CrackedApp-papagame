.class public Lcom/join/mgps/dto/OemData$GiftGetCdkData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/OemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftGetCdkData"
.end annotation


# instance fields
.field private end_time:J

.field private gift_cdk:Ljava/lang/String;

.field private start_time:J


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
.method public getEnd_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->end_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGift_cdk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->gift_cdk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStart_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->start_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setEnd_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->end_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setGift_cdk(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gift_cdk"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->gift_cdk:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStart_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->start_time:J

    .line 2
    .line 3
    return-void
.end method
