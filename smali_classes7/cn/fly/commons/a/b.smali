.class public Lcn/fly/commons/a/b;
.super Lcn/fly/commons/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    const-string v0, "002Edddg"

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-string v1, "005Gdddgch bh"

    .line 10
    .line 11
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const-wide/32 v6, 0x15180

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-wide/16 v8, 0x0

    .line 23
    .line 24
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcn/fly/commons/a/c;->a(Ljava/lang/String;Ljava/lang/Long;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    move-object v1, p0

    .line 33
    invoke-direct/range {v1 .. v9}, Lcn/fly/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcn/fly/tools/utils/DH;->requester(Landroid/content/Context;)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->getCarrierStrict(Z)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->getCarrierNameStrict(Z)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getMnbclfo()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getCLoc()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0x11

    .line 31
    .line 32
    if-lt v1, v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcn/fly/tools/utils/DH$RequestBuilder;->getACIfo()Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    new-instance v2, Lcn/fly/commons/a/b$1;

    .line 39
    .line 40
    invoke-direct {v2, p0, v1}, Lcn/fly/commons/a/b$1;-><init>(Lcn/fly/commons/a/b;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcn/fly/tools/utils/DH$RequestBuilder;->request(Lcn/fly/tools/utils/DH$DHResponder;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/commons/a/b;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
