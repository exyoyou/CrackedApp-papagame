.class Lcom/join/mgps/adapter/x1$v0;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic b:Lcom/join/mgps/adapter/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1;Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "ctx",
            "info",
            "val$searchDataBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$v0;->b:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/join/mgps/adapter/x1$v0;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$v0;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lm6/c;->onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
