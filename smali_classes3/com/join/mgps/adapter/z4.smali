.class public final synthetic Lcom/join/mgps/adapter/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/a5;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/a5;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/z4;->a:Lcom/join/mgps/adapter/a5;

    iput-object p2, p0, Lcom/join/mgps/adapter/z4;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z4;->a:Lcom/join/mgps/adapter/a5;

    iget-object v1, p0, Lcom/join/mgps/adapter/z4;->b:Ljava/util/List;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/join/mgps/adapter/a5;->r(Lcom/join/mgps/adapter/a5;Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
