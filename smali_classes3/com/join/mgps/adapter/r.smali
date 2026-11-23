.class public final synthetic Lcom/join/mgps/adapter/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/join/mgps/adapter/t;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/join/mgps/adapter/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/r;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/join/mgps/adapter/r;->b:Lcom/join/mgps/adapter/t;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/join/mgps/adapter/r;->b:Lcom/join/mgps/adapter/t;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/join/mgps/adapter/t;->n(Ljava/util/ArrayList;Lcom/join/mgps/adapter/t;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
