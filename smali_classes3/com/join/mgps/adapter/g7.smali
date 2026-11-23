.class public final synthetic Lcom/join/mgps/adapter/g7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/adapter/h7;

.field public final synthetic c:Lcom/join/mgps/dto/CollectionBeanSub;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/adapter/h7;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/g7;->b:Lcom/join/mgps/adapter/h7;

    iput-object p2, p0, Lcom/join/mgps/adapter/g7;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/g7;->b:Lcom/join/mgps/adapter/h7;

    iget-object v1, p0, Lcom/join/mgps/adapter/g7;->c:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/h7;->a(Lcom/join/mgps/adapter/h7;Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V

    return-void
.end method
