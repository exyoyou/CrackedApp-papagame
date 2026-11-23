.class public final synthetic Lcom/join/mgps/activity/l3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/HMCloudMainActivity;

.field public final synthetic c:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/l3;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/l3;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    iput p3, p0, Lcom/join/mgps/activity/l3;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l3;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/l3;->c:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    iget v2, p0, Lcom/join/mgps/activity/l3;->d:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/HMCloudMainActivity;->Y(Lcom/join/mgps/activity/HMCloudMainActivity;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    return-void
.end method
