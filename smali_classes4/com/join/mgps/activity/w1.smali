.class public final synthetic Lcom/join/mgps/activity/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/GameDetailActivity$m;

.field public final synthetic c:Lcom/join/mgps/dto/GameListItemBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/w1;->b:Lcom/join/mgps/activity/GameDetailActivity$m;

    iput-object p2, p0, Lcom/join/mgps/activity/w1;->c:Lcom/join/mgps/dto/GameListItemBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/w1;->b:Lcom/join/mgps/activity/GameDetailActivity$m;

    iget-object v1, p0, Lcom/join/mgps/activity/w1;->c:Lcom/join/mgps/dto/GameListItemBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/GameDetailActivity$m;->e(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V

    return-void
.end method
