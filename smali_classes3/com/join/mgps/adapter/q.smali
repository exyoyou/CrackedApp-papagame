.class public final synthetic Lcom/join/mgps/adapter/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# instance fields
.field public final synthetic a:Lcom/join/mgps/adapter/t;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/t;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/q;->a:Lcom/join/mgps/adapter/t;

    iput-object p2, p0, Lcom/join/mgps/adapter/q;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q;->a:Lcom/join/mgps/adapter/t;

    iget-object v1, p0, Lcom/join/mgps/adapter/q;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/join/mgps/adapter/t;->m(Lcom/join/mgps/adapter/t;Ljava/util/ArrayList;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
