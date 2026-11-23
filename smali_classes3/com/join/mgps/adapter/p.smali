.class public final synthetic Lcom/join/mgps/adapter/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/t;

.field public final synthetic c:Lcom/join/mgps/dto/CollectionSevenListBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/t;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/p;->b:Lcom/join/mgps/adapter/t;

    iput-object p2, p0, Lcom/join/mgps/adapter/p;->c:Lcom/join/mgps/dto/CollectionSevenListBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->b:Lcom/join/mgps/adapter/t;

    iget-object v1, p0, Lcom/join/mgps/adapter/p;->c:Lcom/join/mgps/dto/CollectionSevenListBean;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/t;->k(Lcom/join/mgps/adapter/t;Lcom/join/mgps/dto/CollectionSevenListBean;Landroid/view/View;)V

    return-void
.end method
