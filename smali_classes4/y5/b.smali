.class public final synthetic Ly5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final synthetic c:Lcom/join/mgps/Util/IntentDateBean;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p2, p0, Ly5/b;->c:Lcom/join/mgps/Util/IntentDateBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly5/b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Ly5/b;->c:Lcom/join/mgps/Util/IntentDateBean;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/bindingadapter/ViewBindingVideoFramlayoutKt;->b(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/Util/IntentDateBean;Landroid/view/View;)V

    return-void
.end method
