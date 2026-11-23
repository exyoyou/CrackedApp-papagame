.class public final synthetic Lcom/join/mgps/hmcloud/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/join/mgps/hmcloud/HMCloudGameManager;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/hmcloud/a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    invoke-static {v0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->m(Lcom/join/mgps/hmcloud/HMCloudGameManager;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
