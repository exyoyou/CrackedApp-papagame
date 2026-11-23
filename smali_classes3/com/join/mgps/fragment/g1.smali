.class public final synthetic Lcom/join/mgps/fragment/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/e1$f;

.field public final synthetic c:Lcom/join/mgps/fragment/e1$g;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/e1$f;Lcom/join/mgps/fragment/e1$g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/g1;->b:Lcom/join/mgps/fragment/e1$f;

    iput-object p2, p0, Lcom/join/mgps/fragment/g1;->c:Lcom/join/mgps/fragment/e1$g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g1;->b:Lcom/join/mgps/fragment/e1$f;

    iget-object v1, p0, Lcom/join/mgps/fragment/g1;->c:Lcom/join/mgps/fragment/e1$g;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/fragment/e1$f;->a(Lcom/join/mgps/fragment/e1$f;Lcom/join/mgps/fragment/e1$g;Landroid/view/View;)V

    return-void
.end method
