.class public final synthetic Lcom/join/mgps/activity/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/HMCloudMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/HMCloudMenuActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/l5;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l5;->b:Lcom/join/mgps/activity/HMCloudMenuActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/HMCloudMenuActivity;->C(Lcom/join/mgps/activity/HMCloudMenuActivity;)V

    return-void
.end method
