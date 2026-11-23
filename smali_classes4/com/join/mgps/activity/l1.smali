.class public final synthetic Lcom/join/mgps/activity/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/FriendActivity$g;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/FriendActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/l1;->a:Lcom/join/mgps/activity/FriendActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l1;->a:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/FriendActivity;->o(Lcom/join/mgps/activity/FriendActivity;I)V

    return-void
.end method
