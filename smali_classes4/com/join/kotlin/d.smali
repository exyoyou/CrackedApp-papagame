.class public final synthetic Lcom/join/kotlin/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dto/CollectionBeanSub;

.field public final synthetic c:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/d;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    iput-object p2, p0, Lcom/join/kotlin/d;->c:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/d;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    iget-object v1, p0, Lcom/join/kotlin/d;->c:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->k(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;Landroid/view/View;)V

    return-void
.end method
