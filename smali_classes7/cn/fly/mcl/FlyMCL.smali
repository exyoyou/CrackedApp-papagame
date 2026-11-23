.class public Lcn/fly/mcl/FlyMCL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/proguard/EverythingKeeper;


# static fields
.field public static final SDK_TAG:Ljava/lang/String; = "FlyMCL"


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

.method public static addBusinessMessageListener(ILcn/fly/mcl/BusinessMessageListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcn/fly/tcp/e/c;->a(ILcn/fly/mcl/BusinessMessageListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static closeTcp()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/tcp/b;->a()Lcn/fly/tcp/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/fly/tcp/b;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static connectTcp(Lcn/fly/mcl/BusinessCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/mcl/BusinessCallBack<",
            "Lcn/fly/mcl/TcpStatus;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/fly/tcp/b;->a()Lcn/fly/tcp/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcn/fly/tcp/b;->a(Lcn/fly/mcl/BusinessCallBack;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static deleteMsg(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcn/fly/tcp/e/c;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static getClientTcpStatus(Lcn/fly/mcl/BusinessCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/fly/mcl/FlyMCL;->getTcpStatus(Lcn/fly/mcl/BusinessCallBack;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCreateSuidTime()J
    .locals 2

    .line 1
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/fly/tcp/e/c;->l()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static getSuid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/e/c;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSuid(Lcn/fly/mgs/OnIdChangeListener;)V
    .locals 1

    .line 2
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/fly/tcp/e/c;->a(Lcn/fly/mgs/OnIdChangeListener;)V

    return-void
.end method

.method public static getTcpStatus(Lcn/fly/mcl/BusinessCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcn/fly/tcp/e/c;->a(Lcn/fly/mcl/BusinessCallBack;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static registerTcpStatusListener(Lcn/fly/mcl/TcpStatusListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcn/fly/tcp/e/c;->a(Lcn/fly/mcl/TcpStatusListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static unregisterTcpStatusListener(Lcn/fly/mcl/TcpStatusListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/tcp/e/c;->f()Lcn/fly/tcp/e/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcn/fly/tcp/e/c;->b(Lcn/fly/mcl/TcpStatusListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
