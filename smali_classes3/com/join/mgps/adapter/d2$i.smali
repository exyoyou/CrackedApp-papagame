.class Lcom/join/mgps/adapter/d2$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

.field final synthetic c:Lcom/join/mgps/adapter/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d2;Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gift"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$i;->c:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/d2$i;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$i;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$i;->c:Lcom/join/mgps/adapter/d2;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/adapter/d2;->j:Lcom/join/mgps/adapter/d2$c1;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iget-object v1, p0, Lcom/join/mgps/adapter/d2$i;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 15
    .line 16
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/d2$c1;->i(ZLcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$i;->c:Lcom/join/mgps/adapter/d2;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/mgps/adapter/d2;->j:Lcom/join/mgps/adapter/d2$c1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/d2$i;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 26
    .line 27
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/d2$c1;->i(ZLcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
