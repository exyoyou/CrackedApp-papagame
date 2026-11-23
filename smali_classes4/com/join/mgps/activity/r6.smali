.class public final synthetic Lcom/join/mgps/activity/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/MGMainActivity;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/join/mgps/dto/FriendInviteBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity;ZLcom/join/mgps/dto/FriendInviteBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/r6;->b:Lcom/join/mgps/activity/MGMainActivity;

    iput-boolean p2, p0, Lcom/join/mgps/activity/r6;->c:Z

    iput-object p3, p0, Lcom/join/mgps/activity/r6;->d:Lcom/join/mgps/dto/FriendInviteBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/r6;->b:Lcom/join/mgps/activity/MGMainActivity;

    iget-boolean v1, p0, Lcom/join/mgps/activity/r6;->c:Z

    iget-object v2, p0, Lcom/join/mgps/activity/r6;->d:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity;->x(Lcom/join/mgps/activity/MGMainActivity;ZLcom/join/mgps/dto/FriendInviteBean;)V

    return-void
.end method
