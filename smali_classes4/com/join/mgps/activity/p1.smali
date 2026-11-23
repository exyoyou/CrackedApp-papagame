.class public final synthetic Lcom/join/mgps/activity/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/FriendActivity$f;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/FriendActivity$f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/p1;->b:Lcom/join/mgps/activity/FriendActivity$f;

    iput p2, p0, Lcom/join/mgps/activity/p1;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/p1;->b:Lcom/join/mgps/activity/FriendActivity$f;

    iget v1, p0, Lcom/join/mgps/activity/p1;->c:I

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/FriendActivity$f;->a(Lcom/join/mgps/activity/FriendActivity$f;ILandroid/view/View;)V

    return-void
.end method
