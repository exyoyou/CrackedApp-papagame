.class public Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x17f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic tt:Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;


# direct methods
.method public constructor <init>(Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver$1;->tt:Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver$1;->c:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver$1;->tt:Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver$1;->c:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;->c(Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
