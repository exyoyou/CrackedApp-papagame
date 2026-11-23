.class public final synthetic Lcom/join/mgps/activity/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/CloudGameZoneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/CloudGameZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/v;->b:Lcom/join/mgps/activity/CloudGameZoneActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/v;->b:Lcom/join/mgps/activity/CloudGameZoneActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CloudGameZoneActivity;->j(Lcom/join/mgps/activity/CloudGameZoneActivity;)V

    return-void
.end method
