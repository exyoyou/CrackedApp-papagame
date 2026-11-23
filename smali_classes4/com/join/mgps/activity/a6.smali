.class public final synthetic Lcom/join/mgps/activity/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/HMCloudRemoteActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/HMCloudRemoteActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/a6;->a:Lcom/join/mgps/activity/HMCloudRemoteActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/a6;->a:Lcom/join/mgps/activity/HMCloudRemoteActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->p(Lcom/join/mgps/activity/HMCloudRemoteActivity;Ljava/lang/Integer;)V

    return-void
.end method
