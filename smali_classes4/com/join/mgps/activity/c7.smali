.class public final synthetic Lcom/join/mgps/activity/c7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/MGMainActivity$g;

.field public final synthetic c:I

.field public final synthetic d:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity$g;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/c7;->b:Lcom/join/mgps/activity/MGMainActivity$g;

    iput p2, p0, Lcom/join/mgps/activity/c7;->c:I

    iput-object p3, p0, Lcom/join/mgps/activity/c7;->d:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/c7;->b:Lcom/join/mgps/activity/MGMainActivity$g;

    iget v1, p0, Lcom/join/mgps/activity/c7;->c:I

    iget-object v2, p0, Lcom/join/mgps/activity/c7;->d:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity$g;->e(Lcom/join/mgps/activity/MGMainActivity$g;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    return-void
.end method
