.class public final synthetic Lcom/join/mgps/fragment/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/q0$f;

.field public final synthetic c:Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/q0$f;Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/s0;->b:Lcom/join/mgps/fragment/q0$f;

    iput-object p2, p0, Lcom/join/mgps/fragment/s0;->c:Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s0;->b:Lcom/join/mgps/fragment/q0$f;

    iget-object v1, p0, Lcom/join/mgps/fragment/s0;->c:Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/fragment/q0$f;->r(Lcom/join/mgps/fragment/q0$f;Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;Landroid/view/View;)V

    return-void
.end method
