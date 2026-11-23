.class Lcom/mob/mcl/MobMCL$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/mcl/TcpStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/MobMCL;->registerTcpStatusListener(Lcom/mob/mcl/TcpStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/TcpStatusListener;


# direct methods
.method constructor <init>(Lcom/mob/mcl/TcpStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/mcl/MobMCL$7;->a:Lcom/mob/mcl/TcpStatusListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStatus(Lcn/fly/mcl/TcpStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/MobMCL$7;->a:Lcom/mob/mcl/TcpStatusListener;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mob/mcl/MobMCL;->access$000(Lcn/fly/mcl/TcpStatus;)Lcom/mob/mcl/TcpStatus;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/mob/mcl/TcpStatusListener;->onStatus(Lcom/mob/mcl/TcpStatus;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
