.class Lcom/join/mgps/fragment/d0$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/d0$e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/DiscoverListWeiboItemBean;

.field final synthetic c:Lcom/join/mgps/fragment/d0$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/d0$e;Lcom/join/mgps/dto/DiscoverListWeiboItemBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$itemBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/d0$e$a;->c:Lcom/join/mgps/fragment/d0$e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/d0$e$a;->b:Lcom/join/mgps/dto/DiscoverListWeiboItemBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$e$a;->c:Lcom/join/mgps/fragment/d0$e;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/fragment/d0$e;->e:Lcom/join/mgps/fragment/d0;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->l:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/d0$e$a;->b:Lcom/join/mgps/dto/DiscoverListWeiboItemBean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getLink_url()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
