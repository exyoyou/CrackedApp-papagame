.class public Lcom/windmill/sdk/point/PointEntityWMTrack;
.super Lcom/windmill/sdk/point/PointEntityWind;
.source "SourceFile"


# instance fields
.field private content_length:Ljava/lang/String;

.field private content_type:Ljava/lang/String;

.field private http_code:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private time_spend:Ljava/lang/String;

.field private tracking_type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/point/PointEntityWind;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static WindTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMTrack;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "category",
            "acType",
            "placement_id",
            "adType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/windmill/sdk/point/PointEntityWMTrack;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/point/PointEntityWMTrack;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public getContent_length()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->content_length:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->content_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHttp_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->http_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->response:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTime_spend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->time_spend:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTracking_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->tracking_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setContent_length(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content_length"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->content_length:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setContent_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->content_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHttp_code(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "http_code"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->http_code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->response:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTime_spend(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time_spend"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->time_spend:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTracking_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracking_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->tracking_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMTrack;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
