.class Lcn/fly/commons/w$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/w$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/w$c;


# direct methods
.method constructor <init>(Lcn/fly/commons/w$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/w$c$1;->a:Lcn/fly/commons/w$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onResponse(Lcn/fly/tools/utils/DH$DHResponse;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/fly/tools/utils/DH$DHResponse;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "004f?el1fg"

    .line 6
    .line 7
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcn/fly/commons/w;->a()Lcn/fly/commons/w;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lcn/fly/commons/w$c$1$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcn/fly/commons/w$c$1$1;-><init>(Lcn/fly/commons/w$c$1;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcn/fly/commons/w;->a(Lcn/fly/commons/w;Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
