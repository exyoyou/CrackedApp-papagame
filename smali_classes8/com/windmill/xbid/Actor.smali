.class public Lcom/windmill/xbid/Actor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/xbid/Actor$XBiddingInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/windmill/xbid/Actor;


# instance fields
.field private xBiddingInfo:Lcom/windmill/xbid/Actor$XBiddingInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/windmill/xbid/Actor;
    .locals 2

    const-class v0, Lcom/windmill/xbid/Actor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/windmill/xbid/Actor;->sInstance:Lcom/windmill/xbid/Actor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/windmill/xbid/Actor;

    invoke-direct {v1}, Lcom/windmill/xbid/Actor;-><init>()V

    sput-object v1, Lcom/windmill/xbid/Actor;->sInstance:Lcom/windmill/xbid/Actor;

    :cond_0
    sget-object v1, Lcom/windmill/xbid/Actor;->sInstance:Lcom/windmill/xbid/Actor;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getXBiddingInfo()Lcom/windmill/xbid/Actor$XBiddingInfo;
    .locals 1

    iget-object v0, p0, Lcom/windmill/xbid/Actor;->xBiddingInfo:Lcom/windmill/xbid/Actor$XBiddingInfo;

    return-object v0
.end method

.method public registerBiddingInfo(Lcom/windmill/xbid/Actor$XBiddingInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/xbid/Actor;->xBiddingInfo:Lcom/windmill/xbid/Actor$XBiddingInfo;

    :cond_0
    return-void
.end method
