.class public final synthetic Lcom/join/mgps/adapter/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/j0;

.field public final synthetic c:Lcom/join/mgps/dto/FriendBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/j0;Lcom/join/mgps/dto/FriendBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/i0;->b:Lcom/join/mgps/adapter/j0;

    iput-object p2, p0, Lcom/join/mgps/adapter/i0;->c:Lcom/join/mgps/dto/FriendBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/i0;->b:Lcom/join/mgps/adapter/j0;

    iget-object v1, p0, Lcom/join/mgps/adapter/i0;->c:Lcom/join/mgps/dto/FriendBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/j0;->a(Lcom/join/mgps/adapter/j0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method
