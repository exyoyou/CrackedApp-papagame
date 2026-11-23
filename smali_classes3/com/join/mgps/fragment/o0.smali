.class public final synthetic Lcom/join/mgps/fragment/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/q0;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;

.field public final synthetic g:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final synthetic h:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/q0;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/o0;->b:Lcom/join/mgps/fragment/q0;

    iput-object p2, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/join/mgps/fragment/o0;->d:Landroid/view/View;

    iput-object p4, p0, Lcom/join/mgps/fragment/o0;->e:Landroid/view/View;

    iput-object p5, p0, Lcom/join/mgps/fragment/o0;->f:Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;

    iput-object p6, p0, Lcom/join/mgps/fragment/o0;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p7, p0, Lcom/join/mgps/fragment/o0;->h:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->b:Lcom/join/mgps/fragment/q0;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/join/mgps/fragment/o0;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/join/mgps/fragment/o0;->e:Landroid/view/View;

    iget-object v4, p0, Lcom/join/mgps/fragment/o0;->f:Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;

    iget-object v5, p0, Lcom/join/mgps/fragment/o0;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v6, p0, Lcom/join/mgps/fragment/o0;->h:Landroid/widget/TextView;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/join/mgps/fragment/q0;->M(Lcom/join/mgps/fragment/q0;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
