.class Lcom/mob/mcl/MobMCL$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/mcl/BusinessCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/MobMCL;->connectTcp(Lcom/mob/mcl/BusinessCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/fly/mcl/BusinessCallBack<",
        "Lcn/fly/mcl/TcpStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/BusinessCallBack;


# direct methods
.method constructor <init>(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/MobMCL$4;->a:Lcom/mob/mcl/BusinessCallBack;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/mcl/TcpStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/MobMCL$4;->a:Lcom/mob/mcl/BusinessCallBack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/mob/mcl/MobMCL;->access$000(Lcn/fly/mcl/TcpStatus;)Lcom/mob/mcl/TcpStatus;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lcom/mob/mcl/BusinessCallBack;->callback(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/fly/mcl/TcpStatus;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/mob/mcl/MobMCL$4;->a(Lcn/fly/mcl/TcpStatus;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
