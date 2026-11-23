.class public final synthetic Lcom/join/kotlin/ui/legendgame/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

.field public final synthetic c:Lcom/join/mgps/dto/CommonGameInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/h;->b:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    iput-object p2, p0, Lcom/join/kotlin/ui/legendgame/h;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/h;->b:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    iget-object v1, p0, Lcom/join/kotlin/ui/legendgame/h;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->P(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method
