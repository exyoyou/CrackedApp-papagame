.class public final Lcom/windmill/sdk/point/PointEntityWMError;
.super Lcom/windmill/sdk/point/PointEntityWind;
.source "SourceFile"


# instance fields
.field private error_code:Ljava/lang/String;

.field private error_message:Ljava/lang/String;

.field private external_error_code:Ljava/lang/String;


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

.method public static WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "category",
            "event_type",
            "errorCode",
            "errorMessage"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/windmill/sdk/point/PointEntityWMError;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/windmill/sdk/point/PointEntityWMError;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "667"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setCategory(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/point/PointEntityWind;->setEvent_type(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/windmill/sdk/point/PointEntityWMError;->setError_code(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, p3}, Lcom/windmill/sdk/point/PointEntityWMError;->setError_message(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getError_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMError;->error_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getError_message()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMError;->error_message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExternal_error_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/point/PointEntityWMError;->external_error_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setError_code(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_code"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMError;->error_code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setError_message(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMError;->error_message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExternal_error_code(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "external_error_code"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/point/PointEntityWMError;->external_error_code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
