.class public final synthetic Lcom/join/mgps/fragment/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/b6$a;

.field public final synthetic c:Lcom/join/mgps/dto/CommonGameInfoBean;

.field public final synthetic d:Lcom/join/mgps/base/b;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/b6$a;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/base/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/a6;->b:Lcom/join/mgps/fragment/b6$a;

    iput-object p2, p0, Lcom/join/mgps/fragment/a6;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    iput-object p3, p0, Lcom/join/mgps/fragment/a6;->d:Lcom/join/mgps/base/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a6;->b:Lcom/join/mgps/fragment/b6$a;

    iget-object v1, p0, Lcom/join/mgps/fragment/a6;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    iget-object v2, p0, Lcom/join/mgps/fragment/a6;->d:Lcom/join/mgps/base/b;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/fragment/b6$a;->r(Lcom/join/mgps/fragment/b6$a;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/base/b;Landroid/view/View;)V

    return-void
.end method
