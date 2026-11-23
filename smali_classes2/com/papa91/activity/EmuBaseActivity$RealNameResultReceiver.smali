.class public Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RealNameResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    const/16 p2, 0xa

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->checkRealName(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
