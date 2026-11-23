.class public final synthetic Lcom/join/mgps/adapter/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dto/CollectionBeanSub;

.field public final synthetic c:Lcom/join/mgps/adapter/j6;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/adapter/j6;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/i6;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    iput-object p2, p0, Lcom/join/mgps/adapter/i6;->c:Lcom/join/mgps/adapter/j6;

    iput p3, p0, Lcom/join/mgps/adapter/i6;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/i6;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    iget-object v1, p0, Lcom/join/mgps/adapter/i6;->c:Lcom/join/mgps/adapter/j6;

    iget v2, p0, Lcom/join/mgps/adapter/i6;->d:I

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/adapter/j6;->k(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/adapter/j6;ILandroid/view/View;)V

    return-void
.end method
