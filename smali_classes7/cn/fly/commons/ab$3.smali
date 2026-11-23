.class Lcn/fly/commons/ab$3;
.super Lcn/fly/commons/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/ab;->g()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/ab;


# direct methods
.method constructor <init>(Lcn/fly/commons/ab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/ab$3;->a:Lcn/fly/commons/ab;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/commons/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

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
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->getDM(Z)Lcn/fly/tools/utils/DH$RequestBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcn/fly/commons/ab$3$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcn/fly/commons/ab$3$1;-><init>(Lcn/fly/commons/ab$3;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcn/fly/tools/utils/DH$RequestBuilder;->request(Lcn/fly/tools/utils/DH$DHResponder;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lcn/fly/commons/c;->a(Lcn/fly/commons/c$b;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
